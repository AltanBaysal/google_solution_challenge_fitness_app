import '../../../../../core/_core_export.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key, required this.label, this.controller, this.isPW});
  final String label;
  final TextEditingController? controller;
  final bool? isPW;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.body16Medium.copyWith(
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(
          height: ScreenSize.getHeightPercent(7 / 800),
        ),
        TextField(
          obscureText: isPW ?? false,
          style:
              AppTextStyles.body15Medium.copyWith(color: AppColors.darkBrown),
          decoration: InputDecoration(
            // enabled: false,

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.gray.withOpacity(1 / 4),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: AppColors.gray.withOpacity(1 / 4))),
            fillColor: AppColors.lightWhite,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
                vertical: ScreenSize.getHeightPercent(0.025),
                horizontal: ScreenSize.getWidthPercent(0.025)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.gray.withOpacity(1 / 4),
              ),
            ),
          ),
        ),
        SizedBox(
          height: ScreenSize.getHeightPercent(15 / 800),
        )
      ],
    );
  }
}
