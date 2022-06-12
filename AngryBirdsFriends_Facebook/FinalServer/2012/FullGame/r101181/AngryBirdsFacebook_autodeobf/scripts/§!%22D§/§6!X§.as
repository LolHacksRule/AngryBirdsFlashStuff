package §!"D§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §-!q§.§=p§;
   import §3!7§.§>,§;
   import §3!7§.§?!F§;
   import §7-§.§,!C§;
   import §<a§.§+!B§;
   import §[!K§.§-k§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.utils.Timer;
   
   public class §6!X§ extends Popup
   {
      
      public static const §#!G§:String = "ExtraBirdSubscription";
      
      public static const §=X§:String = "TournamentLevelUnlockAll";
      
      public static const §"V§:String = "Halloween2012Bundle";
      
      public static const §<!6§:String = "Halloween2012AvatarPack";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!G§ = "ExtraBirdSubscription";
            do
            {
               §=X§ = "TournamentLevelUnlockAll";
               do
               {
                  §"V§ = "Halloween2012Bundle";
                  do
                  {
                     §<!6§ = "Halloween2012AvatarPack";
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §;y§:Boolean = false;
      
      private var §?7§:Timer;
      
      private var §%!%§:String = "";
      
      private var §?!=§:Boolean = false;
      
      public function §6!X§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = false;
         if(_loc11_)
         {
            super(§ "A§.§4[§.Views.PopupTournamentShopPopupBranded[0],param1);
            loop0:
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§@!a§);
               while(true)
               {
                  mClip.HalloweenUnlockBundleButton.addEventListener(MouseEvent.CLICK,this.§%"3§);
                  loop2:
                  while(_loc11_)
                  {
                     mClip.HalloweenUnlockLevelsButton.addEventListener(MouseEvent.CLICK,this.§5"C§);
                     while(_loc11_)
                     {
                        mClip.HalloweenUnlockVanHelsingButton.addEventListener(MouseEvent.CLICK,this.§!r§);
                        loop4:
                        while(_loc11_ || param1)
                        {
                           while(true)
                           {
                              mClip.HalloweenUnlockAvatarPackButton.addEventListener(MouseEvent.CLICK,this.§]!w§);
                              addr63:
                              while(true)
                              {
                                 addr38:
                                 while(true)
                                 {
                                    mClip.addEventListener(Event.ENTER_FRAME,this.§6g§);
                                    addr45:
                                    while(!_loc10_)
                                    {
                                       if(!(_loc11_ || this))
                                       {
                                          continue loop2;
                                       }
                                       this.§?7§ = new Timer(2000,1);
                                       if(_loc11_)
                                       {
                                          if(_loc11_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr38);
                                             }
                                             var _loc3_:Boolean = true;
                                             var _loc8_:int = 0;
                                             var _loc9_:* = §,!C§.§;"§.§-&§;
                                             addr181:
                                             for each(_loc4_ in _loc9_)
                                             {
                                                addr164:
                                                addr180:
                                                §§push(Boolean(_loc3_));
                                                if(Boolean(_loc3_))
                                                {
                                                   addr169:
                                                   §§pop();
                                                   addr170:
                                                   if(_loc11_)
                                                   {
                                                      §§push(§,!C§.§;"§.isLevelOpen(_loc4_));
                                                      if(_loc11_)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               addr148:
                                                               if(_loc11_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr154:
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr164);
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr154);
                                             }
                                             if(_loc11_)
                                             {
                                                §§push(false);
                                                if(!(_loc10_ && param2))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(§?!F§.§;"§.§9K§(§>,§.§," §.§]6§) > 0)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            addr223:
                                                            §§push(true);
                                                            if(!_loc10_)
                                                            {
                                                               addr226:
                                                               _loc5_ = §§pop();
                                                               addr227:
                                                               §§push(false);
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(_loc11_ || param2)
                                                            {
                                                               addr324:
                                                               §§push(§?!F§.§;"§.§2!h§.§2! §(§<!6§));
                                                               if(_loc11_)
                                                               {
                                                                  addr328:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!Boolean(§§pop()))
                                                                  {
                                                                     addr330:
                                                                     §§pop();
                                                                     addr331:
                                                                     §§push(§?!F§.§;"§);
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        §§push(§§pop().§2!h§);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§"V§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop().§2! §(§§pop()));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr301:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_ && param1)
                                                                                                {
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                addr318:
                                                                                                _loc6_ = true;
                                                                                                addr319:
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          mClip.HalloweenUnlockLevelsButton.visible = !_loc3_;
                                                                                          addr261:
                                                                                          mClip.HalloweenUnlockVanHelsingButton.visible = !_loc5_;
                                                                                          mClip.HalloweenUnlockAvatarPackButton.visible = !_loc6_;
                                                                                          addr274:
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             if(_loc11_ || param2)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr261);
                                                                                                   }
                                                                                                   var _loc7_:int = 0;
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr419:
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr420:
                                                                                                         _loc7_++;
                                                                                                      }
                                                                                                      addr415:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr416:
                                                                                                         _loc7_++;
                                                                                                      }
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr402:
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     _loc7_++;
                                                                                                                     addr412:
                                                                                                                     if(_loc7_ >= 2)
                                                                                                                     {
                                                                                                                        addr371:
                                                                                                                        mClip.HalloweenUnlockBundleButton.visible = false;
                                                                                                                        if(_loc11_ || param1)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                           §§goto(addr337);
                                                                                                                        }
                                                                                                                        §§goto(addr412);
                                                                                                                     }
                                                                                                                     mClip.HalloweenUnlockBundleButton.visible = true;
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc11_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr420);
                                                                                                                              }
                                                                                                                              addr337:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           §§goto(addr416);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr371);
                                                                                                                  }
                                                                                                                  §§goto(addr420);
                                                                                                               }
                                                                                                               §§goto(addr416);
                                                                                                            }
                                                                                                            §§goto(addr412);
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                      §§goto(addr415);
                                                                                                   }
                                                                                                   §§goto(addr412);
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          addr267:
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr63);
                                       }
                                       §§goto(addr45);
                                       continue loop2;
                                    }
                                    continue loop4;
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
         §§goto(addr79);
      }
      
      private function §6g§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Array = §,!C§.§;"§.§0!V§();
         var _loc3_:String = (_loc2_[0] as String).replace(" Left","");
         if(_loc4_)
         {
            mClip.Textfield_ShopTimer.text.text = _loc3_;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
            while(true)
            {
               §@!]§.addCallback("purchaseComplete",this.§+!s§);
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §@!]§.addCallback("purchaseFailed",this.§4!G§);
            if(_loc3_)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §%"3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!m§(§"V§);
         }
      }
      
      private function §5"C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§?!m§(§=X§);
         }
      }
      
      private function §!r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?!=§ = true;
            do
            {
               this.§?!m§(§#!G§);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §]!w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§?!m§(§<!6§);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            while(true)
            {
               §@!]§.§[">§("purchaseComplete",this.§+!s§);
               loop1:
               for(; _loc2_ || _loc1_; if(_loc2_ || _loc2_)
               {
                  addr20:
                  return;
               })
               {
                  §@!]§.§[">§("purchaseFailed",this.§4!G§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§;y§);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
                              while(_loc2_)
                              {
                                 this.§;y§ = false;
                                 while(true)
                                 {
                                 }
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                           addr90:
                        }
                        while(true)
                        {
                           §§push(this.§?!=§);
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              this.§?!=§ = false;
                              while(_loc2_)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §?!F§.§;"§.§-Y§();
                                    if(!_loc1_)
                                    {
                                       continue loop7;
                                    }
                                    continue;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr20);
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §?!m§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(ExternalInterface.available)
            {
               loop0:
               while(!this.§;y§)
               {
                  loop1:
                  while(true)
                  {
                     AngryBirdsFP11.§@<§.§#m§();
                     loop2:
                     while(true)
                     {
                        §@!]§.§9"'§("placeOrder",param1);
                        loop3:
                        while(true)
                        {
                           this.§;y§ = true;
                           loop4:
                           while(true)
                           {
                              this.§%!%§ = param1;
                              loop5:
                              while(_loc3_)
                              {
                                 this.§?7§.reset();
                                 loop6:
                                 while(_loc3_)
                                 {
                                    this.§?7§.start();
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§?7§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
                                          while(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §+!B§.§1n§(param1,1);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break loop0;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      private function §]!#§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
            do
            {
               this.§;y§ = false;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private function §4!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%!%§ = "";
         }
      }
      
      private function §+!s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!=§ = false;
         }
         while(this.§%!%§)
         {
            if(_loc2_)
            {
               continue;
            }
            var _loc1_:* = this.§%!%§;
            if(_loc3_ || _loc3_)
            {
               §§push(§=X§);
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr220:
                           §§push(0);
                           if(_loc3_ || _loc1_)
                           {
                              addr291:
                              loop8:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr172:
                                    addr175:
                                    if(§3T§.§67§.§>k§() is §=p§)
                                    {
                                       addr176:
                                       this.§8![§();
                                       addr178:
                                    }
                                    else
                                    {
                                       addr150:
                                       §3T§.§67§.§=!w§(§-k§.STATE_NAME);
                                       addr148:
                                    }
                                    addr338:
                                    §+!B§.§,Z§(this.§%!%§,1);
                                    while(true)
                                    {
                                       this.§%!%§ = "";
                                       addr330:
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             break loop8;
                                          }
                                          break;
                                       }
                                    }
                                    break;
                                    addr343:
                                    addr113:
                                 case 1:
                                    §§push(§3T§.§67§);
                                    loop3:
                                    for(; _loc3_; while(true)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc2_)
                                       {
                                          §§push(§-k§.STATE_NAME);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§=!w§(§§pop());
                                             if(_loc3_)
                                             {
                                                §§goto(addr42);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr150);
                                          }
                                          §§goto(addr338);
                                       }
                                       else
                                       {
                                          §§goto(addr172);
                                       }
                                    })
                                    {
                                       §§push(§§pop().§>k§() is §=p§);
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(§3T§.§67§);
                                             continue loop3;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             this.§8![§();
                                             if(_loc3_ || this)
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr42:
                                                   §§goto(addr338);
                                                }
                                                else
                                                {
                                                   §§goto(addr178);
                                                }
                                             }
                                             break loop8;
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr148);
                                 case 2:
                                    §§push(§3T§.§67§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop().§>k§() is §=p§);
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                addr62:
                                                if(_loc3_ || this)
                                                {
                                                   this.§8![§();
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                      else
                                                      {
                                                         addr20:
                                                      }
                                                   }
                                                   §§goto(addr172);
                                                }
                                                else
                                                {
                                                   §§goto(addr176);
                                                }
                                             }
                                             §§goto(addr20);
                                          }
                                          else
                                          {
                                             §§goto(addr175);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr123);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr91);
                                 case 3:
                                    §%?§.§9$§("CATEGORYBOTTOM");
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr42);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr62);
                                       }
                                    }
                                    §§goto(addr172);
                                 default:
                                    §§goto(addr172);
                              }
                              continue loop6;
                           }
                        }
                        else
                        {
                           addr248:
                           §§push(1);
                           if(!_loc3_)
                           {
                              addr274:
                           }
                        }
                        §§goto(addr291);
                     }
                     else
                     {
                        §§push(§"V§);
                        if(_loc3_ || _loc2_)
                        {
                           addr237:
                           §§push(_loc1_);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr248);
                                 }
                                 §§goto(addr291);
                              }
                              else
                              {
                                 §§push(§#!G§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr260:
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr274);
                                             }
                                          }
                                          else
                                          {
                                             addr278:
                                             §§push(3);
                                             if(_loc2_ && _loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       else
                                       {
                                          §§push(§<!6§);
                                       }
                                       §§goto(addr278);
                                    }
                                    addr277:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr278);
                                    }
                                    else
                                    {
                                       §§goto(addr291);
                                       §§push(4);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr277);
                                 §§push(_loc1_);
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr260);
                     }
                  }
                  §§goto(addr260);
               }
               §§goto(addr237);
            }
            §§goto(addr220);
         }
         while(true)
         {
            this.close();
            if(_loc2_ && _loc3_)
            {
               §§goto(addr330);
            }
            return;
         }
      }
      
      private function §8![§() : void
      {
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            mClip.removeEventListener(Event.ENTER_FRAME,this.§6g§);
         }
         do
         {
            super.close();
         }
         while(_loc1_);
         
      }
   }
}
