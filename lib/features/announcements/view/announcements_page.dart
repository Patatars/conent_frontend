
import 'package:auto_route/annotations.dart';
import 'package:connent_frontend/bases/announcments_base.dart';
import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';


@RoutePage()
class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Widget> ann = getAnn(context, theme);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: theme.dialogBackgroundColor,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            // expandedHeight: 300,
            backgroundColor: theme.primaryColor,
            // HSLColor.fromColor(theme.dialogBackgroundColor).withLightness(0.8).toColor(),
            collapsedHeight: 65,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProjectTextField(
                onEditingComplete: () => print(123),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .add(const EdgeInsets.only(bottom: 10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                    }, child: Text('Сегодня')),
                    const ElevatedButton(onPressed: null, child: Text('Завтра')),
                    const ElevatedButton(
                        onPressed: null, child: Text('Выбрать дату')),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => ann[index],
            itemCount: ann.length,
          ),
        ],
      ),
    );
  }
}
