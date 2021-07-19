package §<"c§
{
   import §!"e§.§9#B§;
   import §'!n§.§[#§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§8"f§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §'!'§ extends §7"i§
   {
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 20;
      
      protected static const §,#9§:int = 95;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<!K§ = 40;
            while(true)
            {
               §5"n§ = 20;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     §,#9§ = 95;
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      protected var §"!h§:Boolean;
      
      protected var §5M§:§9#B§;
      
      protected var §8!X§:§[#§;
      
      protected var §^!Y§:§ #^§;
      
      protected var §]"b§:§^"m§;
      
      public function §'!'§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§^!Y§ = § #^§(§@;§.getItemByName("Container_Buttons"));
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        §9!#§.mClip.unlockTimer.visible = false;
                        if(_loc3_)
                        {
                           return;
                        }
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              §9!#§.mClip.unlockTimer.mouseEnabled = §9!#§.mClip.unlockTimer.mouseChildren = false;
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.§]"b§ = §^"m§(§9!#§.getItemByName("Button_NextLevelLocked"));
                                 break;
                                 addr91:
                              }
                           }
                           continue;
                           break;
                        }
                        continue loop0;
                        addr118:
                     }
                     continue loop1;
                  }
                  do
                  {
                     this.§]"b§.setVisibility(false);
                  }
                  while(!(_loc2_ || this));
                  
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr91);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super.activate(param1);
            while(true)
            {
               this.§"!h§ = false;
            }
            addr64:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               this.§8!X§ = new §[#§(§ #^§(§@;§.getItemByName("Container_ExtraBird")));
               while(_loc5_)
               {
                  this.§8!X§.addEventListener(§[#§.§9!4§,this.§"#A§);
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break loop2;
                     }
                     continue loop2;
                  }
                  §§goto(addr64);
               }
               continue loop1;
            }
            var _loc2_:MovieClip = §@;§.getItemByName("Button_ExtraBird").mClip.extraBird;
            §§push(§>f§(§,!q§.§9!,§.slingshot).§0"%§.levelItem.itemName);
            if(_loc5_)
            {
               §§push(§§pop().split("_")[0]);
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 0;
            while(true)
            {
               if(_loc4_ >= _loc2_.currentLabels.length)
               {
                  if(_loc5_)
                  {
                     if(!_loc5_)
                     {
                        addr151:
                        _loc2_.gotoAndStop(_loc3_);
                        addr154:
                        while(true)
                        {
                        }
                        addr154:
                     }
                     while(true)
                     {
                        this.setButtonAlignment();
                        §§goto(addr154);
                     }
                     addr115:
                  }
                  while(!(_loc6_ && this))
                  {
                     if(_loc5_)
                     {
                        return;
                     }
                     §§goto(addr154);
                     §§goto(addr115);
                  }
                  continue;
               }
               if(_loc2_.currentLabels[_loc4_] != _loc3_)
               {
                  _loc4_++;
                  continue;
               }
               §§goto(addr151);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§8!X§);
            while(true)
            {
               §§pop().removeEventListener(§[#§.§9!4§,this.§"#A§);
               while(true)
               {
                  §§push(this.§8!X§);
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  §§pop().dispose();
                  loop2:
                  while(true)
                  {
                     this.§8!X§ = null;
                     while(true)
                     {
                        this.§5M§.§="M§();
                        loop4:
                        while(!_loc2_)
                        {
                           continue loop2;
                           while(true)
                           {
                              super.deActivate();
                              if(_loc1_ || this)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§8"f§(§,!q§.§9!,§).§8%§(§6"w§.§1!m§));
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§,#9§);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop() * 2));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && this))
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc4_ || _loc1_)
                        {
                           addr95:
                           §§push(int(§§pop() + §§pop()));
                           if(!_loc5_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    addr112:
                                    if(this.§%!s§())
                                    {
                                       if(_loc4_ || this)
                                       {
                                          addr120:
                                          §§push(int(§5"n§ + (!!_loc4_ ? §§pop() + §,#9§ : §§pop())));
                                          if(!_loc5_)
                                          {
                                             _loc2_ = §§pop();
                                             addr134:
                                             §§push(_loc2_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr142:
                                                §§push(-§§pop());
                                                if(!_loc5_)
                                                {
                                                   §§push(2);
                                                   if(_loc4_)
                                                   {
                                                      addr159:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr157:
                                                         §§push(§§pop() + §<!K§);
                                                      }
                                                      var _loc3_:* = int(§§pop());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §^W§.x = _loc3_;
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(§5"n§);
                                                               while(true)
                                                               {
                                                                  §§push(§,#9§);
                                                                  addr363:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr364:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr365:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                                  addr221:
                                                                  if(_loc5_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§,#9§);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr247:
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          addr257:
                                                                                          while(true)
                                                                                          {
                                                                                             §9!#§.x = _loc3_;
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop25;
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          addr182:
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr197:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(this.§8!X§);
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop().view);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr322:
                                                                                                               addr322:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  addr323:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr182);
                                                                                                                  }
                                                                                                                  §§goto(addr197);
                                                                                                               }
                                                                                                            }
                                                                                                            addr303:
                                                                                                         }
                                                                                                         addr320:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().view);
                                                                                                            addr321:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr322);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 addr366:
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr159);
                                    }
                                    else
                                    {
                                       §§push(0);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr142);
                  }
                  else
                  {
                     §§push(§5"n§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§,#9§);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              §§goto(addr95);
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr112);
         }
         §§goto(addr134);
      }
      
      protected function §%!s§() : Boolean
      {
         return §9!#§.visible;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §""=§();
            loop0:
            while(true)
            {
               §§push(nextState.length > 0);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr83:
                        loop3:
                        while(true)
                        {
                           §§push(this.§"!h§);
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              addr30:
                              §§push(!§§pop());
                              while(true)
                              {
                                 break loop3;
                                 §§goto(addr30);
                              }
                           }
                           break;
                        }
                        while(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §,!q§.§9!,§.clearLevel();
                           }
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 addr57:
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr83);
                        }
                        return;
                     }
                     addr82:
                  }
                  §§goto(addr31);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr57);
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      protected function §"#A§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            var _loc2_:Boolean;
            this.§"!h§ = _loc2_ = true;
            §?#N§.§"3§ = _loc2_;
            if(!(_loc3_ && param1))
            {
               this.§5M§.§="M§();
            }
            do
            {
               § g§(this.getPlayState());
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param3))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc6_ && this))
               {
                  §§push(0);
                  if(_loc5_ || param1)
                  {
                  }
               }
               else
               {
                  addr135:
                  §§push(1);
                  if(_loc6_)
                  {
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr135);
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr165:
                  switch(§§pop())
                  {
                     case 0:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        loop0:
                        while(true)
                        {
                           §'$§();
                           addr90:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        § g§(getCutSceneState());
                        break;
                        addr86:
                     case 1:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        § g§(getLevelLoadState());
                        addr26:
                        break;
                        addr70:
                        addr63:
                     case 2:
                        §?!r§.§"#_§("misc_menubuttonback_1");
                        if(!(_loc6_ && param3))
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       § g§(getLevelSelectionState());
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr26);
                                       }
                                       break;
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr86);
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                           }
                           §§goto(addr63);
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr165);
               if(_loc5_ || param1)
               {
               }
            }
            §§goto(addr165);
         }
         §§goto(addr135);
      }
   }
}
