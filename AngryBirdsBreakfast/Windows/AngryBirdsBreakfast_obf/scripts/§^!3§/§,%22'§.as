package §^!3§
{
   import §"n§.§<!e§;
   import §+!!§.§5"+§;
   import §,z§.§!t§;
   import §,z§.§"_§;
   import §,z§.§+f§;
   import §,z§.§?!z§;
   import §1T§.§'!c§;
   import §8!K§.§5!Y§;
   import §@L§.§;!3§;
   import §@L§.§?!'§;
   import each.§5<§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §,"'§ extends §%z§
   {
      
      public static const §!!`§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §4]§:int = 2;
      
      public static const §!!W§:int = 3;
      
      public static const §1",§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §["$§:int = 7;
      
      public static const §%!!§:Number = 2000;
      
      public static const §+!§:Number = 2500;
      
      public static const §5P§:int = 5;
      
      private static const §@4§:Number = 0.001;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §,"'§)
         {
            §!!`§ = 0;
            loop0:
            while(true)
            {
               LEVEL_STATE_SLINGSHOT = 1;
               loop1:
               while(true)
               {
                  §4]§ = 2;
                  loop2:
                  while(true)
                  {
                     §!!W§ = 3;
                     loop3:
                     for(; !_loc2_; while(!(_loc2_ && _loc1_))
                     {
                        LEVEL_STATE_VICTORY2_END = 6;
                        continue loop2;
                     })
                     {
                        §1",§ = 4;
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           continue loop3;
                           while(_loc1_ || §,"'§)
                           {
                              §+!§ = 2500;
                              loop10:
                              while(_loc1_)
                              {
                                 §5P§ = 5;
                                 while(_loc1_)
                                 {
                                    §§push(§§findproperty(§@4§));
                                    §§push(§5"+§.§8!c§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() / 100);
                                    }
                                    §§pop().§@4§ = §§pop();
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop10;
                                    }
                                 }
                                 while(!_loc2_)
                                 {
                                    §%!!§ = 2000;
                                    break loop10;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §["$§ = 7;
            §§goto(addr91);
         }
         §§goto(addr50);
      }
      
      protected var §"!P§:int = 0;
      
      protected var §^!w§:Number;
      
      protected var §,%§:Number = 0;
      
      protected var §&W§:Boolean = false;
      
      protected var §@!0§:Number = 0;
      
      private var §#!o§:Number = 0;
      
      private var §"&§:int = 0;
      
      private var §@"-§:Number = 0;
      
      private var § ?§:Number = 0;
      
      protected var §%$§:Boolean = true;
      
      protected var §+!$§:§<!e§;
      
      protected var §3!F§:Point;
      
      public function §,"'§(param1:§?!'§, param2:§5!Y§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§+!$§ = new §<!e§();
            while(true)
            {
               this.§3!F§ = new Point();
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     super(param1,param2);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get §0%§() : int
      {
         return this.§"!P§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               this.§+!$§.§[@§(0);
               loop1:
               while(true)
               {
                  this.§"!P§ = -1;
                  while(true)
                  {
                     this.§"&§ = 0;
                     while(_loc1_)
                     {
                        this.§,%§ = 0;
                        loop7:
                        while(_loc1_ || this)
                        {
                           §&!E§(true);
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr76:
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop7;
                           }
                           while(!_loc2_)
                           {
                              this.§^!w§ = §%!!§;
                              continue loop7;
                              §§goto(addr76);
                           }
                           §§goto(addr107);
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr112);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1 = §<Y§.update(param1,true);
            while(true)
            {
               this.§[V§(param1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§@7§(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §[V§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§"&§ != 0)
            {
               if(_loc2_)
               {
                  §<Y§.camera.adjustManualScale(this.§"&§ > 0,param1 * §@4§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<Y§.clearLevel();
            while(true)
            {
               removeEventListeners();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§"!P§ = -1;
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.addEventListeners();
         }
      }
      
      public function §]!B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§<Y§.camera.mCurrentCameraSliderLocation >= §5"+§.§<!6§)
            {
               while(!§<Y§.objects.isWorldAtSleep())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr62:
                  if(_loc2_ || _loc2_)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr59:
                        §§push(false);
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr79:
                        return false;
                     }
                     return §§pop();
                  }
               }
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr59);
            }
            §§goto(addr79);
         }
         §§goto(addr62);
      }
      
      public function §%!8§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5"+§ = §<Y§.camera;
         if(_loc4_)
         {
            §§push(_loc2_.§++§);
            loop0:
            while(true)
            {
               §§push(0);
               addr109:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr24:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§++§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§++§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§-5§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr439:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc3_ && this)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           addr409:
                           while(!(_loc3_ && param2))
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  loop5:
                  while(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§push(param1);
                        loop7:
                        while(true)
                        {
                           §§push(§!!`§);
                           loop8:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              while(!(_loc3_ && param1))
                              {
                                 §§push(LEVEL_STATE_SLINGSHOT);
                                 loop10:
                                 while(_loc4_ || param1)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §<Y§.camera.goToBirdView();
                                       }
                                       loop40:
                                       while(true)
                                       {
                                          addr24:
                                          loop24:
                                          while(true)
                                          {
                                             this.§"!P§ = param1;
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            loop26:
                                                            while(true)
                                                            {
                                                               this.§#!o§ = §5P§;
                                                               addr288:
                                                               addr283:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §<Y§.camera.goToCastleView();
                                                                     break;
                                                                  }
                                                                  addr304:
                                                                  addr331:
                                                                  while(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!(_loc4_ || this))
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     continue loop26;
                                                                  }
                                                                  continue loop24;
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop24;
                                                               }
                                                            }
                                                         }
                                                         addr181:
                                                         continue;
                                                         addr244:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop30:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §<Y§.camera.goToBirdView();
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §<Y§.slingshot.makeBirdsJumpForJoy();
                                                                     while(true)
                                                                     {
                                                                        addr137:
                                                                        while(true)
                                                                        {
                                                                           this.playWinningSoundVictory1();
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr267:
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.playWinningSoundVictory2();
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§@!0§ = 1200;
                                                                                             addr251:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                   addr345:
                                                                                                   this.§@!0§ = 5000;
                                                                                                   addr348:
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §<Y§.particles.moveTrailsNewToOld();
                                                                                                      break loop39;
                                                                                                   }
                                                                                                   addr391:
                                                                                                   continue loop24;
                                                                                                }
                                                                                                §§push(this.§&?§);
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr409);
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ || param1))
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      §<Y§.camera.goToBirdView();
                                                                                                      §§goto(addr244);
                                                                                                   }
                                                                                                   addr234:
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     addr154:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           this.§@!0§ = 1200;
                                                                           addr227:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&?§);
                                                                              if(!(_loc3_ && param2))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 §§goto(addr137);
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                           addr227:
                                                                        }
                                                                     }
                                                                     addr222:
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               addr178:
                                                            }
                                                            else
                                                            {
                                                               addr328:
                                                               §<Y§.camera.goToCastleView();
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   while(true)
                                                   {
                                                      §<Y§.camera.goToCastleView();
                                                      addr77:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §<Y§.objects.makePigsSmile(5);
                                                                  break loop24;
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§-!n§();
                                                               §§goto(addr136);
                                                            }
                                                            addr134:
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   addr114:
                                                }
                                                §§goto(addr227);
                                             }
                                             break;
                                          }
                                          while(!_loc3_)
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop40;
                                                }
                                                if(_loc3_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr24);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr77);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§4]§);
                                          addr342:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      §§push(§!!W§);
                                                      addr327:
                                                      while(§§pop() != §§pop())
                                                      {
                                                         §§push(param1);
                                                         continue loop11;
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   addr326:
                                                }
                                                break;
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr345);
                                 }
                                 continue loop8;
                              }
                              continue loop7;
                           }
                           while(true)
                           {
                              if(_loc4_ || param1)
                              {
                                 this.§@!0§ = 2000;
                                 break;
                              }
                              §§goto(addr439);
                           }
                           §§goto(addr391);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr114);
      }
      
      protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!c§.§&j§();
            do
            {
               §'!c§.§3!f§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §-!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'!c§.§&j§();
         }
         do
         {
            §'!c§.§3!f§("LevelFailedPigs1");
         }
         while(_loc2_);
         
      }
      
      public function §&!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!0§ = 2000;
         }
         do
         {
            this.§&W§ = false;
            do
            {
               this.§,%§ = 2000;
               do
               {
                  this.changeGameState(§,"'§.LEVEL_STATE_SLINGSHOT,true);
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(_loc2_);
         
      }
      
      public function §'"%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§,%§ = Math.max(this.§,%§,param1);
         }
      }
      
      public function §&P§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§<Y§.slingshot.mSlingShotState == §;!3§.§0!7§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr61:
                     return !§<Y§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §@7§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:§+f§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§?!z§ = null;
         if(_loc8_ || _loc3_)
         {
            §§push(this);
            §§push(this.§^!w§);
            if(_loc8_ || this)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§^!w§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§&W§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(this);
                        §§push(this.§,%§);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§,%§ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§,%§);
                           if(!(_loc7_ && this))
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    addr502:
                                    while(true)
                                    {
                                       §§push(this.§^!w§);
                                       if(!_loc7_)
                                       {
                                          §§push(0);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§push(this.§-5§(false));
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               addr476:
                                                               while(true)
                                                               {
                                                                  loop8:
                                                                  while(§§pop())
                                                                  {
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(-1);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              this.§^!w§ = §%!!§;
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§push(Boolean(§<Y§.objects.isWorldAtSleep()));
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         §§push(this.§&W§);
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr367:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.§&W§);
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§,%§);
                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(6000);
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr322:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop16:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§<Y§.objects.isPigsAlive());
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr291:
                                                                                                                                                                  break;
                                                                                                                                                                  addr291:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§&W§);
                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr250:
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(_loc7_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(!(_loc7_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§&P§());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr208:
                                                                                                                                                                                       if(_loc8_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr427:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§,%§);
                                                                                                                                                                                             if(_loc8_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc8_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   if(_loc8_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr383:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop5;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1228);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr927);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          §§goto(addr208);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr966);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1190);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr956);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr222:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§,%§ = 15000;
                                                                                                                                                                                 if(!(_loc7_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§&W§ = true;
                                                                                                                                                                                    addr196:
                                                                                                                                                                                    §§goto(addr149);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr966);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1297);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr149);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break loop16;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§,%§ = 6000;
                                                                                                                                                                     this.§&W§ = true;
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        addr149:
                                                                                                                                                                        §§push(this.§-5§(false));
                                                                                                                                                                        if(!(_loc7_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 §<Y§.gameOver(_loc2_);
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop1;
                                                                                                                                                                              }
                                                                                                                                                                              addr1156:
                                                                                                                                                                              §§push(this.§#!o§);
                                                                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1095:
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop5;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1234:
                                                                                                                                                                                          §§push(this.§"!P§);
                                                                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1212:
                                                                                                                                                                                             addr1211:
                                                                                                                                                                                             if(§§pop() == §!!W§)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1213:
                                                                                                                                                                                                §<Y§.updatePigAnimations(param1);
                                                                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1190:
                                                                                                                                                                                                   §§push(!§<Y§.camera.isOnCastleView());
                                                                                                                                                                                                   if(!§<Y§.camera.isOnCastleView())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1192:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr1193:
                                                                                                                                                                                                      if(_loc8_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1164:
                                                                                                                                                                                                         §§push(§<Y§.camera.mCurrentAction == §5"+§.§8%§);
                                                                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1172:
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            break loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1190);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1213);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1172);
                                                                                                                                                                                                }
                                                                                                                                                                                                this.§@!0§ = 1000;
                                                                                                                                                                                                addr1308:
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1328:
                                                                                                                                                                                                   return;
                                                                                                                                                                                                   addr1323:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1328);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this.§"!P§);
                                                                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§1",§);
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1131:
                                                                                                                                                                                                      §§push(this.§@!0§);
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1149:
                                                                                                                                                                                                               §§push(Boolean(_loc5_ = §<Y§.objects.hasBirds()));
                                                                                                                                                                                                               if(Boolean(_loc5_ = §<Y§.objects.hasBirds()))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1153:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr1154:
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1156);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1095);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1308);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §<Y§.updatePigAnimations(param1);
                                                                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr979:
                                                                                                                                                                                                            §§push(!§<Y§.camera.isOnCastleView());
                                                                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr992:
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1190);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1149);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc7_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr952:
                                                                                                                                                                                                                  §§push(§<Y§.camera.mCurrentAction == §5"+§.§8%§);
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr956:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr964:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr966:
                                                                                                                                                                                                                              this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                              addr969:
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§^!w§ = 0;
                                                                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.§#!o§);
                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§#!o§ = §§pop();
                                                                                                                                                                                                                                       addr1061:
                                                                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1015:
                                                                                                                                                                                                                                          §§goto(addr979);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1131);
                                                                                                                                                                                                                                       addr1080:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1286:
                                                                                                                                                                                                                                    if(this.§@!0§ <= 0)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1297:
                                                                                                                                                                                                                                          if(§<Y§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc8_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1308);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1328);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1323);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1328);
                                                                                                                                                                                                                                    addr1114:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1042:
                                                                                                                                                                                                                              this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1052:
                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1265:
                                                                                                                                                                                                                              if(_loc6_ = §<Y§.levelObjects.activeObject as §?!z§)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1328);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop16;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1034:
                                                                                                                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1042);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1015);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1095);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr979);
                                                                                                                                                                                                                  addr1014:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1193);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1308);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1286);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§"!P§);
                                                                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§!!`§);
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§@!0§);
                                                                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr927:
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr933:
                                                                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr937:
                                                                                                                                                                                                                                             this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr942:
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1061);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr821:
                                                                                                                                                                                                                                                §§goto(addr1328);
                                                                                                                                                                                                                                                addr944:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1328);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1174:
                                                                                                                                                                                                                                          if(_loc7_ && _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§@!0§);
                                                                                                                                                                                                                                             break loop2;
                                                                                                                                                                                                                                             addr1248:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                          break loop13;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1154);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr821);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1228:
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§@!0§ = 0;
                                                                                                                                                                                                                                       §§goto(addr1234);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1286);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1234);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1286);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop2;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1156);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr969);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr942);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§"!P§);
                                                                                                                                                                                                            if(!(_loc7_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr833:
                                                                                                                                                                                                               §§push(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr845:
                                                                                                                                                                                                                           §§push(Boolean(§<Y§.camera.isOnCastleView()));
                                                                                                                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc8_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc8_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr868:
                                                                                                                                                                                                                                       if(_loc8_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr875:
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          break loop1;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr952);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr801:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.changeGameState(§!!W§);
                                                                                                                                                                                                                                             if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr966);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr819:
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr942);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1328);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop1;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1328);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr992);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1149);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr933);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§"!P§);
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1254:
                                                                                                                                                                                                                     §§push(§4]§);
                                                                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1278:
                                                                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc8_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1286);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1308);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1328);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1277:
                                                                                                                                                                                                                  §§goto(addr1278);
                                                                                                                                                                                                                  §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1265);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1297);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1277);
                                                                                                                                                                                                                  §§push(this.§"!P§);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1328);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1277);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1212);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1278);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1254);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1277);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1328);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1034);
                                                                                                                                                                                    §§push(this.§&?§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1286);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1131);
                                                                                                                                                                           }
                                                                                                                                                                           break loop8;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1172);
                                                                                                                                                                        addr149:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                     addr298:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1213);
                                                                                                                                                                  §§goto(addr149);
                                                                                                                                                               }
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            addr1173:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1174);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1328);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1149);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr291);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr320:
                                                                                                                                             }
                                                                                                                                             §§goto(addr956);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1095);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1131);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1328);
                                                                                                                                 }
                                                                                                                                 addr408:
                                                                                                                              }
                                                                                                                              §§goto(addr383);
                                                                                                                           }
                                                                                                                           §§goto(addr1080);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(!§<Y§.objects.isPigsAlive());
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc8_ || this)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1149);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop21:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               loop22:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§>!"§());
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr89:
                                                                                                                                                                                                if(!(_loc8_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop0;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                      §§goto(addr89);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                   addr550:
                                                                                                                                                                                                }
                                                                                                                                                                                                this.§0!x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr149);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr298);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1156);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1014);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1211);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1254);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr966);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§&P§());
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ = this.§2A§())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_.§ ![§);
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr718:
                                                                                                                                                                                                                  if(_loc4_.§<E§ <= 3000)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr696:
                                                                                                                                                                                                                     §§push(_loc4_.§ ![§);
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr718);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr698:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§^!w§ = §%!!§;
                                                                                                                                                                                                                              addr706:
                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr645:
                                                                                                                                                                                                                                 §§goto(addr149);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§0!x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                 addr722:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr645);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr721:
                                                                                                                                                                                                                              _loc2_ = int(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                              addr719:
                                                                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr713:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr645);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr719);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr671:
                                                                                                                                                                                                                  §§push(§["$§);
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr689:
                                                                                                                                                                                                                           _loc2_ = int(§§pop());
                                                                                                                                                                                                                           this.§0!x§(§["$§);
                                                                                                                                                                                                                           addr690:
                                                                                                                                                                                                                           if(!(_loc8_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr690);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr149);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr706);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr719);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr722);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr721);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr689);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr651:
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr671);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr699);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr690);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr149);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr149);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr718);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr698);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr651);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr722);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§2"$§());
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr651);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr696);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr696);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1052);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr149);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1149);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr383);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(_loc8_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr992);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr200);
                                                                                                                                                                           addr100:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1190);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr875);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1173);
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr196);
                                                                                                                                                            §§goto(addr149);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr819);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr250);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1149);
                                                                                                                                                }
                                                                                                                                                §§goto(addr71);
                                                                                                                                             }
                                                                                                                                             §§goto(addr258);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1149);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr322);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1149);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr875);
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                     addr367:
                                                                                                                  }
                                                                                                                  §§goto(addr427);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr998:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr979);
                                                                                                            }
                                                                                                            §§goto(addr964);
                                                                                                         }
                                                                                                         §§goto(addr956);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr1184:
                                                                                                   §§goto(addr1173);
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1095);
                                                                              }
                                                                              §§goto(addr937);
                                                                           }
                                                                           §§goto(addr966);
                                                                        }
                                                                        §§goto(addr833);
                                                                     }
                                                                     §§goto(addr1234);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§@!0§);
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() - param1);
                                                                  }
                                                                  §§pop().§@!0§ = §§pop();
                                                                  §§goto(addr1248);
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      this.§@!0§ = 2000;
                                                      §§goto(addr1114);
                                                   }
                                                   §§goto(addr476);
                                                }
                                                §§goto(addr998);
                                             }
                                             §§goto(addr1095);
                                          }
                                          §§goto(addr1286);
                                       }
                                       break loop2;
                                    }
                                    addr502:
                                 }
                                 §§goto(addr550);
                              }
                              §§goto(addr1095);
                           }
                           break;
                        }
                        §§goto(addr1228);
                        §§push(0);
                     }
                     break;
                  }
                  §§goto(addr502);
               }
               §§push(§<Y§.camera.mCurrentAction == §5"+§.§8%§);
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc8_ || _loc2_)
                  {
                     if(_loc8_ || this)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           if(!_loc7_)
                           {
                              addr780:
                              §§push(!§§pop());
                              if(_loc8_ || this)
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       §§goto(addr801);
                                    }
                                    §§goto(addr1192);
                                 }
                                 §§goto(addr1153);
                              }
                              §§goto(addr956);
                           }
                           §§goto(addr1164);
                        }
                        §§goto(addr1149);
                     }
                     §§goto(addr845);
                  }
                  §§goto(addr868);
               }
               §§goto(addr780);
            }
         }
         §§goto(addr1184);
      }
      
      protected function §>!"§() : Boolean
      {
         return this.§&?§;
      }
      
      protected function get §&?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§2A§())
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(true);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      protected function get §8!]§() : Boolean
      {
         return true;
      }
      
      public function §2A§() : §+f§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+f§ = null;
         var _loc1_:* = int(§<Y§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §<Y§.objects.getObject(_loc1_) as §+f§;
            if(_loc3_ || this)
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
         return null;
      }
      
      public function §2"$§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!t§ = null;
         var _loc1_:* = int(§<Y§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §<Y§.objects.getObject(_loc1_) as §!t§;
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     return true;
                  }
               }
               else
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
         return false;
      }
      
      protected function §0!x§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§&W§)
            {
               loop0:
               while(true)
               {
                  this.§&W§ = true;
                  addr129:
                  while(true)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        if(!§<Y§.objects.isWorldAtSleep())
                        {
                           while(true)
                           {
                              §§push(this.§,%§);
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc4_)
                                          {
                                             break loop5;
                                          }
                                          this.changeGameState(param1,param2);
                                       }
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && param2))
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§<Y§.slingshot.mDragging)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          addr121:
                                          return;
                                          addr83:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§,%§ = Math.min(this.§,%§,3500);
                                             continue loop5;
                                          }
                                          addr68:
                                       }
                                    }
                                    break;
                                 }
                                 while(§§pop() >= §§pop())
                                 {
                                    §§goto(addr83);
                                 }
                                 §§goto(addr121);
                                 addr110:
                              }
                              addr109:
                              while(true)
                              {
                                 §§goto(addr110);
                              }
                           }
                           return;
                           addr24:
                        }
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr129);
               }
            }
            while(true)
            {
               §§goto(addr109);
               §§goto(addr129);
            }
         }
         §§goto(addr129);
      }
      
      public function §-5§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"!P§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr225:
                              while(true)
                              {
                                 §§push(this.§"!P§);
                                 addr194:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr195:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr224:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop17:
                                       while(§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§pop();
                                             addr190:
                                             loop18:
                                             while(true)
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         loop20:
                                                         while(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break loop17;
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc2_ && param1)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop17;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop15;
                                                                     addr138:
                                                                  }
                                                                  §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(this.§@!0§ <= 0);
                                                                        continue loop23;
                                                                     }
                                                                     continue loop18;
                                                                     addr155:
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr121:
                                                                  §§push(this.§"!P§);
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     addr30:
                                                                     §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        while(!(_loc2_ && this))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           continue loop15;
                                                                           §§goto(addr30);
                                                                        }
                                                                        continue loop1;
                                                                        addr171:
                                                                     }
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!_loc2_)
                                                                     {
                                                                        continue loop0;
                                                                        §§goto(addr121);
                                                                     }
                                                                     §§goto(addr194);
                                                                     addr161:
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               while(_loc3_ || this)
                                                               {
                                                                  §§goto(addr161);
                                                                  §§push(this.§"!P§);
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         continue loop17;
                                                      }
                                                      addr199:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                   §§goto(addr138);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      break loop17;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr199);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      public function §@l§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§"!P§);
            if(_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           addr63:
                           §§pop();
                           return this.§"!P§ == §["$§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.delta != 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr55:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§%$§);
            if(_loc4_ || this)
            {
               §§push(!§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr253:
                        while(true)
                        {
                           §§pop();
                           addr254:
                           while(true)
                           {
                              §§push(!§<Y§.mReadyToRun);
                           }
                        }
                        addr253:
                     }
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§"!P§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§1",§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(this.§"!P§);
                                                         while(true)
                                                         {
                                                            §§push(§!!W§);
                                                            addr183:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            addr57:
                                                            if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            addr64:
                                                            §§push(§4]§);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  addr76:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              if(§<Y§.isPlayingReplay())
                                                                              {
                                                                                 §<Y§.changeReplaySpeed(param1);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr44:
                                                                                       if(!(_loc3_ && param2))
                                                                                       {
                                                                                          §§goto(addr25);
                                                                                       }
                                                                                       loop16:
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          §§push(this.§"!P§);
                                                                                          loop17:
                                                                                          for(; _loc4_; §§push(this.§"!P§),if(_loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          },§§goto(addr57))
                                                                                          {
                                                                                             §§push(LEVEL_STATE_SLINGSHOT);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr154);
                                                                                                      }
                                                                                                   }
                                                                                                   addr154:
                                                                                                   continue loop7;
                                                                                                   addr186:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr166:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ && param1)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         addr222:
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr25);
                                                                                                   }
                                                                                                   §§goto(addr76);
                                                                                                }
                                                                                                continue loop2;
                                                                                                while(_loc4_ || param2)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§goto(addr44);
                                                                                                   continue loop16;
                                                                                                }
                                                                                                continue loop6;
                                                                                                §§goto(addr64);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr186);
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop3;
                                                                                       §§goto(addr25);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr103:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §<Y§.camera.adjustManualScale(param1,param2 == 0 ? Number(§5"+§.§8!c§) : Number(param2));
                                                                                          addr128:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr171);
                                                                                 }
                                                                                 §§goto(addr128);
                                                                              }
                                                                              §§goto(addr103);
                                                                           }
                                                                           §§goto(addr128);
                                                                        }
                                                                        addr25:
                                                                        return;
                                                                     }
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                }
                                                §§goto(addr254);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr185);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr222);
                        }
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr105);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §0A§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§"&§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = false;
         if(_loc6_ || this)
         {
            if(!this.§%$§)
            {
               if(_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!_loc5_)
            {
               dispatchEvent(_loc3_);
               loop0:
               while(true)
               {
                  if(!_loc3_.isDefaultPrevented())
                  {
                     loop1:
                     while(true)
                     {
                        §5<§.mouseDown();
                        loop2:
                        while(true)
                        {
                           §§push(this.§-5§(false));
                           loop3:
                           while(!§§pop())
                           {
                              loop4:
                              while(§<Y§.isPlayingReplay())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §<Y§.camera.startDragging(param1,param2);
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(_loc5_)
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §<Y§.resetReplaySpeed();
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         return;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr254);
                                                         }
                                                         §§push(§?!z§(§<Y§.levelObjects.activeObject).canActivateSpecialPower);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr213:
                                                               while(true)
                                                               {
                                                                  §§push(§?!z§(§<Y§.levelObjects.activeObject).specialPowerUsed);
                                                                  addr166:
                                                                  while(_loc5_ && param2)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop11:
                                                                     while(!_loc5_)
                                                                     {
                                                                        §<Y§.activateSpecialPower(this.§3!F§.x,this.§3!F§.y);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr150);
                                                                           }
                                                                           addr115:
                                                                           addr115:
                                                                           loop10:
                                                                           while(!§<Y§.slingshot.canStartDragging(this.§3!F§))
                                                                           {
                                                                              §<Y§.camera.startDragging(param1,param2);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr88);
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §<Y§.slingshot.startDragging();
                                                                              §§goto(addr135);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§<Y§.levelObjects.activeObject is §?!z§);
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr115);
                                                                     }
                                                                     continue loop3;
                                                                     addr228:
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr184);
                                                }
                                                addr150:
                                                return;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr103);
                                       }
                                       addr135:
                                       while(!(_loc5_ && _loc3_))
                                       {
                                          this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                          break loop6;
                                       }
                                       break loop4;
                                       §§goto(addr88);
                                    }
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr213);
                                       }
                                       addr88:
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 this.§3!F§ = §<Y§.screenToBox2D(param1,param2,this.§3!F§);
                                 §§goto(addr228);
                              }
                           }
                           return;
                        }
                     }
                  }
                  addr254:
                  return;
               }
            }
            §§goto(addr235);
         }
         addr31:
      }
      
      protected function §'!o§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = §<Y§.screenToBox2D(param1,param2,null);
         var _loc4_:§"_§;
         if(_loc4_ = §<Y§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            if(!_loc5_)
            {
               §<Y§.objects.removeObject(_loc4_,false);
            }
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§%$§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §5<§.mouseUp();
                     loop2:
                     while(true)
                     {
                        if(this.§"!P§ == §!!`§)
                        {
                           while(!(_loc3_ && param1))
                           {
                              this.changeGameState(LEVEL_STATE_SLINGSHOT);
                              while(true)
                              {
                                 addr49:
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr25);
                                 }
                              }
                              addr161:
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              §§push(!isNaN(param2));
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §<Y§.camera.dragToNewPoint(param1,param2);
                                                         loop13:
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §<Y§.camera.stopDragging();
                                                               if(_loc4_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr109:
                                                               while(true)
                                                               {
                                                                  if(§<Y§.camera.mDragging)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  addr25:
                                                                  return;
                                                               }
                                                            }
                                                            addr169:
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      addr191:
                                                   }
                                                   break;
                                                }
                                                addr154:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr161);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.changeGameState(§4]§);
                                                         addr203:
                                                         while(true)
                                                         {
                                                            if(this.§,%§ < 6000)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§,%§ = 6000;
                                                                  §§goto(addr191);
                                                               }
                                                               addr188:
                                                            }
                                                         }
                                                      }
                                                      addr212:
                                                   }
                                                }
                                                §§goto(addr266);
                                                §§goto(addr169);
                                             }
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(!isNaN(param1));
                                                            continue loop8;
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr29);
                                       }
                                       addr78:
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr154);
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(§<Y§.slingshot.mDragging)
                           {
                              §§goto(addr232);
                           }
                           §§goto(addr109);
                           §§goto(addr266);
                        }
                     }
                  }
               }
               addr274:
               return;
            }
         }
         §§goto(addr232);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§%$§)
            {
               loop0:
               while(true)
               {
                  if(!§<Y§.slingshot.mDragging)
                  {
                     if(§<Y§.camera.mDragging)
                     {
                        loop1:
                        while(true)
                        {
                           §<Y§.camera.dragToNewPoint(param1,param2);
                           loop2:
                           while(true)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 while(true)
                                 {
                                    this.§@"-§ = param1;
                                    do
                                    {
                                       this.§ ?§ = param2;
                                    }
                                    while(!_loc3_);
                                    
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr117:
                                    while(true)
                                    {
                                       §<Y§.slingshot.setNewCoordinatesForRubber(this.§3!F§.x,this.§3!F§.y,false);
                                    }
                                 }
                                 return;
                                 addr41:
                                 addr40:
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       §§goto(addr121);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§3!F§ = §<Y§.screenToBox2D(param1,param2,this.§3!F§);
                                       continue loop3;
                                    }
                                    addr99:
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr99);
               }
            }
            addr121:
            return;
         }
         §§goto(addr40);
      }
      
      public function §4'§() : Point
      {
         return new Point(this.§@"-§,this.§ ?§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+!$§.§[@§(this.§+!$§.getValue() + param1);
         }
         loop0:
         while(true)
         {
            this.§'"%§(§+!§);
            loop1:
            while(this.§"!P§ == §1",§)
            {
               loop2:
               do
               {
                  this.§@!0§ = 2000;
                  while(!_loc2_)
                  {
                     this.§#!o§ = §5P§;
                     if(!(_loc2_ && _loc3_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               continue loop0;
            }
            addr25:
            return;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop() > 1)
               {
                  if(_loc2_)
                  {
                     return Math.floor(this.§+!$§.getValue() / param1) * param1;
                  }
                  addr60:
                  §§push(this.§+!$§.getValue());
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§&?§)
            {
               if(_loc3_ || this)
               {
                  return 0;
               }
            }
         }
         var _loc1_:Number = §&" §.getLevelForId(§&" §.currentLevel).getEagleScore(§<Y§.levelItemManager,§<Y§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%$§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%$§ = param1;
         }
      }
      
      public function §=!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.changeGameState(§["$§,true);
         }
      }
      
      public function §1"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(§<Y§.slingshot.updateScoreForRemainingBirds())
         {
         }
         if(_loc1_ || this)
         {
            this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
         }
      }
   }
}
