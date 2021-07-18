package §;'§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §'@§.§^J§;
   import §+!o§.§6!>§;
   import §+!o§.§>G§;
   import §+!o§.§[f§;
   import §+!o§.§]"5§;
   import §-!n§.§5!U§;
   import §5!V§.§!w§;
   import §5!V§.§[!6§;
   import §=!#§.§`"=§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §`!V§ extends §"!&§
   {
      
      public static const §-R§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §&!V§:int = 2;
      
      public static const §'U§:int = 3;
      
      public static const §%!_§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §51§:int = 7;
      
      protected static const §7!R§:Number = 0.001;
      
      public static const §,!a§:Number = 2000;
      
      public static const §!!'§:Number = 2500;
      
      public static const §3!G§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`!V§)
         {
            §-R§ = 0;
            loop0:
            while(true)
            {
               LEVEL_STATE_SLINGSHOT = 1;
               loop1:
               while(true)
               {
                  §&!V§ = 2;
                  loop2:
                  while(true)
                  {
                     §'U§ = 3;
                     while(true)
                     {
                        §%!_§ = 4;
                        loop4:
                        while(!(_loc2_ && _loc1_))
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 LEVEL_STATE_VICTORY2_END = 6;
                                 loop7:
                                 while(_loc1_ || §`!V§)
                                 {
                                    §51§ = 7;
                                    while(true)
                                    {
                                       if(_loc1_ || §`!V§)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                       addr51:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §3!G§ = 5;
                                          addr58:
                                          if(!(_loc2_ && §`!V§))
                                          {
                                             return;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc2_ && §`!V§)
                                             {
                                                while(!_loc2_)
                                                {
                                                   §!!'§ = 2500;
                                                   continue loop11;
                                                }
                                                while(!_loc2_)
                                                {
                                                   §,!a§ = 2000;
                                                   §§goto(addr63);
                                                }
                                                addr63:
                                                continue loop1;
                                                addr90:
                                             }
                                             §§goto(addr51);
                                          }
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public var §`""§:int = 0;
      
      protected var § K§:int = 0;
      
      public var §`"1§:Number;
      
      protected var §%"7§:Number = 0;
      
      protected var §>!Y§:Boolean = false;
      
      private var §-"0§:Number = 0;
      
      public var §<^§:Number = 0;
      
      protected var §&!,§:Boolean;
      
      protected var §3!_§:Number = 0;
      
      protected var §6!g§:Number = 0;
      
      protected var §-6§:Boolean = true;
      
      protected var §?!p§:§^J§;
      
      public function §`!V§(param1:§!w§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!p§ = new §^J§();
         }
         do
         {
            super(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               this.§?!p§.§&!Y§(0);
               loop1:
               while(true)
               {
                  this.§`""§ = -1;
                  while(true)
                  {
                     this.§ K§ = 0;
                     addr123:
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§""<§(§-R§);
                        continue loop1;
                     }
                  }
               }
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
         while(true)
         {
            this.§%"7§ = 0;
            §§goto(addr135);
            §§goto(addr99);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §9q§.update(param1,true);
            do
            {
               this.§0""§(param1);
               do
               {
                  this.§#o§(param1);
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §0""§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§ K§ != 0)
            {
               if(_loc2_ || _loc3_)
               {
                  §9q§.camera.adjustManualScale(this.§ K§ > 0,param1 * §7!R§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9q§.clearLevel();
         }
         while(true)
         {
            removeEventListeners();
            while(_loc1_)
            {
               this.§`""§ = -1;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.addEventListeners();
         }
      }
      
      public function §`!o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§9q§.camera.mCurrentCameraSliderLocation >= §`"=§.§4!O§)
            {
               while(!§9q§.objects.isWorldAtSleep())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr51);
                  }
                  if(_loc1_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr79:
                     return false;
                  }
               }
               §§push(true);
               if(!_loc1_)
               {
                  addr51:
                  return false;
               }
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr79);
            }
         }
         §§goto(addr79);
      }
      
      public function §9Q§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`"=§ = §9q§.camera;
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_.§<!z§);
            loop0:
            while(true)
            {
               §§push(0);
               addr116:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     return;
                  }
                  addr28:
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§<!z§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§<!z§ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §""<§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§"!g§(false));
            if(!(_loc4_ && param2))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop17:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc4_)
                           {
                              loop0:
                              while(!§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§-R§);
                                       loop3:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop4:
                                          for(; !_loc4_; if(_loc4_ && param2)
                                          {
                                             continue;
                                          },§§push(§51§),if(_loc3_)
                                          {
                                             if(!(_loc3_ || param2))
                                             {
                                                §§goto(addr378);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §5!U§.§9&§();
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr359);
                                                      addr402:
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr359);
                                          },§§goto(addr234))
                                          {
                                             §§push(LEVEL_STATE_SLINGSHOT);
                                             loop5:
                                             for(; §§pop() != §§pop(); while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§goto(addr282);
                                                      §§push(param1);
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             },§§goto(addr340))
                                             {
                                                §§push(param1);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§&!V§);
                                                   addr378:
                                                   loop7:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         §§push(§'U§);
                                                         addr356:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               break;
                                                            }
                                                            addr331:
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               §§push(§%!_§);
                                                               continue loop5;
                                                            }
                                                         }
                                                         addr359:
                                                         addr362:
                                                         §9q§.camera.goToCastleView();
                                                         loop19:
                                                         while(true)
                                                         {
                                                            this.§`""§ = param1;
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     addr251:
                                                                     while(true)
                                                                     {
                                                                        this.§<^§ = 1200;
                                                                        addr254:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(!§9q§.objects.mMightyEagleAdded)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             §9q§.camera.goToBirdView();
                                                                                             break;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr394:
                                                                                       addr293:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          this.§<^§ = 1200;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc4_ && param2))
                                                                                             {
                                                                                                if(!§9q§.objects.mMightyEagleAdded)
                                                                                                {
                                                                                                   addr274:
                                                                                                   §9q§.camera.goToBirdView();
                                                                                                   addr277:
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr372:
                                                                                             §9q§.particles.moveTrailsNewToOld();
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr340:
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                this.§<^§ = 2000;
                                                                                                this.§-"0§ = §3!G§;
                                                                                                §9q§.camera.goToCastleView();
                                                                                                addr314:
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                addr326:
                                                                                                addr350:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    addr202:
                                                                                    if(_loc3_ || param2)
                                                                                    {
                                                                                       §9q§.slingshot.makeBirdsJumpForJoy();
                                                                                       addr184:
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                    addr190:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        addr165:
                                                                        §5!U§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     loop24:
                                                                     for(; _loc3_; this.§<^§ = 1200)
                                                                     {
                                                                        if(!(_loc3_ || param1))
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        §9q§.camera.goToCastleView();
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr58:
                                                                                    break loop5;
                                                                                 }
                                                                                 §9q§.objects.makePigsSmile(5);
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr142:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                    addr142:
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr70);
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         addr382:
                                                         this.§<^§ = 5000;
                                                         §§goto(addr372);
                                                      }
                                                   }
                                                   this.§&!,§ = false;
                                                   §§goto(addr382);
                                                   addr284:
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(LEVEL_STATE_VICTORY2_END);
                                                   loop13:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(param1);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param1);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr251);
                                                               addr234:
                                                            }
                                                            break;
                                                         }
                                                         addr282:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr284);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr355);
                                                            }
                                                         }
                                                         continue loop6;
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr293);
                                                }
                                             }
                                             §9q§.camera.goToBirdView();
                                             §§goto(addr394);
                                          }
                                          continue loop2;
                                       }
                                       this.§<^§ = 2000;
                                       §§goto(addr402);
                                    }
                                 }
                              }
                              return;
                              addr410:
                           }
                           break;
                        }
                     }
                     addr439:
                  }
                  §§goto(addr410);
               }
            }
            §§goto(addr439);
         }
         §§goto(addr300);
      }
      
      public function §8"5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<^§ = 2000;
         }
         loop0:
         do
         {
            this.§>!Y§ = false;
            while(true)
            {
               this.§%"7§ = 2000;
               while(!_loc2_)
               {
                  this.§""<§(§`!V§.LEVEL_STATE_SLINGSHOT,true);
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §-"7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%"7§ = Math.max(this.§%"7§,param1);
         }
      }
      
      protected function §5!c§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§9q§.slingshot.mSlingShotState == §[!6§.§[B§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr61:
                     §§pop();
                     return !§9q§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §#o§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§]"5§ = null;
         if(!(_loc6_ && this))
         {
            §§push(this);
            §§push(this.§`"1§);
            if(_loc5_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§`"1§ = §§pop();
            if(_loc5_)
            {
               §§push(this.§>!Y§);
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§%"7§);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§%"7§ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§%"7§);
                           while(true)
                           {
                              §§push(0);
                              addr1098:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§`"1§ = 0;
                                       addr1102:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1099:
                                 }
                              }
                              addr1000:
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              §§push(0);
                              if(_loc5_)
                              {
                                 §§push(§§pop() > §§pop());
                                 loop32:
                                 while(true)
                                 {
                                    loop33:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(!§9q§.objects.isPigsAlive());
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                             loop34:
                                             while(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr917:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr918:
                                                      while(true)
                                                      {
                                                         §§push(!§9q§.objects.mSardineCanAdded);
                                                      }
                                                   }
                                                   addr917:
                                                }
                                                loop35:
                                                while(true)
                                                {
                                                   loop36:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop37:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop38:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§pop();
                                                                        loop39:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(!§9q§.objects.mMightyEagleAdded);
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(this.§5!c§());
                                                                                       loop66:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop67:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§9q§.objects.mMightyEagleAdded)
                                                                                                   {
                                                                                                      if(!§9q§.objects.mSardineCanAdded)
                                                                                                      {
                                                                                                         loop68:
                                                                                                         while(!(_loc6_ && this))
                                                                                                         {
                                                                                                            this.§@!'§(§51§);
                                                                                                            loop69:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr755:
                                                                                                               loop55:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§"!g§(false));
                                                                                                                  loop56:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §9q§.gameOver();
                                                                                                                           addr762:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        addr760:
                                                                                                                     }
                                                                                                                     loop94:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§<^§);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - param1);
                                                                                                                        }
                                                                                                                        §§pop().§<^§ = §§pop();
                                                                                                                        loop95:
                                                                                                                        for(; _loc5_; if(!(_loc5_ || param1))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr159);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1045);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr1028);
                                                                                                                              §§goto(addr1416);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr760);
                                                                                                                           }
                                                                                                                        },§§goto(addr762))
                                                                                                                        {
                                                                                                                           §§push(this.§<^§);
                                                                                                                           loop96:
                                                                                                                           for(; !_loc6_; if(_loc6_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },§§goto(addr580),§§push(0))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              loop97:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    loop98:
                                                                                                                                    while(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          this.§<^§ = 0;
                                                                                                                                          loop99:
                                                                                                                                          for(; _loc5_ || _loc3_; if(!(_loc5_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          },§§goto(addr338))
                                                                                                                                          {
                                                                                                                                             loop100:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§`""§);
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§'U§);
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§`""§);
                                                                                                                                                         loop101:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§%!_§);
                                                                                                                                                            loop102:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§`""§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§-R§);
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§`""§);
                                                                                                                                                                              if(_loc6_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop100;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop102;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§`""§);
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§&!V§);
                                                                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1405:
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1413);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1424);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop102;
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop100;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§9q§.camera.isOnCastleView()));
                                                                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop127:
                                                                                                                                                                                                                     while(!(_loc6_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§9q§.camera.mCurrentAction == §`"=§.§1@§);
                                                                                                                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop127;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr57:
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§""<§(§'U§);
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop98;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr72);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr436);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1413);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1424);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop102;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr610);
                                                                                                                                                                                                                                    §§goto(addr665);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop40;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr976);
                                                                                                                                                                                                                              addr152:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1413);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                                                                              addr1016:
                                                                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 while(!(_loc6_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1027);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr985);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1057);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1072:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                                                                 break loop39;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1015:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1057);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                     addr140:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr57);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1019);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr834);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr664);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr664);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr525);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr322);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr235);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr238);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr140);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§5!c§());
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1072);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1084:
                                                                                                                                                                                          addr961:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr927);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr152);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§<^§);
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr188:
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§""<§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                         if(_loc6_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1153:
                                                                                                                                                                                                            §§push(!(_loc4_ = §9q§.activeObject));
                                                                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_.§@!P§);
                                                                                                                                                                                                                           loop130:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() < _loc4_.§'">§);
                                                                                                                                                                                                                              addr1393:
                                                                                                                                                                                                                              loop159:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop157:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(_loc4_));
                                                                                                                                                                                                                                       addr1397:
                                                                                                                                                                                                                                       loop153:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          loop142:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1399:
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                loop136:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_ is §6!>§);
                                                                                                                                                                                                                                                   loop137:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      loop138:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop142;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop139:
                                                                                                                                                                                                                                                            while(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  addr1387:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc4_ is §[f§);
                                                                                                                                                                                                                                                                     addr1358:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop153;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop161:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop139;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  loop154:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc4_ is §[f§);
                                                                                                                                                                                                                                                                        loop155:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           loop163:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              addr1342:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1343:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    loop145:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             loop151:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop154;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push((_loc4_ as §>G§).§6S§);
                                                                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop159;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop163;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop145;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1331:
                                                                                                                                                                                                                                                                                                                  while(_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                     continue loop130;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop137;
                                                                                                                                                                                                                                                                                                                  addr1331:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1274:
                                                                                                                                                                                                                                                                                                                  loop149:
                                                                                                                                                                                                                                                                                                                  while(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(_loc6_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop130;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§&!,§ = true;
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              this.§""<§(§%!_§);
                                                                                                                                                                                                                                                                                                                              loop133:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break loop149;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                 addr1222:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop133;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop151;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    this.§""<§(§%!_§);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break loop149;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1401:
                                                                                                                                                                                                                                                                                                                                          addr1401:
                                                                                                                                                                                                                                                                                                                                          break loop102;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop136;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1276);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop151;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop157;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1276:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §9q§.activeObject = null;
                                                                                                                                                                                                                                                                                                                     §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                  addr1274:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1331);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1358);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop161;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop155;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop138;
                                                                                                                                                                                                                                                                                                   addr1362:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1331);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop154;
                                                                                                                                                                                                                                                                                          addr1345:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1274);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1387);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1358);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop136;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1362);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1342);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1401);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1278);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1386);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1393);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1364);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1305);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr904:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop55;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr968:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1424);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr72:
                                                                                                                                                                                                break loop102;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop97;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr984:
                                                                                                                                                                                          loop104:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!(_loc6_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §9q§.updatePigAnimations(param1);
                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr302);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr979);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr673);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr627);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1435);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr595);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1098);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                addr580:
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                loop117:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop106:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§=!X§.§!'§.objects.mMightyEagleAdded);
                                                                                                                                                                                                            loop125:
                                                                                                                                                                                                            while(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§""<§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr399:
                                                                                                                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr338:
                                                                                                                                                                                                                                 loop120:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr302:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(!§9q§.camera.isOnCastleView());
                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc5_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop117;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop115:
                                                                                                                                                                                                                                                   while(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr334:
                                                                                                                                                                                                                                                         loop109:
                                                                                                                                                                                                                                                         for(; _loc5_; §§goto(addr334))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§9q§.camera.mCurrentAction == §`"=§.§1@§);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop115;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop125;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr253:
                                                                                                                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§""<§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop95;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1413);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr159:
                                                                                                                                                                                                                                                                                 break loop102;
                                                                                                                                                                                                                                                                                 §§goto(addr253);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1435);
                                                                                                                                                                                                                                                                              addr260:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr988:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr599);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr989);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr505);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop115;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop106;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             §§goto(addr804);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1092:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1079);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1091:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr988);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr974);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr525:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr942);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr917);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr520:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr904);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         §§goto(addr790);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            §§goto(addr843);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr929);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr548);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1092);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr1028:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§%"7§);
                                                                                                                                                                                                                                                                  break loop96;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1027:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr835);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr802);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr834:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr928);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr927:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr929);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr831:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr904);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr325:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr260);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr325);
                                                                                                                                                                                                                                       continue loop120;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr941);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr338:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr793);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr641);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1413);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr502);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr399);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr338);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop107:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§-"0§);
                                                                                                                                                                                                                        continue loop104;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr595:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§9q§.objects.hasBirds()));
                                                                                                                                                                                                                        addr599:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr661);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr505:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr688:
                                                                                                                                                                                                                        if(_loc6_ && _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop107;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(_loc5_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§9q§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                           addr843:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §9q§.updatePigAnimations(param1);
                                                                                                                                                                                                                        §§goto(addr700);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr548:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop68;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§<^§ = 2000;
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§`"1§ = 0;
                                                                                                                                                                                                                  addr436:
                                                                                                                                                                                                                  loop119:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc6_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§-"0§);
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§-"0§ = §§pop();
                                                                                                                                                                                                                           if(_loc5_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1153);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1099);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr923:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr904);
                                                                                                                                                                                                                           continue loop119;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr923:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr502:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr661:
                                                                                                                                                                                                               §§push(!§9q§.camera.isOnCastleView());
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr664:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr665:
                                                                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr610:
                                                                                                                                                                                                                        §§push(§9q§.camera.mCurrentAction != §`"=§.§1@§);
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr673:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        addr1079:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop68;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop94;
                                                                                                                                                                                                                              addr1058:
                                                                                                                                                                                                                              while(_loc5_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 break loop40;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr665);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1078:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr625:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr627:
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§""<§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                              addr641:
                                                                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr559:
                                                                                                                                                                                                                                    break loop102;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1102);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§@!'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                    if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1450);
                                                                                                                                                                                                                                 addr860:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(!§9q§.objects.isPigsAlive());
                                                                                                                                                                                                                                 addr974:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop46:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§%"7§ = 6000;
                                                                                                                                                                                                                                             addr979:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§>!Y§ = true;
                                                                                                                                                                                                                                                §§goto(addr968);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr976:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr941:
                                                                                                                                                                                                                                          §§push(this.§>!Y§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                             addr942:
                                                                                                                                                                                                                                             addr1032:
                                                                                                                                                                                                                                             while(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                                                                      addr951:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr928:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr929:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§%"7§ = 15000;
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               this.§>!Y§ = true;
                                                                                                                                                                                                                                                               §§goto(addr923);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1413:
                                                                                                                                                                                                                                                            §§goto(addr1415);
                                                                                                                                                                                                                                                            §§push(this.§<^§);
                                                                                                                                                                                                                                                            addr930:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr904);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                break loop38;
                                                                                                                                                                                                                                                §§goto(addr942);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr941:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr904);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr989:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1450);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr804:
                                                                                                                                                                                                                           while(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§@!'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1078);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1093:
                                                                                                                                                                                                                           addr804:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1093);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr765:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr559);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr804);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else if(§9q§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§`"1§ = §,!a§;
                                                                                                                                                                                                                              addr793:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr790:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr765);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr800:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr804);
                                                                                                                                                                                                               addr700:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr804);
                                                                                                                                                                                                            §§goto(addr800);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1424);
                                                                                                                                                                                                         §§goto(addr929);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr665);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr625);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§%"7§);
                                                                                                                                                                                                            addr993:
                                                                                                                                                                                                            loop31:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1000);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     addr1089:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                        addr1090:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1091);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop31;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1088:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1415);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!(_loc6_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            addr1057:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1058);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop38;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1090);
                                                                                                                                                                                                      addr1048:
                                                                                                                                                                                                      addr1042:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr941);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1089);
                                                                                                                                                                                             §§goto(addr1085);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                             addr985:
                                                                                                                                                                                             loop88:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr986:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr987);
                                                                                                                                                                                                   continue loop88;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr904);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1415);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr993);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr461);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1415);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1450);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop101;
                                                                                                                                                                  }
                                                                                                                                                                  addr1145:
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1153);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§`""§);
                                                                                                                                                                  break loop100;
                                                                                                                                                               }
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§<^§);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1415:
                                                                                                                                                                     if(§§pop() <= 0)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1424:
                                                                                                                                                                           if(!§9q§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                           {
                                                                                                                                                                              this.§""<§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              this.§<^§ = 1000;
                                                                                                                                                                              addr1435:
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1450:
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1416:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop96;
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1424);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1455);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr688);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1145);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1405);
                                                                                                                                             §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1015);
                                                                                                                                          }
                                                                                                                                          addr1013:
                                                                                                                                       }
                                                                                                                                       §§goto(addr930);
                                                                                                                                    }
                                                                                                                                    continue loop69;
                                                                                                                                 }
                                                                                                                                 §§goto(addr674);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr984);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr827:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr831);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§`"1§ = §,!a§;
                                                                                                            §§goto(addr1084);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr755);
                                                                                                   }
                                                                                                   §§goto(addr827);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr755);
                                                                                          }
                                                                                          §§goto(addr1016);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr860);
                                                                                 }
                                                                                 addr858:
                                                                              }
                                                                              §§goto(addr1058);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1032);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr1048);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr986);
                                                               }
                                                               §§goto(addr951);
                                                            }
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               §§push(§§pop());
                                                               break loop34;
                                                            }
                                                            §§goto(addr1056);
                                                         }
                                                         §§goto(addr858);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop32;
                                                }
                                                §§goto(addr1042);
                                             }
                                          }
                                          §§goto(addr917);
                                       }
                                       §§goto(addr1013);
                                    }
                                 }
                              }
                              §§goto(addr1416);
                           }
                        }
                     }
                  }
                  §§goto(addr1085);
               }
            }
            §§goto(addr1153);
         }
         §§goto(addr1413);
      }
      
      protected function §@!'§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§>!Y§)
            {
               while(true)
               {
                  this.§>!Y§ = true;
                  addr129:
                  while(true)
                  {
                  }
               }
               addr126:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §9q§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  loop4:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop5:
                        while(!§9q§.slingshot.mDragging)
                        {
                           loop6:
                           while(§9q§.objects.isWorldAtSleep())
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop5;
                                 }
                                 if(!_loc3_)
                                 {
                                    this.§%"7§ = Math.min(this.§%"7§,3500);
                                 }
                                 else
                                 {
                                    addr107:
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc4_)
                                    {
                                       return;
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              while(true)
                              {
                                 break loop6;
                                 addr35:
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§""<§(param1,param2);
                                       addr48:
                                       break;
                                    }
                                    continue loop5;
                                 }
                              }
                              return;
                           }
                           while(true)
                           {
                              §§push(this.§%"7§);
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 continue loop4;
                              }
                              if(§§pop() <= §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr35);
                                 }
                                 §§goto(addr48);
                              }
                              §§goto(addr20);
                              §§goto(addr89);
                           }
                        }
                        return;
                     }
                     §§goto(addr107);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §"!g§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§`""§);
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
                                 §§push(this.§`""§);
                                 while(!_loc2_)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr176:
                                       while(_loc3_ || this)
                                       {
                                       }
                                       continue loop4;
                                    }
                                    addr35:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || param1)
                                          {
                                             addr57:
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr69:
                                                      §§push(!§§pop());
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this.§`""§);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§51§);
                                                                     addr143:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc3_ || _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop15:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop16:
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                loop18:
                                                                                                while(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop21:
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this.§<^§ <= 0);
                                                                                                               while(_loc3_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc3_ || this)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                           addr115:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr78:
                                                                                                                        }
                                                                                                                        addr78:
                                                                                                                        addr78:
                                                                                                                        while(_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                           §§goto(addr57);
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                                  §§goto(addr69);
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         addr135:
                                                                                                      }
                                                                                                      §§goto(addr78);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr176);
                                                                                             }
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop2;
                                                                                       addr163:
                                                                                    }
                                                                                    §§goto(addr78);
                                                                                 }
                                                                                 addr185:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr143);
                                 }
                                 continue loop0;
                              }
                           }
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
         §§goto(addr122);
      }
      
      public function §]e§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§`""§);
            if(!_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr63:
                           §§pop();
                           return this.§`""§ == §51§;
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.delta != 0)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§>!&§(param1.delta > 0);
               }
            }
         }
      }
      
      public function §>!&§(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§-6§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(!§9q§.mReadyToRun);
                              while(!_loc4_)
                              {
                                 addr158:
                                 if(!(_loc4_ && this))
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop();
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(this.§`""§);
                                                            if(_loc3_ || param2)
                                                            {
                                                               addr61:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§push(LEVEL_STATE_SLINGSHOT);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              addr151:
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§goto(addr158);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(_loc3_ || _loc3_)
                                                                                 {
                                                                                    while(!§§pop())
                                                                                    {
                                                                                       §§push(this.§`""§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§%!_§);
                                                                                          addr206:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                          }
                                                                                          §§goto(addr61);
                                                                                       }
                                                                                    }
                                                                                    break loop23;
                                                                                    §§goto(addr151);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr223:
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
                                                                                                §§goto(addr193);
                                                                                             }
                                                                                          }
                                                                                          addr224:
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                 }
                                                                                 addr193:
                                                                                 addr222:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr214:
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(this.§`""§);
                                                                              while(true)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr131);
                                                            addr36:
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            addr217:
                                                            addr247:
                                                            while(true)
                                                            {
                                                               §§goto(addr222);
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr224);
                                                }
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         addr234:
                                                         if(_loc3_)
                                                         {
                                                            return;
                                                            addr236:
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(!§9q§.isPlayingReplay())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr100:
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §9q§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`"=§.MANUAL_SCALE_STEP) : Number(param2));
                                                                  addr19:
                                                                  return;
                                                                  addr127:
                                                               }
                                                               §§goto(addr19);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §9q§.changeReplaySpeed(param1);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§goto(addr36);
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr19);
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                §§goto(addr213);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr223);
                                       }
                                       addr172:
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr217);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr236);
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §0!Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ K§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(!this.§-6§)
            {
               if(_loc5_ || param2)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
               while(!_loc3_.isDefaultPrevented())
               {
                  while(true)
                  {
                     §"o§.§2!a§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§"!g§(false));
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr200:
                              return;
                           }
                           if(§9q§.isPlayingReplay())
                           {
                              §9q§.camera.startDragging(param1,param2);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr301:
                                 §9q§.resetReplaySpeed();
                                 break;
                              }
                              break;
                           }
                           while(_loc5_ || this)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr192:
                                       while(!_loc6_)
                                       {
                                          §§push(this.§`""§ == §&!V§);
                                          if(_loc6_ && param2)
                                          {
                                             continue loop6;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       continue loop2;
                                    }
                                    addr191:
                                 }
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  if(!(_loc6_ && this))
                  {
                     return;
                  }
               }
               return;
            }
            §§goto(addr178);
         }
         addr31:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            §§push(this.§-6§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     return;
                  }
                  addr187:
               }
               else
               {
                  while(true)
                  {
                     §"o§.§[!?§();
                     if(_loc4_)
                     {
                        if(this.§`""§ == §-R§)
                        {
                           if(_loc4_ || param1)
                           {
                              this.§""<§(LEVEL_STATE_SLINGSHOT);
                              if(_loc4_ || param2)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                              }
                              addr176:
                              if(!isNaN(param2))
                              {
                                 addr215:
                                 if(!(_loc5_ && this))
                                 {
                                    §9q§.camera.dragToNewPoint(param1,param2);
                                 }
                                 while(true)
                                 {
                                 }
                                 addr215:
                              }
                              while(true)
                              {
                                 §9q§.camera.stopDragging();
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr187);
                              addr176:
                           }
                           §§goto(addr176);
                        }
                        if(§9q§.slingshot.mDragging)
                        {
                           if(!(_loc5_ && this))
                           {
                              _loc3_ = §9q§.screenToBox2D(param1,param2);
                              if(_loc4_)
                              {
                                 §9q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 while(true)
                                 {
                                    if(!§9q§.slingshot.canShootTheBird())
                                    {
                                       §9q§.slingshot.cancelDragging();
                                       if(_loc4_ || param1)
                                       {
                                          if(false)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                this.§""<§(§&!V§);
                                                addr132:
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             addr113:
                                          }
                                          §§goto(addr142);
                                       }
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                          }
                                          §§goto(addr132);
                                          §§goto(addr113);
                                       }
                                       §§goto(addr142);
                                    }
                                    while(_loc4_)
                                    {
                                       §9q§.slingshot.shoot();
                                    }
                                 }
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr142);
                     }
                     break;
                  }
                  §§push(!isNaN(param1));
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           addr173:
                           §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr176);
                           }
                           §§goto(addr215);
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr173);
               }
               addr142:
               if(§9q§.camera.mDragging)
               {
                  if(_loc4_ || this)
                  {
                     break loop0;
                  }
                  §§goto(addr187);
               }
               return;
            }
            §§goto(addr173);
         }
         §§goto(addr176);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_ || param1)
         {
            if(!this.§-6§)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr37);
               }
               else
               {
                  addr96:
                  §9q§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§9q§.slingshot.mDragging)
            {
               if(!(_loc4_ && param1))
               {
                  _loc3_ = §9q§.screenToBox2D(param1,param2);
                  if(_loc5_)
                  {
                     §9q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc5_ || this)
                     {
                        addr101:
                        this.§3!_§ = param1;
                        if(_loc5_ || param2)
                        {
                           this.§6!g§ = param2;
                        }
                     }
                  }
                  return;
               }
            }
            else if(§9q§.camera.mDragging)
            {
               if(_loc5_)
               {
                  §§goto(addr96);
               }
            }
            §§goto(addr101);
         }
         addr37:
      }
      
      public function §4z§() : Point
      {
         return new Point(this.§3!_§,this.§6!g§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?!p§.§&!Y§(this.§?!p§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§-"7§(§!!'§);
               loop1:
               while(this.§`""§ == §%!_§)
               {
                  loop2:
                  while(_loc3_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§-"0§ = §3!G§;
                        if(!_loc2_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function getScore() : int
      {
         return this.§?!p§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§=!X§.§!'§.objects.mMightyEagleAdded)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(§3!w§.§7%§(§3!w§.§%n§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr40);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§-6§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-6§ = param1;
         }
      }
   }
}
