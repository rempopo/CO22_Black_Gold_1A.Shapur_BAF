//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["SPECOPS"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"2016 год, Сирия. Из-за победы в гражданской войне исламистов страна стала источником напряжённости в регионе. Открыто поддерживая многие террористические организации, новое сирийское правительство призвало к возвращению голанских высот и войне с Израилем. Коалиция НАТО приготовилась к военному вмешательству и начала операцию против сирийской армии.<br /><br />Немецкий контингент перешёл границу Ирака и Сирии и двинулся на Пальмиру. Первостепенной задачей стал захват нефтяных месторождений к северу от Евфрата. <br /><br />Специальному подразделению бундесвера EGB была поручена задача по захвату вражеской базы снабжения в н.п. Shapur E-Delanper. Особого внимания, по данным разведки, заслуживает один из грузов, прибывший недавно на базу. Вам предстоит захватить базу и найти этот груз. Несмотря на всю его ценность, сирийцы решили не привлекать внимание армейской разведки и не стали значительно усиливать охрану объекта. Ваше подразделение было высажено ночью в нескольких километрах от базы и после небольшого марш-броска готово к операции. "
END

TOPIC("А. Враждебные силы:")
"Сводные части Сирийской Арабской Армии - 50 человек.<br />1 ЗУ-23<br /><br />Вокруг базы на высотах размещены вражеские наблюдательные пункты, на дорогах - блокпосты.<br /><br />Возможно подкрепление на техничках с ДШК.<br />"
END

TOPIC("Б. Дружественные силы:")
"EGB-Fallschirmjägerzug<br /><br />1'6 - 4 чел.<br />1'1 - 9 чел.<br />1'2 - 9 чел."
END

TOPIC("II. Задание:")
"1. Захватить базу (точка ENEMY BASE)<br />2. Найти груз (точка Cargo)<br /><br />"
END

TOPIC("III. Выполнение:")
"Груз представляет из себя грузовой контейнер красного цвета. Последний раз его видели на складе в комплексе Shapur-1, где находится база обеспечения противника. После обнаружения контейнера проверьте его содержимое и ожидайте дальнейших приказов. <br /><br />Благодаря помощи из Пентагона, вам будет доступен CCP, скрытый на территории заброшенной военной базы."
END

TOPIC("IV. Поддержка:")
"CCP <br />Ящики с аммуницией около CCP<br />Доукомплекты и редеплой стандартные"
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz<br />SUP NET 51 Mhz<br /><br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />"
END

TOPIC("VI. Замечания:")
"Миссия завершится автоматически в течение минуты после обнаружения груза"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Противник не ожидает атаки и пассивно обороняет базу и блокпосты. Возможно прибытие подкреплений с севера по дороге."
END
};

ADD_TOPICS