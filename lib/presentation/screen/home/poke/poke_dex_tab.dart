import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/domain/enum/poke_type.dart';
import 'package:go_router/go_router.dart';

class PokeDexTab extends StatelessWidget {
  const PokeDexTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SearchWidget(),
            const Divider(height: 2, thickness: 1, color: black50),
            const VGap(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  //TODO: poketmon type filter button 상태 저장 해야함
                  Expanded(
                    child: DefaultArrowIconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          builder: (context) => TypeBottomModalSheet(
                            onTypeSelected: (PokeType pokeType) {
                              context.pop();
                            },
                          ),
                        );
                      },
                      text: "Todos os tipos",
                    ),
                  ),
                  const WGap(width: 16),
                  //TODO: 정렬 button 상태 저장 해야함
                  Expanded(
                    child: DefaultArrowIconButton(
                      onPressed: () {},
                      text: 'Menor número',
                    ),
                  ),
                ],
              ),
            ),
            const VGap(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 100, // Example item count
                itemBuilder: (context, index) {
                  return ListTile(title: Text('Pokémon #$index'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget implements PreferredSizeWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFCCCCCC), width: 1.5),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            Assets.icons.iconSearch.svg(width: 20, height: 20),
            const WGap(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                decoration: InputDecoration(
                  hintText: 'Procurar Pokémon...',
                  isDense: true,
                  hintStyle: TextStyle(fontSize: 14, color: Color(0xFF999999)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(20);
}

class TypeBottomModalSheet extends StatelessWidget {
  final Function(PokeType) onTypeSelected;
  const TypeBottomModalSheet({super.key, required this.onTypeSelected});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.5,
        minChildSize: 0.1,
        expand: false,
        snap: true,
        builder: (_, scrollController) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const VGap(height: 12),
              SizedBox(
                width: 38,
                child: Divider(height: 3, thickness: 3, color: greys["100"]),
              ),
              const VGap(height: 9),
              Text(
                "Selecione o tipo",
                style: context.labelLarge?.copyWith(color: black),
              ),
              const VGap(height: 32),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  separatorBuilder: (_, _) => const VGap(height: 12),
                  itemCount: PokeType.values.length,
                  itemBuilder: (_, index) {
                    PokeType type = PokeType.values[index];

                    return PokeTextButton(
                      callback: () => onTypeSelected(type),
                      title: type.label,
                      backgroundColor: type.color,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
