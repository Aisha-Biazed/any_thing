import 'package:core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMobileNumberField extends StatefulWidget {
  final String? description;
  final String? hintText;
  final String? title;
  const AppMobileNumberField({super.key, this.description, this.hintText, this.title});

  @override
  State<AppMobileNumberField> createState() => _AppMobileNumberFieldState();
}

//
class _AppMobileNumberFieldState extends State<AppMobileNumberField> {
  final TextEditingController textEditingController = TextEditingController();
  final ValueNotifier<String> flagImagePath = ValueNotifier<String>('packages/core/assets/flags/ukraine.svg');

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: widget.title,
      keyboardType: TextInputType.phone,
      description: widget.description,
      hintText: widget.hintText ?? '+1 234 567 89 00',
      prefixIcon: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              12.horizontalSpace,
              ValueListenableBuilder(
                valueListenable: flagImagePath,
                builder: (context, value, child) {
                  return AppImage.asset(value, size: 20.r);
                },
              ),
              5.horizontalSpace,
            ],
          ),
          items: countries
              .map((country) => DropdownMenuItem<String>(
                    value: country.name,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: context.colorScheme.outline, width: 1)),
                      ),
                      padding: REdgeInsets.only(bottom: 15),
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppImage.asset('packages/core/assets/flags/${country.name}.svg', size: 16),
                          12.horizontalSpace,
                          AppText.bodyMedium('${country.name} (${country.dialCode})'),
                        ],
                      ),
                    ),
                  ))
              .toList(),
          dropdownSearchData: DropdownSearchData(
            searchController: textEditingController,
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              height: 56,
              padding: REdgeInsets.only(top: 10),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Search in countries...',
                  hintStyle: context.textTheme.body,
                  border: InputBorder.none,
                  focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide(color: context.colorScheme.primary)),
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return item.value.toString().contains(searchValue);
            },
          ),
          onChanged: (value) =>
              value != null ? flagImagePath.value = 'packages/core/assets/flags/$value.svg' : null,
          buttonStyleData: ButtonStyleData(width: 60.w),
          iconStyleData: IconStyleData(
            icon: Padding(
              padding: REdgeInsetsDirectional.only(end: 10),
              child: AppImage.asset('packages/core/assets/icons/down2.svg'),
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            width: context.fullWidth - 40.w,
            offset: const Offset(0, 0),
            elevation: 1,
            maxHeight: 300.h,
            padding: REdgeInsets.only(top: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          ),
          menuItemStyleData: const MenuItemStyleData(),
        ),
      ),
    );
  }
}

