package §9!!§
{
   import §!Y§.§[o§;
   import §1n§.§"#§;
   import §1n§.§5#§;
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §;8§.§]'§;
   import §[x§.§,1§;
   import flash.net.SharedObject;
   
   public class §4!<§
   {
      
      private static var §]!C§:Class;
      
      private static var §'$§:Class;
      
      private static var §!!5§:Class;
      
      private static var §'P§:Array;
      
      private static var §9!B§:Popup = null;
      
      private static var §%;§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%m§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]!C§ = §0!+§;
            while(true)
            {
               §'$§ = §,+§;
               while(true)
               {
                  §!!5§ = §?!@§;
                  §§goto(addr85);
               }
            }
         }
         addr85:
         loop2:
         do
         {
            §'P§ = [];
            if(!(_loc2_ && §4!<§))
            {
               §9!B§ = null;
               while(_loc1_)
               {
                  isOpen = false;
                  if(_loc1_)
                  {
                     continue loop2;
                  }
               }
               continue loop0;
            }
            continue loop1;
         }
         while(_loc2_ && §4!<§);
         
      }
      
      public function §4!<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      private static function §#$§(param1:String, param2:§#H§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; _loc6_; loop4:
               while(_loc6_ || param1)
               {
                  §§pop().§§slot[2] = param2;
                  while(_loc6_)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ && param2)
                     {
                        continue loop4;
                     }
                     §§pop().§§slot[3] = "";
                     if(!_loc6_)
                     {
                        §§goto(addr166);
                     }
                     §§goto(addr152);
                     continue loop4;
                  }
                  continue loop1;
               })
               {
                  §§pop().§§slot[1] = param1;
                  do
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  while(_loc5_);
                  
                  §§push(§§newactivation());
                  if(_loc6_ || param2)
                  {
                     addr200:
                     var _loc4_:* = §§pop().§§slot[1];
                     §§push("BIRD_BLACK");
                     if(!(_loc5_ && param2))
                     {
                        if(§§pop() === _loc4_)
                        {
                           §§push(0);
                           if(!(_loc5_ && param2))
                           {
                              addr307:
                              switch(§§pop())
                              {
                                 case 7:
                                    §§push(§§newactivation());
                                    if(_loc5_ && _loc3_)
                                    {
                                       §§goto(addr200);
                                    }
                                    §§push("TUTORIAL_MIGHTYEAGLE");
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[3] = §§pop();
                                          break;
                                       }
                                       addr100:
                                       §§pop().§§slot[3] = §§pop();
                                    }
                                    else
                                    {
                                       addr53:
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[3] = §§pop();
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             break;
                                             addr138:
                                          }
                                       }
                                       else
                                       {
                                          addr70:
                                          §§pop().§§slot[3] = §§pop();
                                       }
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 case 1:
                                    addr128:
                                    var tutorialName:String = "TUTORIAL_BLUE";
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 0:
                                    tutorialName = "TUTORIAL_BLACK";
                                    §§goto(addr138);
                                 case 2:
                                    addr106:
                                    §§push(§§newactivation());
                                    §§push("TUTORIAL_RED");
                                    if(!(_loc5_ && param2))
                                    {
                                       §§pop().§§slot[3] = §§pop();
                                       if(_loc6_ || §4!<§)
                                       {
                                          break;
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr128);
                                    break;
                                 case 3:
                                    §§push(§§newactivation());
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr100);
                                       §§push("TUTORIAL_WHITE");
                                    }
                                    else
                                    {
                                       §§goto(addr106);
                                    }
                                    break;
                                 case 4:
                                    addr78:
                                    tutorialName = "TUTORIAL_YELLOW";
                                    if(!(_loc5_ && param2))
                                    {
                                       break;
                                    }
                                    if(tutorialPopup)
                                    {
                                       §§goto(addr352);
                                    }
                                    addr352:
                                    §'P§.push(tutorialPopup);
                                    return;
                                    addr335:
                                 case 5:
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr70);
                                          §§push("TUTORIAL_BOOMERANG");
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr78);
                                    }
                                    break;
                                 case 6:
                                    §§goto(addr53);
                                 default:
                                    §§newactivation();
                                    "TUTORIAL_BIG_BROTHER";
                                    return;
                              }
                              try
                              {
                                 var tutorialPopup:§>`§ = new §>`§(§]'§.§5P§(§]!C§),currentUIView,§"#§.§@U§(tutorialName,§5#§.§[8§));
                                 §§goto(addr335);
                              }
                              catch(e:Error)
                              {
                              }
                              §§goto(addr78);
                           }
                           addr243:
                           §§goto(addr307);
                        }
                        §§push("BIRD_BLUE");
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              addr283:
                              if(_loc6_)
                              {
                                 §§goto(addr307);
                                 §§push(1);
                              }
                              §§goto(addr307);
                              §§push(5);
                           }
                           §§push("BIRD_RED");
                           §§push(_loc4_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 addr294:
                                 if(!_loc5_)
                                 {
                                    §§goto(addr243);
                                    §§push(2);
                                 }
                                 §§push(6);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr307);
                              }
                              §§push("BIRD_WHITE");
                              §§push(_loc4_);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(3);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§goto(addr307);
                                       }
                                    }
                                    §§goto(addr283);
                                 }
                                 if("BIRD_YELLOW" === _loc4_)
                                 {
                                    §§goto(addr307);
                                    §§push(4);
                                 }
                                 §§push("BIRD_GREEN");
                                 if(_loc6_)
                                 {
                                    addr300:
                                    addr273:
                                    if(§§pop() === _loc4_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr283);
                                       }
                                       addr301:
                                       §§goto(addr307);
                                       §§push(7);
                                    }
                                    §§push("BIRD_REDBIG");
                                    if(!(_loc5_ && param2))
                                    {
                                       addr292:
                                       addr293:
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr294);
                                       }
                                       §§push("BIRD_SARDINE");
                                    }
                                    if(§§pop() === _loc4_)
                                    {
                                       §§goto(addr301);
                                    }
                                    §§goto(addr307);
                                    §§push(8);
                                 }
                                 §§goto(addr292);
                              }
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr78);
               }
               continue loop0;
            }
         }
      }
      
      private static function §!;§(param1:String, param2:§#H§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr89:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     loop4:
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = param2;
                              addr81:
                              while(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        try
                        {
                           addr96:
                           §§push(§§newactivation());
                           if(_loc6_ || §4!<§)
                           {
                              §§pop().§§slot[4] = new §+`§(§]'§.§5P§(§'$§),currentUIView,§"#§.§@U§(tutorialName,§5#§.§[8§),tutorialName);
                              if(!_loc5_)
                              {
                                 addr147:
                                 if(tutorialPopup)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §'P§.push(tutorialPopup);
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        catch(e:Error)
                        {
                           §§goto(addr147);
                        }
                        §§goto(addr147);
                     }
                  }
               }
            }
         }
      }
      
      public static function §63§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && §4!<§))
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || §4!<§)
               {
                  addr42:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!§%;§)
                     {
                        if(_loc5_)
                        {
                           §%;§ = SharedObject.getLocal(storageName);
                           addr56:
                           var _loc3_:int = 0;
                           if(!(_loc6_ && _loc2_))
                           {
                              var _loc4_:* = §9;§();
                              if(!(_loc6_ && _loc2_))
                              {
                                 for each(birdName in _loc4_)
                                 {
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §%;§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                 §%;§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                 do
                                 {
                                    §%;§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                    do
                                    {
                                       §%;§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                    }
                                    while(_loc6_);
                                    
                                 }
                                 while(false);
                                 
                                 addr166:
                                 return;
                                 addr107:
                                 addr110:
                                 addr111:
                                 addr152:
                              }
                              while(true)
                              {
                                 §%;§.data[birdName] = false;
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr152);
               }
               catch(e:Error)
               {
               }
               §§goto(addr166);
            }
         }
         §§goto(addr42);
      }
      
      private static function §9;§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,1§ = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in §[o§.§='§.slingshot.§]<§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §'B§(param1:§#H§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  §§push(§§newactivation());
                  while(!(_loc8_ && param2))
                  {
                     continue loop0;
                     loop6:
                     for(; !(_loc8_ && param2); while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc8_ && param2)
                        {
                           break;
                        }
                        §§push(powerUpName);
                        if(!(_loc8_ && §4!<§))
                        {
                           §§goto(addr227);
                        }
                        §§goto(addr235);
                     })
                     {
                        §§push(param3);
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §§pop().§§slot[3] = §§pop();
                              while(true)
                              {
                                 if(isOpen)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    addr250:
                                    while(true)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          if(_loc8_ && param3)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       addr297:
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop6;
                                 addr236:
                                 while(!(_loc8_ && param3))
                                 {
                                    §%m§ = [];
                                    if(_loc8_ && param3)
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(_loc7_ || param3)
                                          {
                                             var _loc5_:* = §§pop();
                                             if(_loc7_ || param1)
                                             {
                                                §§push("POWERUP4");
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(0);
                                                            if(_loc8_ && §4!<§)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr422:
                                                            §§push(3);
                                                            if(_loc8_)
                                                            {
                                                               addr437:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("POWERUP1");
                                                         if(!_loc8_)
                                                         {
                                                            addr370:
                                                            §§push(_loc5_);
                                                            if(_loc7_ || param2)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr442:
                                                                        if(!(_loc8_ && §4!<§))
                                                                        {
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 addr193:
                                                                                 var powerUpPopupName:String = "POWERUP_TUTORIAL_BIRDQUAKE";
                                                                                 addr186:
                                                                                 §%m§.push(powerUpPopupName);
                                                                                 break;
                                                                                 addr185:
                                                                              case 1:
                                                                                 addr173:
                                                                                 §§push(§§newactivation());
                                                                                 §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                 if(_loc7_ || §4!<§)
                                                                                 {
                                                                                    §§pop().§§slot[4] = §§pop();
                                                                                    addr158:
                                                                                    §§push(§%m§);
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_ || param3)
                                                                                    {
                                                                                       addr166:
                                                                                       §§pop().push(§§pop().§§slot[4]);
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 §§goto(addr185);
                                                                              case 2:
                                                                                 addr151:
                                                                                 §§push(§§newactivation());
                                                                                 §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop().§§slot[4] = §§pop();
                                                                                    §§push(§%m§);
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       addr137:
                                                                                       §§push(§§pop().§§slot[4]);
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          §§pop().push(§§pop());
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                    addr548:
                                                                                    §§pop().splice(§§pop().§§slot[6],1);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr525:
                                                                                       §§push(i);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                          if(_loc7_ || param3)
                                                                                          {
                                                                                             var i:int = §§pop();
                                                                                             addr541:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!(_loc8_ && param3))
                                                                                                   {
                                                                                                      addr502:
                                                                                                      §§push(§§pop().§§slot[6]);
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         addr510:
                                                                                                         if(§§pop() < 0)
                                                                                                         {
                                                                                                            §%;§.flush();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(_loc7_ || param1)
                                                                                                               {
                                                                                                                  addr523:
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr525);
                                                                                                                  }
                                                                                                                  addr638:
                                                                                                                  _loc5_ = 0;
                                                                                                                  if(!(_loc8_ && §4!<§))
                                                                                                                  {
                                                                                                                     var _loc6_:* = powerUpsToShow;
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr678:
                                                                                                                        for each(powerUpName in _loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              addr672:
                                                                                                                              §!;§(powerUpName,currentUIView);
                                                                                                                           }
                                                                                                                           §§goto(addr678);
                                                                                                                        }
                                                                                                                        addr682:
                                                                                                                        return;
                                                                                                                        addr681:
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  §§goto(addr681);
                                                                                                                  addr618:
                                                                                                               }
                                                                                                               addr585:
                                                                                                               §§push(§%;§.data[powerUpPopupName] == false);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr564:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr566:
                                                                                                                     §%;§.data[powerUpPopupName] = true;
                                                                                                                     §§goto(addr525);
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                                  §§push(powerUpsToShow);
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               addr586:
                                                                                                               §§goto(addr586);
                                                                                                            }
                                                                                                            §§goto(addr541);
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[5]);
                                                                                                            if(!(_loc8_ && §4!<§))
                                                                                                            {
                                                                                                               §§pop().§§slot[4] = §§pop()[i];
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(§%;§.data[powerUpPopupName] == undefined);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr585);
                                                                                                                     }
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  §§goto(addr585);
                                                                                                                  addr609:
                                                                                                               }
                                                                                                               §§goto(addr682);
                                                                                                            }
                                                                                                            addr613:
                                                                                                            §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                                                            §§goto(addr541);
                                                                                                         }
                                                                                                         addr612:
                                                                                                         §§goto(addr613);
                                                                                                         §§push(§§pop().§§slot[5]);
                                                                                                      }
                                                                                                      §§goto(addr638);
                                                                                                   }
                                                                                                   addr611:
                                                                                                   §§goto(addr612);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr564);
                                                                                             }
                                                                                             §§goto(addr525);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr638);
                                                                                       addr553:
                                                                                    }
                                                                                    §§goto(addr566);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr173);
                                                                                 }
                                                                              case 3:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc7_ || param3)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§pop().§§slot[4] = §§pop();
                                                                                          addr86:
                                                                                          §§push(§%m§);
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(!(_loc8_ && param3))
                                                                                                   {
                                                                                                      §§pop().push(§§pop());
                                                                                                      break;
                                                                                                      addr107:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr166);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr137);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr158);
                                                                                             }
                                                                                             §§goto(addr193);
                                                                                          }
                                                                                          §§goto(addr548);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr151);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                    §§goto(addr151);
                                                                                 }
                                                                                 addr467:
                                                                                 if(§§pop().§§slot[2])
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!§%;§)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §%;§ = SharedObject.getLocal(storageName);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr610:
                                                                                                §§goto(addr611);
                                                                                                §§push(§§newactivation());
                                                                                             }
                                                                                             §§goto(addr553);
                                                                                          }
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                       §§goto(addr610);
                                                                                    }
                                                                                    §§goto(addr541);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              case 4:
                                                                                 §§push(§%m§);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr75:
                                                                                    §§pop().push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                                    if(_loc7_ || §4!<§)
                                                                                    {
                                                                                       addr66:
                                                                                       §%m§.push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                       addr47:
                                                                                       addr65:
                                                                                       §§push(§%m§);
                                                                                       §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§pop().push(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§%m§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      if(_loc7_ || §4!<§)
                                                                                                      {
                                                                                                         §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§pop().push(§§pop());
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr47);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr47);
                                                                                                      }
                                                                                                      §§goto(addr65);
                                                                                                   }
                                                                                                   §§goto(addr47);
                                                                                                }
                                                                                                §§goto(addr564);
                                                                                             }
                                                                                             §§goto(addr107);
                                                                                          }
                                                                                          §§goto(addr75);
                                                                                       }
                                                                                       §§goto(addr66);
                                                                                    }
                                                                                    §§goto(addr523);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr86);
                                                                                 }
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           §§push(§%m§);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§pop().§§slot[5] = §§pop();
                                                                              if(!(_loc8_ && §4!<§))
                                                                              {
                                                                                 try
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§goto(addr467);
                                                                                    }
                                                                                    §§goto(addr502);
                                                                                 }
                                                                                 catch(e:Error)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §3f§.log("Unable to get local storage");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr523);
                                                                              }
                                                                              §§goto(addr541);
                                                                           }
                                                                           §§goto(addr613);
                                                                        }
                                                                        §§goto(addr510);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr404:
                                                                     §§push(2);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr437);
                                                                     }
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               else
                                                               {
                                                                  §§push("POWERUP2");
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || param3)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              §§goto(addr404);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr422);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("POWERUP3");
                                                                           if(_loc7_)
                                                                           {
                                                                              addr411:
                                                                              §§push(_loc5_);
                                                                              if(!(_loc8_ && §4!<§))
                                                                              {
                                                                                 addr419:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr428:
                                                                                    if("ALL" !== _loc5_)
                                                                                    {
                                                                                       §§goto(addr442);
                                                                                       §§push(5);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr442);
                                                                                 §§goto(addr442);
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                        }
                                                                        §§goto(addr442);
                                                                     }
                                                                  }
                                                                  §§goto(addr428);
                                                               }
                                                            }
                                                            §§goto(addr419);
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr442);
                                                   }
                                                   §§goto(addr428);
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr404);
                                          }
                                          §§goto(addr467);
                                       }
                                       §§goto(addr564);
                                    }
                                    else
                                    {
                                       §§goto(addr250);
                                    }
                                 }
                              }
                              return;
                           }
                           break;
                           addr227:
                           if(!(_loc7_ || param3))
                           {
                              continue;
                           }
                           §§pop().§§slot[4] = §§pop();
                           §§goto(addr236);
                        }
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           §§goto(addr297);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §0i§(param1:§#H§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[5] = 0;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[1] = param1;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§pop().§§slot[2] = §§pop();
                                    while(true)
                                    {
                                       if(isOpen)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             break;
                                          }
                                          addr66:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop6;
                                    }
                                    if(_loc7_ || param1)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          return;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                    addr41:
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §@!+§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr99:
                        while(true)
                        {
                           §§push(§'P§.length > 0);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        isOpen = true;
                        loop6:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              §9!B§ = §'P§.pop();
                              while(_loc2_)
                              {
                                 §9!B§.open(param1);
                                 if(_loc2_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop5;
                           }
                           §§goto(addr99);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function §,[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §4!<§)
         {
            if(isOpen == true)
            {
               if(§'P§.length > 0)
               {
                  §§push(§9!B§);
               }
               else
               {
                  isOpen = false;
                  while(_loc1_)
                  {
                     §§push(§9!B§);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(true);
                        if(!_loc2_)
                        {
                           §§pop().preClose(§§pop());
                           if(!(_loc1_ || §4!<§))
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              §§goto(addr24);
                           }
                           else
                           {
                              §§goto(addr100);
                           }
                           continue;
                        }
                     }
                     else
                     {
                        addr98:
                        §§push(false);
                     }
                     §§pop().preClose(§§pop());
                     isOpen = false;
                     §@!+§(false);
                     break;
                  }
                  §§goto(addr24);
               }
               §§goto(addr98);
            }
            addr24:
            return;
         }
         §§goto(addr89);
      }
   }
}
