import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/income_section.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/my_card_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/page_dots_row.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/transiction_history_header.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/transiction_list_view.dart';

class HomeMobileLayout extends StatefulWidget {
  const HomeMobileLayout({super.key});

  @override
  State<HomeMobileLayout> createState() => _HomeMobileLayoutState();
}

class _HomeMobileLayoutState extends State<HomeMobileLayout> {
  final _controller = PageController();
  int _currentPage = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: AllExpensesWidget()),
              const SliverToBoxAdapter(child: QuickInvoiceWidget()),
              SliverToBoxAdapter(
                child: CustomParentWidget(
                  key: const ValueKey('main_section_card'),
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Card",
                        style: AppStyles.styleSemiBold20(context),
                      ),
                      const SizedBox(height: 16),
                      ExpandablePageView.builder(
                        key: const PageStorageKey('expandable_page_view'),
                        controller: _controller,
                        onPageChanged: (int index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          if (++index % 2 != 0) {
                            return MyCardWidget(
                              name: "Hamza Ghafar",
                              color: const Color(0xff4EB7F2),
                            );
                          } else {
                            return MyCardWidget(
                              name: "John Doe",
                              color: const Color(0xff064061),
                            );
                          }
                        },
                        itemCount: 5, // Replace with actual number of cards
                      ),
                      const SizedBox(height: 8),
                      DotsRow(currentPage: _currentPage),
                      const SizedBox(height: 8),
                      Divider(color: Colors.grey[300]),
                      const TransictionHistoryHeader(),
                      const TransictionListView(),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
