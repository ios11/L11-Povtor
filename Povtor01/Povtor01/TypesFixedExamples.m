//
//  TypesFixedExamples.m
//  Povtor01
//
//  Created by Nikolay Morev on 05/12/15.
//  Copyright © 2015 Nikolay Morev. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1. nonnull по-умолчанию
NS_ASSUME_NONNULL_BEGIN

@interface News : NSObject

// 2. В публичном интерфейсе не должно быть мутабельных свойств
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, unsafe_unretained) NSArray *items1;

// 3. copy для объектов-значений (value objects) и даже для коллекций
@property (nonatomic, copy) NSArray *groups;

// 4. Не забываем везде писать nonatomic
// 5. NSInteger - это простой тип, хранение его по ссылке возможно, но скорее всего это не то, что вы хотите
// 6. Писать assign для простых типов не обязательно
// 7. nullability применимо только к объектам
@property (nonatomic) NSInteger newOffset;

// 8. Хотите сделать nullable? Используйте NSNumber
@property (nonatomic, copy, nullable) NSNumber *newOffsetNullable;

@property (nonatomic, copy, nullable) NSString *nextFrom;
@property (nonatomic, copy) NSArray *users;

@end

@interface Groups : NSObject

// 9. Старайтесь для единообразия использовать в Objective-C коде простые типы из Objective-C
@property (nonatomic) NSInteger groupId;

// 10. Если для вашего типа важен определенный размер, используйте типы с фиксированным размером
@property (nonatomic) uint64_t groupIdLong;

@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupScreenName;
@property (nonatomic, copy) NSString *groupType;

// 11. Для булевых свойств используйте тип BOOL
// 12. Если это не булевое свойство, то не пишите слово is в имени
@property (nonatomic) BOOL groupIsClosed;

// 13. BOOL-ы тоже можно оборачивать в NSNumber: groupIsMember = @(YES); if([groupIsMember boolValue]) {}
@property (nonatomic, copy) NSNumber *groupIsMember;

@property (nonatomic, copy) NSURL *photo50;

@end

NS_ASSUME_NONNULL_END
