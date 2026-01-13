import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';

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
            const Divider(height: 2, thickness: 1, color: Color(0xFFF2F2F2)),
            const VGap(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  //TODO: poketmon type filter button 상태 저장 해야함
                  Expanded(
                    child: DefaultArrowIconButton(
                      onPressed: () {},
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
