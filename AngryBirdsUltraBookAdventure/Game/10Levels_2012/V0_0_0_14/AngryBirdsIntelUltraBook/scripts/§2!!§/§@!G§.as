package §2!!§
{
   import §!!§.LevelManager;
   import §!!X§.§&!E§;
   import §&!h§.§?!K§;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §1!T§.§6!H§;
   import §5i§.§4!]§;
   import §6z§.§+!D§;
   import §]![§.§,u§;
   import §]![§.§4!H§;
   import §]![§.§4J§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!G§ extends § !X§
   {
      
      public static const §9_§:int = 0;
      
      public static const §"!@§:int = 1;
      
      public static const §'!u§:int = 2;
      
      public static const §=!"§:int = 3;
      
      public static const §,!_§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §`§:int = 7;
      
      protected static const §6g§:Number = 0.001;
      
      public static const §[L§:Number = 2000;
      
      public static const §^!N§:Number = 2500;
      
      public static const §break§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9_§ = 0;
            loop0:
            while(true)
            {
               §"!@§ = 1;
               addr159:
               while(true)
               {
                  §'!u§ = 2;
                  addr154:
                  while(true)
                  {
                     §=!"§ = 3;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public var §'9§:int = 0;
      
      protected var §0m§:int = 0;
      
      public var §0Q§:Number;
      
      protected var §7!8§:Number = 0;
      
      protected var §&]§:Boolean = false;
      
      private var §4!v§:Number = 0;
      
      public var §8!D§:Number = 0;
      
      protected var §0!#§:Boolean;
      
      protected var §5! §:Number = 0;
      
      protected var §@!I§:Number = 0;
      
      protected var §8!V§:Boolean = true;
      
      protected var §+V§:§?!K§;
      
      public function §@!G§(param1:§-!7§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+V§ = new §?!K§();
         }
         do
         {
            super(param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§+V§.assign(0);
               while(true)
               {
                  this.§'9§ = -1;
                  addr124:
                  while(true)
                  {
                     this.§0m§ = 0;
                     while(true)
                     {
                        this.§7!8§ = 0;
                        addr112:
                        while(!_loc2_)
                        {
                        }
                     }
                  }
                  addr44:
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        return;
                        addr63:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§&]§ = false;
            loop6:
            while(!_loc2_)
            {
               if(!_loc2_)
               {
                  this.§4B§(§9_§);
                  do
                  {
                     this.§0Q§ = §[L§;
                     loop8:
                     do
                     {
                        §3s§(true);
                        while(!_loc2_)
                        {
                           §+!X§.objects.setDamageEnabled(true);
                           while(_loc1_)
                           {
                              §+!X§.objects.setGroundTextureEnabled(true);
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop8;
                              }
                           }
                        }
                        continue loop6;
                     }
                     while(!_loc1_);
                     
                  }
                  while(_loc2_ && _loc1_);
                  
                  §§goto(addr44);
               }
               §§goto(addr124);
            }
            §§goto(addr112);
         }
         §§goto(addr63);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §+!X§.update(param1,true);
            do
            {
               this.§"!t§(param1);
               do
               {
                  this.§7!$§(param1);
               }
               while(!_loc2_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §"!t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§0m§ != 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §+!X§.camera.adjustManualScale(this.§0m§ > 0,param1 * §6g§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+!X§.clearLevel();
         }
         do
         {
            removeEventListeners();
            do
            {
               this.§'9§ = -1;
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
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
      
      public function §,!g§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§+!X§.camera.mCurrentCameraSliderLocation >= §&!E§.§!%§)
            {
               loop0:
               while(!§+!X§.objects.isWorldAtSleep())
               {
                  if(!(_loc1_ && this))
                  {
                     addr60:
                     §§push(false);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     addr99:
                     return false;
                  }
                  return §§pop();
               }
               §§push(true);
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop();
               }
               §§goto(addr60);
            }
            §§goto(addr99);
         }
         §§goto(addr101);
      }
      
      public function §#!m§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!E§ = §+!X§.camera;
         if(!_loc3_)
         {
            §§push(_loc2_.§4k§);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
               while(§§pop() > §§pop())
               {
               }
               addr24:
               return;
               loop3:
               while(true)
               {
                  §§push(_loc2_.§4k§);
                  if(!(_loc4_ || _loc3_))
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(this.§,!g§())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              addr112:
                              _loc2_.§4k§ = -1;
                           }
                           while(true)
                           {
                              if(§+!X§.slingshot.birdsAvailable)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    _loc2_.§;l§();
                                 }
                                 continue;
                              }
                              addr28:
                              §§goto(addr24);
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.§4k§);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§4k§ = §§pop();
                              continue loop3;
                           }
                           addr115:
                           addr120:
                        }
                        else
                        {
                           _loc2_.§4k§ = §&!E§.§ !?§ / 2;
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr24);
                        }
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           else
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr28);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr24);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr120);
      }
      
      public function §4B§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§ o§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(param1);
                           loop6:
                           while(true)
                           {
                              §§push(§9_§);
                              loop7:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§"!@§);
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§'!u§);
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      loop12:
                                                      while(_loc3_)
                                                      {
                                                         §§push(§=!"§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(param1);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§,!_§);
                                                                  addr301:
                                                                  loop15:
                                                                  while(§§pop() != §§pop())
                                                                  {
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(LEVEL_STATE_VICTORY2_END);
                                                                        loop17:
                                                                        while(§§pop() != §§pop())
                                                                        {
                                                                           §§push(param1);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop8;
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc3_ || param2))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              addr129:
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       addr140:
                                                                                       §6!H§.§[!W§();
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || param1)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break loop11;
                                                                                             }
                                                                                             §6!H§.playSound("LevelFailedPigs1");
                                                                                             loop27:
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   this.§8!D§ = 1200;
                                                                                                   loop28:
                                                                                                   for(; _loc3_; while(true)
                                                                                                   {
                                                                                                      if(_loc4_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr249:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!§+!X§.objects.mMightyEagleAdded)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break loop15;
                                                                                                                     }
                                                                                                                     §§goto(addr192);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr257:
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        §+!X§.camera.goToBirdView();
                                                                                                                        addr267:
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                        addr213:
                                                                                                                     }
                                                                                                                     §§goto(addr23);
                                                                                                                     addr333:
                                                                                                                  }
                                                                                                                  §§goto(addr23);
                                                                                                               }
                                                                                                               §§goto(addr173);
                                                                                                               addr188:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr307:
                                                                                                         addr376:
                                                                                                         while(!(_loc4_ && this))
                                                                                                         {
                                                                                                            this.§4!v§ = §break§;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §+!X§.camera.goToCastleView();
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr23);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr152);
                                                                                                   },§§goto(addr23))
                                                                                                   {
                                                                                                      §+!X§.camera.goToCastleView();
                                                                                                      loop34:
                                                                                                      while(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §+!X§.objects.makePigsSmile(5);
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         addr173:
                                                                                                         addr173:
                                                                                                         §+!X§.slingshot.makeBirdsJumpForJoy();
                                                                                                         addr212:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               addr152:
                                                                                                               §§push(§6!H§);
                                                                                                               §§push("LevelCompletedBirdsMilitary");
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                                               }
                                                                                                               §§pop().playSound(§§pop());
                                                                                                               break;
                                                                                                            }
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         addr362:
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            this.§8!D§ = 5000;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §+!X§.particles.moveTrailsNewToOld();
                                                                                                               addr338:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§'9§ = param1;
                                                                                                                     if(_loc3_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc3_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc3_ || param1)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              addr288:
                                                                                                                              while(!_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               addr192:
                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §+!X§.camera.goToBirdView();
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr23);
                                                                                                   }
                                                                                                   if(!§+!X§.objects.mMightyEagleAdded)
                                                                                                   {
                                                                                                      §§goto(addr257);
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                   addr283:
                                                                                                }
                                                                                                §§goto(addr188);
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       addr384:
                                                                                       §§goto(addr23);
                                                                                       addr384:
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                                 break loop13;
                                                                              }
                                                                              §§goto(addr173);
                                                                           }
                                                                           §§goto(addr23);
                                                                        }
                                                                        this.§8!D§ = 1200;
                                                                        §§goto(addr283);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  while(!_loc4_)
                                                                  {
                                                                     this.§8!D§ = 2000;
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                            }
                                                            break;
                                                            addr229:
                                                            if(!(_loc3_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(param1);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr106:
                                                                     §§push(§`§);
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr301);
                                                                           §§goto(addr106);
                                                                        }
                                                                        §§goto(addr23);
                                                                        addr227:
                                                                     }
                                                                     §§goto(addr114);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  this.§8!D§ = 1200;
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         if(_loc3_ || param1)
                                                         {
                                                            §+!X§.camera.goToCastleView();
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop9;
                                                }
                                                while(!_loc3_)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(_loc4_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                         continue loop0;
                                                      }
                                                      addr431:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                addr359:
                                                while(true)
                                                {
                                                   this.§0!#§ = false;
                                                   §§goto(addr362);
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    while(true)
                                    {
                                       §+!X§.camera.goToBirdView();
                                       §§goto(addr376);
                                    }
                                 }
                              }
                              this.§8!D§ = 2000;
                              §§goto(addr384);
                           }
                        }
                     }
                     return;
                     addr421:
                  }
                  §§goto(addr431);
               }
            }
         }
         §§goto(addr359);
      }
      
      public function §?>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!8§ = Math.max(this.§7!8§,param1);
         }
      }
      
      protected function §-o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§+!X§.slingshot.mSlingShotState == § R§.§6!D§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr50:
                     §§pop();
                     return !§+!X§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §7!$§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:Boolean = false;
         var _loc4_:§4!H§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(this.§0Q§);
            if(!_loc5_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§0Q§ = §§pop();
            while(true)
            {
               §§push(this.§&]§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§7!8§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§7!8§ = §§pop();
                        if(_loc6_ || _loc2_)
                        {
                           §§push(this.§7!8§);
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       this.§0Q§ = 0;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr1119:
                                          while(true)
                                          {
                                             §§push(this.§0Q§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr1127:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ o§(false));
                                                                  addr1112:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                               }
                                                            }
                                                            addr1126:
                                                         }
                                                         while(true)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§0Q§ = §[L§;
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§+!X§.objects.isWorldAtSleep()));
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr1100:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§&]§);
                                                                                                addr1089:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   addr1090:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr1091:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr1093:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§7!8§);
                                                                                                                  addr1073:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr1074:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr1092:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr1099:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(!§+!X§.objects.isPigsAlive());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr967:
                                                                                                               while(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(!§+!X§.objects.mSardineCanAdded);
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            addr966:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(!(_loc5_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§push(this.§-o§());
                                                                                                                           loop59:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 loop60:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§+!X§.objects.mMightyEagleAdded)
                                                                                                                                    {
                                                                                                                                       if(!§+!X§.objects.mSardineCanAdded)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      this.§#!,§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                      §§goto(addr928);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                                addr916:
                                                                                                                                             }
                                                                                                                                             this.§#!,§(§`§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr788:
                                                                                                                                                   loop54:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§ o§(false));
                                                                                                                                                      loop55:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §+!X§.gameOver();
                                                                                                                                                               loop57:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr778:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push(this.§8!D§);
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - param1);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§8!D§ = §§pop();
                                                                                                                                                                     loop93:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§8!D§);
                                                                                                                                                                        loop94:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop7;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc6_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§8!D§ = 0;
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§'9§);
                                                                                                                                                                                          loop97:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§=!"§);
                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §+!X§.updatePigAnimations(param1);
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr714:
                                                                                                                                                                                                         §§push(!§+!X§.camera.isOnCastleView());
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr717:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr718:
                                                                                                                                                                                                               if(_loc5_ && _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop33;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr665:
                                                                                                                                                                                                                  §§push(§+!X§.camera.mCurrentAction == §&!E§.§ f§);
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc6_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr677:
                                                                                                                                                                                                                     addr678:
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr679:
                                                                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§4B§(§"!@§);
                                                                                                                                                                                                                           addr699:
                                                                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr861:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr796:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr861:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§7!8§);
                                                                                                                                                                                                                              addr1048:
                                                                                                                                                                                                                              while(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(6000);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    addr1052:
                                                                                                                                                                                                                                    while(!_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          addr1056:
                                                                                                                                                                                                                                          while(!_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1061:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   while(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(!§+!X§.objects.isPigsAlive());
                                                                                                                                                                                                                                                      §§goto(addr1061);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1127);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                addr1059:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1040:
                                                                                                                                                                                                                                                addr1011:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§&]§);
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.§7!8§ = 6000;
                                                                                                                                                                                                                                                      addr1044:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§&]§ = true;
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1199:
                                                                                                                                                                                                                                                      §§push(!(_loc4_ = §+!X§.activeObject));
                                                                                                                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1355:
                                                                                                                                                                                                                                                                     §§push(_loc4_.§%,§ < _loc4_.§0K§);
                                                                                                                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1365:
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1366:
                                                                                                                                                                                                                                                                           §§push(_loc4_ && _loc4_ is §,u§);
                                                                                                                                                                                                                                                                           if(_loc4_ && _loc4_ is §,u§)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1347:
                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1349:
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 addr1350:
                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1309:
                                                                                                                                                                                                                                                                                    §§push((_loc4_ as §4J§).§6V§);
                                                                                                                                                                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1327:
                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                      addr1328:
                                                                                                                                                                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1298:
                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1300:
                                                                                                                                                                                                                                                                                                                              this.§0!#§ = true;
                                                                                                                                                                                                                                                                                                                              this.§4B§(§,!_§);
                                                                                                                                                                                                                                                                                                                              addr1303:
                                                                                                                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1254:
                                                                                                                                                                                                                                                                                                                                    §+!X§.activeObject = null;
                                                                                                                                                                                                                                                                                                                                    this.§4B§(§,!_§);
                                                                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1252:
                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1373:
                                                                                                                                                                                                                                                                                                                                             break loop2;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1303);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1258:
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1258);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1328);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1342);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1347);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1309);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1327);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1355);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1366);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1350);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1298);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1366);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1327);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1366);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1372);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1371);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1298);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1373);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1366);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1252);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1327);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1365);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1366);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1349);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1085:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop2;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop18;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1099);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1100);
                                                                                                                                                                                                                  addr905:
                                                                                                                                                                                                                  addr733:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1084:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1084:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1085);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr677);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1089);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1388:
                                                                                                                                                                                                   addr1388:
                                                                                                                                                                                                   addr1385:
                                                                                                                                                                                                   addr1388:
                                                                                                                                                                                                   if(this.§8!D§ <= 0)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1401:
                                                                                                                                                                                                         if(§+!X§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1412:
                                                                                                                                                                                                               this.§8!D§ = 1000;
                                                                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop2;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         this.§4B§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                         break loop2;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this.§'9§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§,!_§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr616:
                                                                                                                                                                                                            §§push(this.§'9§);
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§9_§);
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1191:
                                                                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§'9§);
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1199);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1412);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§8!D§);
                                                                                                                                                                                                         continue loop94;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1376:
                                                                                                                                                                                                      §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                      break loop97;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§"!@§);
                                                                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§+!X§.camera.isOnCastleView()));
                                                                                                                                                                                                                  loop115:
                                                                                                                                                                                                                  while(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop117:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§+!X§.camera.mCurrentAction == §&!E§.§ f§);
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr46:
                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc5_ && this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr886);
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1126);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1127);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop1;
                                                                                                                                                                                                                                                                           addr876:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc6_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop20;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1090);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr718);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr857);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr352);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr300);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               continue loop117;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr221:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr894);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr46);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr286);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop115;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop93;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                this.§4B§(§=!"§);
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr114:
                                                                                                                                                                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr142);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr899);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr699);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr861);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr479);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr286);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr158);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1401);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr616);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr474);
                                                                                                                                                                                                                                          §§goto(addr286);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr114);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1178);
                                                                                                                                                                                                                                    addr82:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr221);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr367);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr596);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr297);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1401);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§'9§);
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1183);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1376);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop97;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                                §§goto(addr1412);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1385);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop94;
                                                                                                                                                                                       addr734:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1412);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr876);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr872:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr734);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1388);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr778);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr788:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr788);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr928:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1026);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1044);
                                                                                                                                          }
                                                                                                                                          break loop5;
                                                                                                                                       }
                                                                                                                                       §§goto(addr788);
                                                                                                                                    }
                                                                                                                                    §§goto(addr872);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr788);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr916);
                                                                                                                     }
                                                                                                                     addr914:
                                                                                                                  }
                                                                                                                  §§goto(addr946);
                                                                                                               }
                                                                                                               §§goto(addr1091);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr1025);
                                                                                                               }
                                                                                                               §§goto(addr993);
                                                                                                            }
                                                                                                         }
                                                                                                         addr1022:
                                                                                                      }
                                                                                                      §§goto(addr1083);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1077);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr778);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr1119:
                                       }
                                       break;
                                    }
                                    break loop2;
                                 }
                                 §§goto(addr1119);
                              }
                           }
                        }
                        break;
                     }
                     return;
                  }
                  §§goto(addr1119);
               }
            }
         }
         §§goto(addr195);
      }
      
      protected function §#!,§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§&]§)
            {
               while(true)
               {
                  this.§&]§ = true;
                  addr143:
                  while(true)
                  {
                  }
                  addr48:
                  if(!(_loc4_ && this))
                  {
                     this.§4B§(param1,param2);
                     addr69:
                     if(!_loc3_)
                     {
                        loop5:
                        while(true)
                        {
                           if(!§+!X§.slingshot.mDragging)
                           {
                              loop6:
                              while(§+!X§.objects.isWorldAtSleep())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          return;
                                       }
                                       addr135:
                                       continue;
                                    }
                                    if(_loc4_ && param1)
                                    {
                                       §§goto(addr116);
                                    }
                                    this.§7!8§ = Math.min(this.§7!8§,3500);
                                 }
                                 while(true)
                                 {
                                    break loop6;
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§7!8§);
                                 if(!_loc4_)
                                 {
                                    §§push(0);
                                    if(!(_loc4_ && param2))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc4_ && this)
                                             {
                                                continue;
                                             }
                                             if(!_loc3_)
                                             {
                                                break loop5;
                                             }
                                             §§goto(addr48);
                                          }
                                          §§goto(addr69);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr135);
                                    }
                                    addr134:
                                 }
                                 addr133:
                                 while(true)
                                 {
                                    §§goto(addr134);
                                 }
                              }
                              §§goto(addr19);
                           }
                           addr116:
                           return;
                        }
                        §§goto(addr143);
                     }
                     addr19:
                     return;
                  }
               }
            }
            while(true)
            {
               §§goto(addr133);
               §§goto(addr143);
            }
         }
         §§goto(addr100);
      }
      
      public function § o§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§'9§);
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
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              loop9:
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
                                             §§push(this.§'9§);
                                             loop13:
                                             while(_loc3_)
                                             {
                                                §§push(§`§);
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                }
                                                addr133:
                                                §§push(this.§'9§);
                                                if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr47:
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  loop22:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§pop();
                                                                     loop23:
                                                                     while(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(this.§8!D§ <= 0);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              addr77:
                                                                              return §§pop();
                                                                              addr76:
                                                                           }
                                                                           while(_loc3_ || _loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr133);
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              §§goto(addr203);
                                                                              continue loop23;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr230:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§'9§);
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(!_loc2_)
                                                                        {
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr47);
                                                                              continue loop22;
                                                                           }
                                                                           §§goto(addr76);
                                                                           §§goto(addr85);
                                                                        }
                                                                        addr85:
                                                                        while(!_loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr203:
                                                                                 addr61:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr76);
                                                                                 §§push(!§§pop());
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr76);
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr189);
                                                                  }
                                                                  addr188:
                                                               }
                                                               addr54:
                                                               if(_loc2_ && this)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         §§goto(addr94);
                                                      }
                                                      §§goto(addr77);
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      continue loop8;
                                                   }
                                                   continue loop1;
                                                   addr215:
                                                }
                                                §§goto(addr186);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr188);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr229);
                     }
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      public function §=!=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'9§);
            if(_loc2_ || this)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           §§pop();
                           addr72:
                           return this.§'9§ == §`§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1.delta != 0)
            {
               if(!_loc2_)
               {
                  addr40:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8!V§);
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc2_ && this))
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
                              §§push(!§+!X§.mReadyToRun);
                           }
                        }
                        addr245:
                     }
                     while(true)
                     {
                        addr230:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr231:
                              return;
                           }
                           addr197:
                           while(true)
                           {
                              §§push(Boolean(§+!X§.slingshot.mDragging));
                              addr202:
                              while(true)
                              {
                                 §§push(§§pop());
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr245);
               while(!(_loc2_ && _loc2_))
               {
                  §§pop();
                  §§goto(addr136);
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr224);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §2![§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0m§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(!_loc5_)
         {
            if(!this.§8!V§)
            {
               if(!_loc5_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!_loc5_)
            {
               dispatchEvent(_loc3_);
               loop0:
               while(true)
               {
                  if(_loc3_.isDefaultPrevented())
                  {
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     §+!D§.§,3§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§ o§(false));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              return;
                           }
                           if(§+!X§.isPlayingReplay())
                           {
                              §+!X§.camera.startDragging(param1,param2);
                              if(_loc6_)
                              {
                                 addr267:
                                 §+!X§.resetReplaySpeed();
                                 break;
                              }
                              break;
                           }
                           if(!_loc5_)
                           {
                              §§push(Boolean(§+!X§.activeObject));
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§'9§ == §'!u§);
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                }
                                                addr138:
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr144:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(this.§0!#§);
                                                            if(_loc6_)
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               this.§0!#§ = false;
                                                               break;
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         break;
                                                      }
                                                      _loc4_ = §+!X§.screenToBox2D(param1,param2);
                                                      if(!_loc5_)
                                                      {
                                                         if(!§+!X§.slingshot.canStartDragging(_loc4_))
                                                         {
                                                            §+!X§.camera.startDragging(param1,param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr256:
                                                               §+!X§.slingshot.startDragging();
                                                               this.§4B§(§"!@§);
                                                            }
                                                            else
                                                            {
                                                               addr245:
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §+!X§.activatePowerup();
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         break loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   addr109:
                                                   return;
                                                   addr113:
                                                }
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                              }
                           }
                           §§goto(addr267);
                        }
                        return;
                     }
                  }
               }
               return;
            }
            §§goto(addr113);
         }
         addr27:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_)
         {
            §§push(this.§8!V§);
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §+!D§.§&!X§();
                     if(!(_loc4_ && this))
                     {
                        if(this.§'9§ == §9_§)
                        {
                           if(!_loc4_)
                           {
                              this.§4B§(§"!@§);
                              if(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr60);
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr64:
                                 if(§+!X§.slingshot.mDragging)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       _loc3_ = §+!X§.screenToBox2D(param1,param2);
                                       if(!_loc4_)
                                       {
                                          §+!X§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                       }
                                       do
                                       {
                                          if(!§+!X§.slingshot.canShootTheBird())
                                          {
                                             §+!X§.slingshot.cancelDragging();
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      addr143:
                                                      if(§+!X§.camera.mDragging)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr149:
                                                            §§push(!isNaN(param1));
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  addr200:
                                                                  if(§§pop())
                                                                  {
                                                                     do
                                                                     {
                                                                        §+!X§.camera.dragToNewPoint(param1,param2);
                                                                        break loop0;
                                                                     }
                                                                     while(!(_loc5_ || param2));
                                                                     
                                                                     addr164:
                                                                     return;
                                                                     addr195:
                                                                     addr201:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §+!X§.camera.stopDragging();
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                                  addr177:
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr200);
                                                               §§push(!isNaN(param2));
                                                               addr162:
                                                            }
                                                            break loop0;
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                }
                                                else
                                                {
                                                   addr133:
                                                }
                                                this.§4B§(§'!u§);
                                             }
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             §+!X§.slingshot.shoot();
                                          }
                                          §§goto(addr133);
                                       }
                                       while(!_loc5_);
                                       
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr64);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr177);
                  }
                  §§goto(addr188);
               }
               addr60:
               return;
            }
            §§goto(addr200);
         }
         §§goto(addr149);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && param1))
         {
            if(!this.§8!V§)
            {
               if(_loc5_ || param2)
               {
                  return;
               }
            }
            if(§+!X§.slingshot.mDragging)
            {
               if(_loc5_)
               {
                  _loc3_ = §+!X§.screenToBox2D(param1,param2);
                  if(_loc5_ || this)
                  {
                     §+!X§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc4_)
                     {
                        addr106:
                        this.§5! § = param1;
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr114);
                     }
                     this.§@!I§ = param2;
                  }
                  addr114:
                  return;
               }
            }
            else if(§+!X§.camera.mDragging)
            {
               if(_loc5_)
               {
                  §+!X§.camera.dragToNewPoint(param1,param2);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §?!P§() : Point
      {
         return new Point(this.§5! §,this.§@!I§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+V§.assign(this.§+V§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§?>§(§^!N§);
               while(this.§'9§ == §,!_§)
               {
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     this.§8!D§ = 2000;
                     while(true)
                     {
                        this.§4!v§ = §break§;
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr25:
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function getScore() : int
      {
         return this.§+V§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!§4!]§.§8C§.objects.mMightyEagleAdded)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(LevelManager.§5!c§(LevelManager.§^!F§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr54);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§8!V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!V§ = param1;
         }
      }
   }
}
