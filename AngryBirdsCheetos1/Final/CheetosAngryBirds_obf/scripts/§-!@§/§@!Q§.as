package §-!@§
{
   import § !G§.§`e§;
   import §!X§.§#K§;
   import §!X§.§86§;
   import §#!F§.§78§;
   import §,h§.§+0§;
   import §,h§.§4!9§;
   import §,h§.§6!2§;
   import §?h§.§<I§;
   import §?m§.§7?§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!Q§ extends §=0§
   {
      
      public static const §2!,§:int = 0;
      
      public static const §79§:int = 1;
      
      public static const §`d§:int = 2;
      
      public static const §^e§:int = 3;
      
      public static const §>!=§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5;§:int = 7;
      
      protected static const §+!6§:Number = 0.001;
      
      public static const §+M§:Number = 2000;
      
      public static const §2!9§:Number = 2500;
      
      public static const §@l§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2!,§ = 0;
            loop0:
            while(true)
            {
               §79§ = 1;
               loop1:
               while(true)
               {
                  §`d§ = 2;
                  loop2:
                  while(true)
                  {
                     §^e§ = 3;
                     loop3:
                     while(!_loc1_)
                     {
                        §>!=§ = 4;
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           continue loop2;
                           addr46:
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           §@l§ = 5;
                           addr53:
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              loop9:
                              while(!_loc1_)
                              {
                                 §+M§ = 2000;
                                 loop10:
                                 while(!(_loc1_ && §@!Q§))
                                 {
                                    §2!9§ = 2500;
                                    while(true)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue loop10;
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr46);
                                       §§goto(addr53);
                                    }
                                    while(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(§§findproperty(§+!6§));
                                          §§push(§<I§.§?q§);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() / 100);
                                          }
                                          §§pop().§+!6§ = §§pop();
                                          continue loop9;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    §5;§ = 7;
                                    §§goto(addr92);
                                    §§goto(addr58);
                                 }
                                 addr58:
                              }
                              continue loop2;
                           }
                           §§goto(addr37);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public var §8!Y§:int = 0;
      
      protected var §'!Z§:int = 0;
      
      public var §&4§:Number;
      
      protected var §6!G§:Number = 0;
      
      protected var §9O§:Boolean = false;
      
      private var §-![§:Number = 0;
      
      public var §@R§:Number = 0;
      
      protected var §&H§:Boolean;
      
      protected var §!!$§:Number = 0;
      
      protected var §`B§:Number = 0;
      
      protected var § "§:Boolean = true;
      
      protected var §4!2§:§78§;
      
      public function §@!Q§(param1:§86§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!2§ = new §78§();
            do
            {
               super(param1);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§4!2§.§7!X§(0);
               while(true)
               {
                  this.§8!Y§ = -1;
                  while(_loc2_)
                  {
                     this.§'!Z§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§6!G§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§9O§ = false;
                           while(_loc2_)
                           {
                              this.§function§(§2!,§);
                              while(true)
                              {
                                 this.§&4§ = §+M§;
                                 continue loop4;
                              }
                              loop9:
                              while(!(_loc1_ && _loc1_))
                              {
                                 §>`§.objects.setDamageEnabled(true);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop9;
                                    addr55:
                                    §>`§.objects.setGroundTextureEnabled(true);
                                    if(!_loc1_)
                                    {
                                       addr31:
                                       if(_loc2_ || this)
                                       {
                                          return;
                                          addr38:
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr96);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&!#§(true);
            §§goto(addr70);
         }
         §§goto(addr38);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §>`§.update(param1,true);
            while(true)
            {
               this.§]]§(param1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§8!]§(param1);
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
      
      private function §]]§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§'!Z§ != 0)
            {
               if(_loc2_)
               {
                  §>`§.camera.adjustManualScale(this.§'!Z§ > 0,param1 * §+!6§);
                  addr39:
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>`§.clearLevel();
            do
            {
               removeEventListeners();
               do
               {
                  this.§8!Y§ = -1;
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.addEventListeners();
         }
      }
      
      public function §1!V§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§>`§.camera.mCurrentCameraSliderLocation >= §<I§.§+m§)
            {
               loop0:
               while(!§>`§.objects.isWorldAtSleep())
               {
                  if(!_loc1_)
                  {
                     if(_loc1_ && this)
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§push(false);
                     if(!(_loc1_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     addr84:
                     return false;
                  }
                  return §§pop();
               }
               §§push(true);
               if(!_loc1_)
               {
                  return §§pop();
               }
               §§goto(addr52);
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      public function §0!A§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<I§ = §>`§.camera;
         if(_loc4_ || this)
         {
            §§push(_loc2_.§"E§);
            loop0:
            while(true)
            {
               §§push(0);
               addr109:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr29:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§"E§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§"E§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §function§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§!!D§(false));
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop19:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc3_)
                           {
                              if(_loc3_ && param2)
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           loop2:
                           while(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(param1);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§2!,§);
                                    loop5:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§79§);
                                          loop7:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§`d§);
                                                addr362:
                                                loop9:
                                                while(§§pop() != §§pop())
                                                {
                                                   §§push(param1);
                                                   while(_loc4_)
                                                   {
                                                      §§push(§^e§);
                                                      loop11:
                                                      while(§§pop() != §§pop())
                                                      {
                                                         §§push(param1);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§>!=§);
                                                            addr316:
                                                            while(§§pop() != §§pop())
                                                            {
                                                               §§push(param1);
                                                               continue loop12;
                                                            }
                                                            addr317:
                                                            addr320:
                                                            this.§@R§ = 2000;
                                                            addr320:
                                                            addr385:
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               this.§-![§ = §@l§;
                                                               addr308:
                                                               if(_loc4_)
                                                               {
                                                                  §>`§.camera.goToCastleView();
                                                                  addr24:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     this.§8!Y§ = param1;
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(!(_loc3_ && param1))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop9;
                                                                                 }
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 §>`§.camera.goToBirdView();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc4_ || this))
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §>`§.slingshot.makeBirdsJumpForJoy();
                                                                                             §!!>§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                addr293:
                                                                                                this.§@R§ = 1200;
                                                                                                addr296:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!§>`§.objects.mMightyEagleAdded)
                                                                                                   {
                                                                                                      addr276:
                                                                                                      §>`§.camera.goToBirdView();
                                                                                                      addr279:
                                                                                                   }
                                                                                                   addr232:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr344:
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             if(_loc4_ || param2)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              addr373:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§@R§ = 5000;
                                                                              addr184:
                                                                           }
                                                                           if(_loc3_ && param2)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           §>`§.particles.moveTrailsNewToOld();
                                                                           §§goto(addr344);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §>`§.objects.makePigsSmile(5);
                                                                                          addr47:
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             this.§@R§ = 1200;
                                                                                             while(!§>`§.objects.mMightyEagleAdded)
                                                                                             {
                                                                                                §§goto(addr184);
                                                                                             }
                                                                                             §§goto(addr138);
                                                                                          }
                                                                                          addr260:
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr178);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §!!>§.playSound("LevelFailedPigs1");
                                                                                       loop29:
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          this.§@R§ = 1200;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      addr339:
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr270);
                                                                                                }
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                addr133:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr138);
                                                                              }
                                                                              §§goto(addr77);
                                                                           }
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     §§goto(addr47);
                                                                  }
                                                                  addr303:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr24);
                                                                  }
                                                                  addr24:
                                                                  addr393:
                                                               }
                                                               break loop11;
                                                            }
                                                            §§goto(addr24);
                                                         }
                                                      }
                                                      §>`§.camera.goToCastleView();
                                                      §§goto(addr339);
                                                      if(!(_loc4_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     §§push(param1);
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr335);
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      continue loop19;
                                                   }
                                                   this.§&H§ = false;
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr344);
                                             }
                                          }
                                          §>`§.camera.goToBirdView();
                                          §§goto(addr385);
                                       }
                                    }
                                    this.§@R§ = 2000;
                                    §§goto(addr393);
                                 }
                              }
                           }
                           return;
                        }
                     }
                     addr430:
                  }
                  §§goto(addr408);
               }
            }
            §§goto(addr430);
         }
         §§goto(addr24);
      }
      
      public function §2![§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!G§ = Math.max(this.§6!G§,param1);
         }
      }
      
      protected function §5#§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§>`§.slingshot.mSlingShotState == §#K§.§ !^§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr55:
                     §§pop();
                     return !§>`§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §8!]§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§+0§ = null;
         if(!(_loc5_ && this))
         {
            §§push(this);
            §§push(this.§&4§);
            if(!_loc5_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§&4§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§9O§);
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§6!G§);
                        if(_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§6!G§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§6!G§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§&4§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(_loc6_ || this)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(this.§!!D§(false));
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               while(true)
                                                               {
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§pop();
                                                                  loop100:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§>`§.objects.mMightyEagleAdded);
                                                                     while(true)
                                                                     {
                                                                        loop102:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(this.§5#§());
                                                                              loop123:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop61:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§>`§.objects.mMightyEagleAdded)
                                                                                       {
                                                                                          if(§>`§.objects.mSardineCanAdded)
                                                                                          {
                                                                                             addr729:
                                                                                             loop55:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§!!D§(false));
                                                                                                loop56:
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §>`§.gameOver();
                                                                                                               addr747:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr363:
                                                                                                               if(_loc5_ && _loc2_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr1352:
                                                                                                               return;
                                                                                                               addr221:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§@R§);
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() - param1);
                                                                                                            }
                                                                                                            §§pop().§@R§ = §§pop();
                                                                                                            loop69:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§@R§);
                                                                                                               loop70:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  loop71:
                                                                                                                  while(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        loop72:
                                                                                                                        for(; _loc6_; if(!(_loc6_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },§§goto(addr299),§§push(§>`§.camera.mCurrentAction == §<I§.§&!F§))
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              this.§@R§ = 0;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr676:
                                                                                                                                 loop74:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8!Y§);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§^e§);
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             §§push(this.§8!Y§);
                                                                                                                                             loop75:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§>!=§);
                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§8!Y§);
                                                                                                                                                      loop76:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§2!,§);
                                                                                                                                                         addr227:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop74;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop61;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§@R§);
                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr254:
                                                                                                                                                                              if(!(_loc6_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc6_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr274:
                                                                                                                                                                                          this.§function§(§79§);
                                                                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1129:
                                                                                                                                                                                             §§push(!(_loc4_ = §>`§.activeObject));
                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1290:
                                                                                                                                                                                                            if(_loc4_.§,!&§ < _loc4_.§+?§)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1300:
                                                                                                                                                                                                                  §§push(Boolean(_loc4_));
                                                                                                                                                                                                                  if(Boolean(_loc4_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1301:
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     addr1270:
                                                                                                                                                                                                                     addr1302:
                                                                                                                                                                                                                     §§push(Boolean(_loc4_ is §6!2§));
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1274:
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1277:
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr1280:
                                                                                                                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push((_loc4_ as §4!9§).§;J§);
                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1244:
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr1256:
                                                                                                                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1212:
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1214:
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§&H§ = true;
                                                                                                                                                                                                                                                                           this.§function§(§>!=§);
                                                                                                                                                                                                                                                                           addr1172:
                                                                                                                                                                                                                                                                           §>`§.activeObject = null;
                                                                                                                                                                                                                                                                           addr1219:
                                                                                                                                                                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§function§(§>!=§);
                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1172);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1303:
                                                                                                                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1219);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1172);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1214);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1190:
                                                                                                                                                                                                                                                                           §§goto(addr1190);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1256);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1172);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1270);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1244);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1290);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1280);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1301);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1277);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1212);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1274);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1244);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1302);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1290);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1212);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1300);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1274);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1301);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1303);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1301);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1290);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1300);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1301);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1352);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr116:
                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr566:
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§>`§.objects.hasBirds()));
                                                                                                                                                                                             loop84:
                                                                                                                                                                                             while(_loc6_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr582:
                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr589:
                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                   loop81:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§&4§ = 0;
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                            addr1083:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                            addr496:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop123;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  loop87:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr503:
                                                                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                addr528:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc6_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(this.§-![§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      addr467:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                         addr468:
                                                                                                                                                                                                                                                         while(!_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop84;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop87;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr527:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§7?§.§4!H§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§function§(§79§);
                                                                                                                                                                                                                                                         addr435:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr371:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr376:
                                                                                                                                                                                                                                                                     §§push(!§>`§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr384:
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop72;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr474:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop100;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§@R§ = 2000;
                                                                                                                                                                                                                                                                                       loop80:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§&4§ = 0;
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                                                                §§push(this.§-![§);
                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().§-![§ = §§pop();
                                                                                                                                                                                                                                                                                                continue loop80;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr462:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr623:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§function§(§79§);
                                                                                                                                                                                                                                                                                                if(_loc5_ && param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop80;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr623:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1347:
                                                                                                                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§6!G§ = 15000;
                                                                                                                                                                                                                                                                                       addr904:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          this.§9O§ = true;
                                                                                                                                                                                                                                                                                          addr887:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr861:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1347);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc6_ || this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop102;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr614:
                                                                                                                                                                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr621);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                                                                                                                                                                          break loop72;
                                                                                                                                                                                                                                                                                          §§goto(addr614);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1049:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr817);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1352);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr602:
                                                                                                                                                                                                                                                                           addr385:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr326:
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop81;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr690:
                                                                                                                                                                                                                                                                                          §>`§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                                          addr646:
                                                                                                                                                                                                                                                                                          §§push(!§>`§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                addr1043:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§9O§);
                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                                                                                                                      addr1026:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1027);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1042:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop81;
                                                                                                                                                                                                                                                                                          addr693:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       this.§function§(§79§);
                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr363);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1326:
                                                                                                                                                                                                                                                                                          if(§>`§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§@R§ = 1000;
                                                                                                                                                                                                                                                                                                addr1332:
                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1352);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1347);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§function§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                                                                             §§goto(addr1352);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr462);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr446);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1318:
                                                                                                                                                                                                                                                                              if(this.§@R§ <= 0)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1326);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1352);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr221);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1352);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr901);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr861);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr410:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr923);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr432:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr410);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr431:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr474);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr851);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr812);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr666);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr513:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1013);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr945);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr790);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr868);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr693);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§goto(addr1021);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr590:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr910);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr675:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr602);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr590);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §>`§.updatePigAnimations(param1);
                                                                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr371);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1332);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr467);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1318);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr554:
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop70;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1000);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr466);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1318);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr274);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8!Y§);
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop76;
                                                                                                                                                               }
                                                                                                                                                               addr1307:
                                                                                                                                                               addr1123:
                                                                                                                                                               §§push(§`d§);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr1126:
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8!Y§);
                                                                                                                                                                     break loop74;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1129);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1326);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1318);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1347);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1352);
                                                                                                                                                         }
                                                                                                                                                         continue loop75;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1126);
                                                                                                                                             }
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr554);
                                                                                                                                                §§push(this.§@R§);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr747);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr690);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1126);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1307);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1061);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1039);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr676);
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1028);
                                                                                                   }
                                                                                                   §§goto(addr993);
                                                                                                }
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§goto(addr1025);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§6!G§ = 6000;
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   this.§9O§ = true;
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr861);
                                                                                                      }
                                                                                                      §§goto(addr1058);
                                                                                                   }
                                                                                                   §§goto(addr1129);
                                                                                                }
                                                                                                §§goto(addr1318);
                                                                                             }
                                                                                             continue loop3;
                                                                                             addr729:
                                                                                          }
                                                                                          §§goto(addr755);
                                                                                       }
                                                                                       §§goto(addr812);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr748);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr729);
                                                                              }
                                                                           }
                                                                           §§goto(addr826);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr1057);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    addr1062:
                                 }
                                 §§goto(addr1083);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr1062);
                  while(_loc6_ || param1)
                  {
                     §§goto(addr899);
                     §§push(Boolean(§§pop()));
                  }
               }
            }
         }
         §§goto(addr594);
      }
      
      protected function §5!X§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§9O§)
            {
               while(true)
               {
                  this.§9O§ = true;
                  addr144:
                  while(true)
                  {
                  }
               }
               addr141:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §>`§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  addr125:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        break loop3;
                     }
                     addr107:
                     loop5:
                     while(!§>`§.slingshot.mDragging)
                     {
                        while(true)
                        {
                           if(§>`§.objects.isWorldAtSleep())
                           {
                              if(_loc4_ || param1)
                              {
                                 if(_loc3_ && param2)
                                 {
                                    break loop5;
                                 }
                                 this.§6!G§ = Math.min(this.§6!G§,3500);
                              }
                              while(_loc4_ || param2)
                              {
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    addr20:
                                    return;
                                 }
                                 §§goto(addr141);
                              }
                              addr136:
                              return;
                              addr99:
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     if(_loc4_)
                     {
                        return;
                     }
                     continue loop2;
                  }
               }
               §§goto(addr136);
            }
         }
         §§goto(addr106);
      }
      
      public function §!!D§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§8!Y§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§8!Y§);
                                 while(_loc2_)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr29:
                                    if(_loc3_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr56:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr63:
                                                if(_loc2_ || this)
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr78:
                                                   §§push(!§§pop());
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr82:
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8!Y§);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(§5;§);
                                                                              addr175:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    loop20:
                                                                                    while(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_ && param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc3_ && _loc2_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop23:
                                                                                                   while(_loc2_ || param1)
                                                                                                   {
                                                                                                      §§push(this.§@R§ <= 0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               break;
                                                                                                               addr112:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                   }
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      §§goto(addr63);
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§goto(addr56);
                                                                                                }
                                                                                                addr162:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr184);
                                                                                                   }
                                                                                                   addr183:
                                                                                                }
                                                                                             }
                                                                                             addr182:
                                                                                          }
                                                                                          §§goto(addr89);
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr182);
                                                                  }
                                                               }
                                                               §§goto(addr82);
                                                            }
                                                            addr193:
                                                         }
                                                         addr89:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr78);
                                    }
                                    §§goto(addr175);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr193);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function §-2§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§8!Y§);
            if(_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr68:
                           §§pop();
                           return this.§8!Y§ == §5;§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.delta != 0)
            {
               if(_loc2_ || this)
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§ "§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr245:
                        while(true)
                        {
                           §§pop();
                           addr246:
                           while(true)
                           {
                              §§push(!§>`§.mReadyToRun);
                           }
                        }
                        addr245:
                     }
                     while(true)
                     {
                        loop3:
                        while(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§>`§.slingshot.mDragging));
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(Boolean(§>`§.camera.mDragging));
                                             if(_loc3_ || param1)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            loop10:
                                                            for(; _loc3_; while(true)
                                                            {
                                                               if(_loc2_ && param1)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr170);
                                                            },§§goto(addr201))
                                                            {
                                                               §§push(this.§8!Y§);
                                                               while(true)
                                                               {
                                                                  §§push(§^e§);
                                                                  addr126:
                                                                  addr170:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              if(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(§§pop() == §§pop());
                                                                                          addr77:
                                                                                          continue loop10;
                                                                                          if(_loc2_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(!§>`§.isPlayingReplay())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         §>`§.camera.adjustManualScale(param1);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §>`§.changeReplaySpeed(param1);
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr25:
                                                                                             return;
                                                                                             addr89:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr201:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr205:
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                      addr205:
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             addr201:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr89);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr200:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr201);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§push(this.§8!Y§);
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(§79§);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§goto(addr77);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr126);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr199:
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr25);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§8!Y§);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr245);
                                                }
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr246);
                                       }
                                    }
                                    §§goto(addr192);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr245);
            }
         }
         §§goto(addr107);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §@!3§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'!Z§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(!(_loc5_ && _loc3_))
         {
            if(!this.§ "§)
            {
               if(_loc6_)
               {
                  §§goto(addr32);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc6_)
            {
               dispatchEvent(_loc3_);
               loop0:
               do
               {
                  if(!_loc3_.isDefaultPrevented())
                  {
                     loop1:
                     while(true)
                     {
                        §`e§.§`i§();
                        if(_loc6_)
                        {
                           §§push(this.§!!D§(false));
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(!§>`§.isPlayingReplay())
                                 {
                                    loop4:
                                    while(!_loc5_)
                                    {
                                       §§push(Boolean(§>`§.activeObject));
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop6:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr129:
                                                            addr85:
                                                            while(true)
                                                            {
                                                               §§push(this.§&H§);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr143:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr156:
                                                                           §§push(this.§8!Y§ == §`d§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr142:
                                                                  }
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                            }
                                                            while(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §>`§.activatePowerup();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        return;
                                                                        addr61:
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue;
                                                                  continue;
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         addr128:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  this.§&H§ = false;
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = §>`§.screenToBox2D(param1,param2);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(§>`§.slingshot.canStartDragging(_loc4_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §>`§.slingshot.startDragging();
                                                                  }
                                                                  this.§function§(§79§);
                                                                  addr229:
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                                  addr203:
                                                               }
                                                               else
                                                               {
                                                                  §>`§.camera.startDragging(param1,param2);
                                                               }
                                                               return;
                                                            }
                                                            if(true)
                                                            {
                                                               break loop3;
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr108:
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §>`§.camera.startDragging(param1,param2);
                                 if(_loc6_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr156);
                           }
                        }
                        break;
                     }
                     §>`§.resetReplaySpeed();
                  }
                  continue;
                  addr249:
                  return;
               }
               while(!_loc6_);
               
               return;
            }
            §§goto(addr61);
         }
         addr32:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§ "§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     return;
                  }
                  addr220:
                  §>`§.camera.dragToNewPoint(param1,param2);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §`e§.§+z§();
                     if(!(_loc5_ && param2))
                     {
                        if(this.§8!Y§ == §2!,§)
                        {
                           if(_loc4_)
                           {
                              this.§function§(§79§);
                              if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr73:
                                 if(§>`§.slingshot.mDragging)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc3_ = §>`§.screenToBox2D(param1,param2);
                                       if(!(_loc5_ && param2))
                                       {
                                          §>`§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                       }
                                       for(; !§>`§.slingshot.canShootTheBird(); if(!(_loc4_ || param1))
                                       {
                                          break;
                                       },if(_loc5_)
                                       {
                                          continue;
                                       },if(false)
                                       {
                                          §§goto(addr127);
                                       },§§goto(addr152))
                                       {
                                          §>`§.slingshot.cancelDragging();
                                          if(!(_loc5_ && this))
                                          {
                                             continue;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   addr127:
                                                   while(true)
                                                   {
                                                      this.§function§(§`d§);
                                                      continue loop4;
                                                   }
                                                }
                                                addr142:
                                             }
                                             addr152:
                                             if(§>`§.camera.mDragging)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr158:
                                                   §§push(!isNaN(param1));
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr202:
                                                               if(!isNaN(param2))
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§goto(addr220);
                                                                  }
                                                                  break loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  §>`§.camera.stopDragging();
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr183:
                                                                     return;
                                                                     addr197:
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr186:
                                                               addr181:
                                                            }
                                                            break loop0;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                       §>`§.slingshot.shoot();
                                       §§goto(addr142);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr158);
                           }
                           break;
                        }
                        §§goto(addr73);
                     }
                     break;
                  }
               }
               while(true)
               {
                  §§goto(addr186);
               }
               §§goto(addr183);
            }
            §§goto(addr202);
         }
         §§goto(addr181);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_ || this)
         {
            if(!this.§ "§)
            {
               if(_loc5_)
               {
                  return;
               }
               addr56:
               _loc3_ = §>`§.screenToBox2D(param1,param2);
               if(_loc5_)
               {
                  §>`§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                  if(_loc5_)
                  {
                     addr86:
                     this.§!!$§ = param1;
                     if(!(_loc4_ && param1))
                     {
                        addr106:
                        this.§`B§ = param2;
                     }
                  }
                  return;
               }
               §§goto(addr106);
            }
            else
            {
               addr40:
               if(§>`§.slingshot.mDragging)
               {
                  if(_loc5_)
                  {
                     §§goto(addr56);
                  }
                  else
                  {
                     addr81:
                     §>`§.camera.dragToNewPoint(param1,param2);
                  }
               }
               else if(§>`§.camera.mDragging)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr81);
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr40);
      }
      
      public function §#!9§() : Point
      {
         return new Point(this.§!!$§,this.§`B§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4!2§.§7!X§(this.§4!2§.getValue() + param1);
         }
         loop0:
         while(true)
         {
            this.§2![§(§2!9§);
            while(this.§8!Y§ == §>!=§)
            {
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     this.§@R§ = 2000;
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr25:
            return;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4!2§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§7?§.§4!H§.objects.mMightyEagleAdded)
            {
               if(_loc3_ || _loc2_)
               {
                  addr30:
                  §§push(0);
                  if(_loc3_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  §§push(§7e§.§`!7§(§7e§.§^"§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr49);
         }
         §§goto(addr30);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§ "§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ "§ = param1;
         }
      }
   }
}
