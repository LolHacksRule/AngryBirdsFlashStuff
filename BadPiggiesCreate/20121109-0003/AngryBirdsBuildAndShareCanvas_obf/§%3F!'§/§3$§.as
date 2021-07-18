package §?!'§
{
   import §%!0§.§%Q§;
   import §&!<§.§>!V§;
   import §,P§.§'_§;
   import §6]§.§+!T§;
   import §6]§.§,"0§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   import flash.net.SharedObject;
   
   public class §3$§
   {
      
      protected static var §'"5§:Class;
      
      protected static var § G§:Class;
      
      protected static var §%!]§:Class;
      
      private static var §^!j§:Array;
      
      private static var §'^§:Popup = null;
      
      private static var §;!,§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%!w§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'"5§ = §"!j§;
            loop0:
            while(true)
            {
               § G§ = §<l§;
               loop1:
               while(true)
               {
                  §%!]§ = §^"=§;
                  loop2:
                  while(true)
                  {
                     §^!j§ = [];
                     loop3:
                     while(_loc1_)
                     {
                        §'^§ = null;
                        loop4:
                        while(_loc1_)
                        {
                           continue loop1;
                           while(true)
                           {
                              isOpen = false;
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §3$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §-D§(param1:String, param2:§>!V§) : void
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
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr194:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  addr152:
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  addr159:
                  §§pop().§§slot[3] = "";
                  if(!(_loc6_ || _loc3_))
                  {
                     while(_loc6_)
                     {
                        if(!(_loc6_ || param2))
                        {
                           continue loop1;
                        }
                        §§push(§§newactivation());
                        if(_loc5_ && _loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr152);
                        §§goto(addr159);
                     }
                     §§goto(addr194);
                     addr180:
                  }
                  §§push(§§newactivation());
                  if(_loc6_ || §3$§)
                  {
                     addr219:
                     var _loc4_:* = §§pop().§§slot[1];
                     if(_loc6_)
                     {
                        if("BIRD_BLACK" === _loc4_)
                        {
                           if(_loc6_ || param2)
                           {
                              §§push(0);
                              if(!(_loc5_ && §3$§))
                              {
                                 §§goto(addr342);
                              }
                              §§goto(addr330);
                           }
                           addr322:
                           §§push(6);
                           if(!(_loc5_ && param2))
                           {
                              addr330:
                           }
                           §§goto(addr342);
                        }
                        if("BIRD_BLUE" === _loc4_)
                        {
                           if(!(_loc5_ && §3$§))
                           {
                              addr252:
                              §§push(1);
                              if(!_loc5_)
                              {
                                 §§goto(addr342);
                              }
                              addr302:
                              §§goto(addr342);
                           }
                           §§goto(addr322);
                        }
                        if("BIRD_RED" === _loc4_)
                        {
                           if(_loc6_)
                           {
                              §§push(2);
                              if(_loc5_ && param2)
                              {
                              }
                              §§goto(addr342);
                           }
                           addr275:
                           §§push(3);
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr342);
                           }
                           §§goto(addr330);
                        }
                        if("BIRD_WHITE" === _loc4_)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr275);
                           }
                           addr308:
                           §§push(5);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr342);
                        }
                        if("BIRD_YELLOW" === _loc4_)
                        {
                           if(_loc6_ || param1)
                           {
                              §§push(4);
                              if(!(_loc5_ && §3$§))
                              {
                                 §§goto(addr302);
                              }
                              §§goto(addr337);
                           }
                           §§goto(addr334);
                        }
                        if("BIRD_GREEN" === _loc4_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr308);
                           }
                           §§goto(addr322);
                        }
                        if("BIRD_REDBIG" === _loc4_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr322);
                           }
                           §§goto(addr334);
                        }
                        if("BIRD_SARDINE" === _loc4_)
                        {
                           addr334:
                           §§push(7);
                           if(_loc6_)
                           {
                              addr337:
                           }
                           §§goto(addr342);
                        }
                        addr342:
                        switch(§§pop())
                        {
                           case 6:
                              §§push(§§newactivation());
                              if(!(_loc6_ || param1))
                              {
                                 §§goto(addr219);
                              }
                              §§pop().§§slot[3] = "TUTORIAL_BIG_BROTHER";
                              try
                              {
                                 addr351:
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§goto(addr354);
                                 }
                                 §§goto(addr401);
                              }
                              catch(e:Error)
                              {
                              }
                              §§goto(addr401);
                           case 1:
                              addr131:
                              var tutorialName:String = "TUTORIAL_BLUE";
                              §§goto(addr351);
                              addr133:
                           case 0:
                              addr138:
                              tutorialName = "TUTORIAL_BLACK";
                              if(!_loc5_)
                              {
                                 §§goto(addr351);
                              }
                              break;
                           case 2:
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 §§pop().§§slot[3] = "TUTORIAL_RED";
                                 §§goto(addr351);
                                 addr126:
                              }
                              §§goto(addr401);
                           case 3:
                              addr102:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr351);
                                       }
                                       else
                                       {
                                          §§goto(addr133);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr126);
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr376);
                              }
                              else
                              {
                                 §§goto(addr138);
                              }
                           case 4:
                              addr93:
                              tutorialName = "TUTORIAL_YELLOW";
                              if(!_loc6_)
                              {
                              }
                              §§goto(addr351);
                           case 5:
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                       if(_loc5_ && param1)
                                       {
                                       }
                                       break;
                                    }
                                    §§goto(addr131);
                                 }
                                 else
                                 {
                                    §§goto(addr93);
                                 }
                              }
                              §§goto(addr354);
                           default:
                              return;
                           case 7:
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[3] = "TUTORIAL_MIGHTYEAGLE";
                                 }
                                 else
                                 {
                                    §§goto(addr102);
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr401);
                        }
                        §^!j§.push(tutorialPopup);
                        addr354:
                        §§pop().§§slot[4] = new §7!I§(§+!T§.§`x§(§'"5§),currentUIView,§3"#§.§"!Z§(tutorialName,§="<§.§[E§));
                        if(_loc6_ || param2)
                        {
                           addr401:
                           if(tutorialPopup)
                           {
                              if(_loc6_)
                              {
                                 break loop6;
                              }
                           }
                           addr376:
                        }
                        return;
                        §§push(8);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr401);
               }
            }
         }
      }
      
      private static function §^!I§(param1:String, param2:§>!V§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr90:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public static function §8!!§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!(_loc6_ && §3$§))
            {
               §§pop().§§slot[2] = §§pop();
               if(!(_loc6_ && §3$§))
               {
                  addr42:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc5_ || param1)
                     {
                        if(!§;!,§)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              §;!,§ = SharedObject.getLocal(storageName);
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr75:
                                 var _loc3_:int = 0;
                                 if(_loc5_)
                                 {
                                    var _loc4_:* = §8!w§();
                                    if(_loc6_ && _loc2_)
                                    {
                                    }
                                    for each(birdName in _loc4_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §;!,§.data[birdName] = false;
                                       }
                                    }
                                 }
                                 if(_loc5_ || _loc3_)
                                 {
                                    §;!,§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                    addr132:
                                    while(true)
                                    {
                                       §;!,§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                       while(true)
                                       {
                                          addr150:
                                          §§goto(addr148);
                                       }
                                    }
                                    addr132:
                                 }
                                 while(true)
                                 {
                                    §;!,§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                    if(!_loc6_)
                                    {
                                       §§goto(addr141);
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              addr148:
                              while(true)
                              {
                                 §;!,§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                 addr156:
                                 while(true)
                                 {
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop5;
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr177);
               }
               catch(e:Error)
               {
               }
               addr177:
               while(false)
               {
                  §§goto(addr150);
                  if(_loc5_ || _loc3_)
                  {
                     continue;
                  }
                  continue loop6;
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      private static function §8!w§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§%Q§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §'_§.§=M§.slingshot.mBirds)
         {
            if(!(_loc5_ && §3$§))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §2=§(param1:§>!V§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(!_loc7_)
                     {
                        §§push(param2);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(param3);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             if(!isOpen)
                                             {
                                                break;
                                             }
                                             if(!_loc7_)
                                             {
                                                if(!(_loc7_ && §3$§))
                                                {
                                                   return;
                                                }
                                                continue;
                                             }
                                             while(true)
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   break loop9;
                                                }
                                                break;
                                                addr279:
                                                while(!(_loc7_ && param3))
                                                {
                                                   §%!w§ = [];
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§newactivation());
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc8_ || §3$§)
                                                      {
                                                         var _loc5_:* = §§pop();
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            if("POWERUP4" === _loc5_)
                                                            {
                                                               if(_loc8_ || §3$§)
                                                               {
                                                                  addr385:
                                                                  §§push(0);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr452:
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push(§§newactivation());
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 §§pop().§§slot[4] = "POWERUP_TUTORIAL_BIRDQUAKE";
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    addr226:
                                                                                    §%!w§.push(powerUpPopupName);
                                                                                    addr463:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr634:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc7_ && §3$§))
                                                                                    {
                                                                                       §§push(§§pop().§§slot[5]);
                                                                                       if(!(_loc7_ && param3))
                                                                                       {
                                                                                          §§pop().§§slot[4] = §§pop()[i];
                                                                                          addr655:
                                                                                          §§push(§;!,§.data[powerUpPopupName] == undefined);
                                                                                          if(!(§;!,§.data[powerUpPopupName] == undefined))
                                                                                          {
                                                                                             addr626:
                                                                                             §§pop();
                                                                                             addr627:
                                                                                             §§push(§;!,§.data[powerUpPopupName] == false);
                                                                                             if(!(_loc7_ && §3$§))
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr596:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §;!,§.data[powerUpPopupName] = true;
                                                                                                      }
                                                                                                      addr606:
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_ || §3$§)
                                                                                                         {
                                                                                                            addr543:
                                                                                                            §§push(i);
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               addr554:
                                                                                                               var i:int = §§pop() - 1;
                                                                                                               addr557:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr503:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc8_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr514:
                                                                                                                        §§push(§§pop().§§slot[6]);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(§§pop() < 0)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §;!,§.flush();
                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                    {
                                                                                                                                       addr532:
                                                                                                                                       if(!(_loc7_ && param3))
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr543);
                                                                                                                                             }
                                                                                                                                             addr684:
                                                                                                                                             _loc5_ = 0;
                                                                                                                                             addr683:
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                var _loc6_:* = powerUpsToShow;
                                                                                                                                                if(_loc8_ || param3)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr724:
                                                                                                                                                for each(powerUpName in _loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §^!I§(powerUpName,currentUIView);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr724);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr728:
                                                                                                                                             return;
                                                                                                                                             addr664:
                                                                                                                                          }
                                                                                                                                          §§goto(addr627);
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    §§goto(addr728);
                                                                                                                                 }
                                                                                                                                 §§goto(addr532);
                                                                                                                              }
                                                                                                                              addr632:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr634);
                                                                                                                              }
                                                                                                                              addr659:
                                                                                                                              §§pop().§§slot[6] = int(powerUpsToShow.length - 1);
                                                                                                                              §§goto(addr503);
                                                                                                                              addr663:
                                                                                                                              addr658:
                                                                                                                              addr657:
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     addr564:
                                                                                                                     if(!(_loc7_ && §3$§))
                                                                                                                     {
                                                                                                                        addr573:
                                                                                                                        §§pop().§§slot[5].splice(i,1);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr578:
                                                                                                                           §§goto(addr543);
                                                                                                                        }
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  §§goto(addr543);
                                                                                                               }
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                            §§goto(addr554);
                                                                                                            addr615:
                                                                                                         }
                                                                                                         §§goto(addr663);
                                                                                                      }
                                                                                                      §§goto(addr655);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr655);
                                                                                             }
                                                                                             §§goto(addr626);
                                                                                          }
                                                                                          §§goto(addr596);
                                                                                       }
                                                                                       §§goto(addr659);
                                                                                    }
                                                                                    §§goto(addr658);
                                                                                    addr225:
                                                                                    addr224:
                                                                                    addr227:
                                                                                 }
                                                                                 try
                                                                                 {
                                                                                    addr483:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr487:
                                                                                       if(§§pop().§§slot[2])
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr490:
                                                                                             if(!§;!,§)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §;!,§ = SharedObject.getLocal(storageName);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr656:
                                                                                                      §§goto(addr657);
                                                                                                      §§push(§§newactivation());
                                                                                                      addr502:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr626);
                                                                                             }
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr664);
                                                                                    }
                                                                                    §§goto(addr514);
                                                                                 }
                                                                                 catch(e:Error)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §,"0§.log("Unable to get local storage");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr683);
                                                                              }
                                                                              §§goto(addr634);
                                                                           case 1:
                                                                              §§push(§§newactivation());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().§§slot[4] = "POWERUP_TUTORIAL_SUPERSEED";
                                                                                 if(_loc8_ || §3$§)
                                                                                 {
                                                                                    addr196:
                                                                                    §§push(§%!w§);
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       addr204:
                                                                                       §§pop().push(§§pop().§§slot[4]);
                                                                                       addr205:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    §§goto(addr463);
                                                                                 }
                                                                                 §§goto(addr626);
                                                                              }
                                                                              §§goto(addr514);
                                                                           case 2:
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 §§pop().§§slot[4] = "POWERUP_TUTORIAL_KINGSLING";
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr148:
                                                                                          §§push(§%!w§);
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             addr156:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr159:
                                                                                                §§pop().push(§§pop().§§slot[4]);
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§goto(addr463);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr196);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                          §§goto(addr463);
                                                                                       }
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr632);
                                                                              }
                                                                              break;
                                                                           case 3:
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && §3$§))
                                                                              {
                                                                                 §§pop().§§slot[4] = "POWERUP_TUTORIAL_SLINGSCOPE";
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr94:
                                                                                    §§push(§%!w§);
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       if(!(_loc7_ && param2))
                                                                                       {
                                                                                          §§push(§§pop().§§slot[4]);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             if(!(_loc7_ && §3$§))
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§pop().push(§§pop());
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr463);
                                                                                                   }
                                                                                                   §§goto(addr626);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr159);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr156);
                                                                                       }
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                    §§goto(addr573);
                                                                                 }
                                                                                 §§goto(addr490);
                                                                              }
                                                                              §§goto(addr226);
                                                                           case 4:
                                                                              addr87:
                                                                              §%!w§.push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§%!w§);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc7_ && param2)
                                                                                    {
                                                                                       §§goto(addr87);
                                                                                    }
                                                                                    §§pop().push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr46:
                                                                                       §§push(§%!w§);
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             §§pop().push("POWERUP_TUTORIAL_KINGSLING");
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(§%!w§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§pop().push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr46);
                                                                                                            }
                                                                                                            §§goto(addr226);
                                                                                                         }
                                                                                                         §§goto(addr632);
                                                                                                      }
                                                                                                      §§goto(addr196);
                                                                                                   }
                                                                                                   §§goto(addr148);
                                                                                                }
                                                                                                §§goto(addr573);
                                                                                             }
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                          §§goto(addr94);
                                                                                       }
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    §§goto(addr655);
                                                                                 }
                                                                                 §§goto(addr573);
                                                                              }
                                                                              §§goto(addr543);
                                                                           default:
                                                                              §§goto(addr226);
                                                                        }
                                                                        §§push(§%!w§);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop().§§slot[5] = §§pop();
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              §§goto(addr483);
                                                                           }
                                                                           §§goto(addr656);
                                                                        }
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr554);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr413:
                                                                  §§push(2);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr435:
                                                                  }
                                                               }
                                                               §§goto(addr452);
                                                            }
                                                            else
                                                            {
                                                               if("POWERUP1" === _loc5_)
                                                               {
                                                                  if(_loc8_ || §3$§)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else if("POWERUP2" === _loc5_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr413);
                                                                  }
                                                               }
                                                               else if("POWERUP3" === _loc5_)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§goto(addr435);
                                                                     }
                                                                  }
                                                               }
                                                               else if("ALL" !== _loc5_)
                                                               {
                                                                  §§goto(addr452);
                                                                  §§push(5);
                                                               }
                                                               §§goto(addr452);
                                                               if(_loc8_ || param1)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr452);
                                                         }
                                                         §§goto(addr385);
                                                      }
                                                      §§goto(addr487);
                                                   }
                                                   §§goto(addr573);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc7_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(powerUpName);
                                       if(!_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(§§pop());
                                       }
                                       if(!(_loc8_ || §3$§))
                                       {
                                          continue loop8;
                                       }
                                       §§pop().§§slot[4] = §§pop();
                                       §§goto(addr279);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §4"9§(param1:§>!V§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr109:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr110:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr105:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                     }
                  }
               }
            }
            loop7:
            for(; !(_loc7_ && param2); while(true)
            {
               §§push(§§newactivation());
               if(!(_loc7_ && param2))
               {
                  if(_loc6_)
                  {
                     §§goto(addr32);
                  }
                  break;
               }
               continue loop7;
            },§§goto(addr91))
            {
               §§push(param2);
               if(!(_loc7_ && param1))
               {
                  §§pop().§§slot[2] = §§pop();
                  loop8:
                  while(_loc6_)
                  {
                     loop9:
                     while(true)
                     {
                        if(!isOpen)
                        {
                           continue loop7;
                        }
                        if(!(_loc6_ || param1))
                        {
                           while(_loc6_)
                           {
                              continue loop7;
                              §§pop().§§slot[3] = §8!w§();
                              if(!(_loc7_ && §3$§))
                              {
                                 continue loop9;
                              }
                           }
                           continue loop8;
                        }
                        if(!_loc7_)
                        {
                           return;
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr100);
               }
               else
               {
                  §§goto(addr109);
               }
            }
         }
      }
      
      private static function §8!E§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(isOpen);
            if(!(_loc3_ && param1))
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr104:
                        while(true)
                        {
                           §§push(§^!j§.length > 0);
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr103:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              isOpen = true;
                              do
                              {
                                 §'^§ = §^!j§.pop();
                                 do
                                 {
                                    §'^§.open(param1);
                                 }
                                 while(!(_loc2_ || _loc3_));
                                 
                              }
                              while(_loc3_);
                              
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                     return;
                  }
               }
            }
            §§goto(addr103);
         }
         §§goto(addr78);
      }
      
      public static function §4!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(isOpen == true)
            {
               loop0:
               do
               {
                  if(§^!j§.length <= 0)
                  {
                     isOpen = false;
                     for(; _loc2_ || _loc1_; §§pop().preClose(§§pop()),if(_loc1_ && _loc2_)
                     {
                        continue;
                     },if(!(_loc1_ && §3$§))
                     {
                        §§goto(addr25);
                     },§§goto(addr127))
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        if(!(_loc1_ && §3$§))
                        {
                           §§push(§'^§);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              addr125:
                              §§push(false);
                           }
                           §§pop().preClose(§§pop());
                           isOpen = false;
                           continue loop0;
                           addr127:
                        }
                        else
                        {
                           addr124:
                        }
                        §§push(§'^§);
                        §§goto(addr125);
                     }
                     addr25:
                     return;
                     addr94:
                  }
                  §§goto(addr124);
               }
               while(_loc1_ && _loc2_);
               
               §8!E§(false);
               §§goto(addr94);
               addr106:
            }
            §§goto(addr25);
         }
         §§goto(addr106);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3$§))
         {
            §§push(§'^§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || §3$§)
                  {
                     addr56:
                     §'^§.preClose(false);
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
   }
}