final List<String> countryNames = [
  'abkhazia',
  'afghanistan',
  'aland islands',
  'albania',
  'Algeria',
  'american samoa',
  'andorra',
  'angola',
  'anguilla',
  'antigua and barbuda',
  'argentina',
  'armenia',
  'aruba',
  'australia',
  'austria',
  'azerbaijan',
  'azores islands',
  'bahamas',
  'bahrain',
  'balearic islands',
  'bangladesh',
  'barbados',
  'basque country',
  'belarus',
  'belgium',
  'belize',
  'benin',
  'bermuda',
  'bhutan',
  'bolivia',
  'bonaire',
  'bosnia and herzegovina',
  'botswana',
  'brazil',
  'british columbia',
  'british indian ocean territory',
  'british virgin islands',
  'brunei',
  'bulgaria',
  'burkina faso',
  'burundi',
  'cambodia',
  'cameroon',
  'canada',
  'canary islands',
  'cape verde',
  'cayman islands',
  'central african republic',
  'ceuta',
  'chad',
  'chile',
  'china',
  'cocos island',
  'colombia',
  'comoros',
  'cook islands',
  'corsica',
  'costa rica',
  'croatia',
  'cuba',
  'curacao',
  'cyprus',
  'czech republic',
  'democratic republic of congo',
  'denmark',
  'djibouti',
  'dominica',
  'dominican republic',
  'East Timor',
  'ecuador',
  'egypt',
  'el salvador',
  'england',
  'equatorial guinea',
  'eritrea',
  'estonia',
  'ethiopia',
  'european union',
  'falkland islands',
  'faroe islands',
  'fiji',
  'filenames.txt',
  'finland',
  'france',
  'french polynesia',
  'gabon',
  'galapagos islands',
  'gambia',
  'georgia',
  'germany',
  'ghana',
  'gibraltar',
  'greece',
  'greenland',
  'grenada',
  'guam',
  'guatemala',
  'guernsey',
  'guinea bissau',
  'guinea',
  'guyana',
  'haiti',
  'hawaii',
  'honduras',
  'hong kong',
  'hungary',
  'iceland',
  'india',
  'indonesia',
  'iran',
  'iraq',
  'ireland',
  'isle of man',
  'israel',
  'italy',
  'ivory coast',
  'jamaica',
  'japan',
  'jersey',
  'jordan',
  'kazakhstan',
  'kenya',
  'kiribati',
  'kosovo',
  'kuwait',
  'kyrgyzstan',
  'laos',
  'latvia',
  'lebanon',
  'lesotho',
  'liberia',
  'libya',
  'liechtenstein',
  'lithuania',
  'luxembourg',
  'macao',
  'madagascar',
  'madeira',
  'malawi',
  'malaysia',
  'maldives',
  'mali',
  'malta',
  'marshall island',
  'martinique',
  'mauritania',
  'mauritius',
  'melilla',
  'mexico',
  'micronesia',
  'moldova',
  'monaco',
  'mongolia',
  'montenegro',
  'montserrat',
  'morocco',
  'mozambique',
  'myanmar',
  'namibia',
  'nato',
  'nauru',
  'nepal',
  'netherlands',
  'new zealand',
  'nicaragua',
  'niger',
  'nigeria',
  'niue',
  'norfolk island',
  'north korea',
  'northern cyprus',
  'northern marianas islands',
  'norway',
  'oman',
  'orkney islands',
  'ossetia',
  'pakistan',
  'palau',
  'palestine',
  'panama',
  'papua new guinea',
  'paraguay',
  'peru',
  'philippines',
  'pitcairn islands',
  'poland',
  'portugal',
  'puerto rico',
  'qatar',
  'Rapa Nui',
  'republic of macedonia',
  'republic of the congo',
  'romania',
  'russia',
  'rwanda',
  'saba island',
  'sahrawi arab democratic republic',
  'samoa',
  'san marino',
  'sao tome and prince',
  'sardinia',
  'saudi arabia',
  'scotland',
  'senegal',
  'serbia',
  'seychelles',
  'sierra leone',
  'singapore',
  'sint eustatius',
  'sint maarten',
  'slovakia',
  'slovenia',
  'solomon islands',
  'somalia',
  'somaliland',
  'south africa',
  'south korea',
  'south sudan',
  'spain',
  'sri lanka',
  'st barts',
  'st lucia',
  'st vincent and the grenadines',
  'sudan',
  'suriname',
  'swaziland',
  'sweden',
  'switzerland',
  'syria',
  'taiwan',
  'tajikistan',
  'tanzania',
  'thailand',
  'tibet',
  'togo',
  'tokelau',
  'tonga',
  'transnistria',
  'trinidad and tobago',
  'tunisia',
  'turkey',
  'turkmenistan',
  'turks and caicos',
  'tuvalu',
  'uganda',
  'ukraine',
  'united arab emirates',
  'united kingdom',
  'united nations',
  'united states',
  'uruguay',
  'uzbekistán',
  'vanuatu',
  'vatican city',
  'venezuela',
  'vietnam',
  'virgin islands',
  'wales',
  'yemen',
  'zambia',
  'zimbabwe'
];

class Country {
  final String name;
  final String dialCode;

  Country(this.name, this.dialCode);
}

final List<Country> countries = countryNames.map((name) => Country(name, '+123')).toList();
