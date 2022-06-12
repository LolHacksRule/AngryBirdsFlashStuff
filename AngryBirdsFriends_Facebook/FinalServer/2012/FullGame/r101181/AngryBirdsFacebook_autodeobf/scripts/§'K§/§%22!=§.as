package §'K§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §3!7§.§2G§;
   import §3!7§.§>,§;
   import §6!B§.§>!E§;
   import §7-§.§,!C§;
   import §7-§.§<"+§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§=1§;
   import §[!K§.§-k§;
   import §]!>§.§6!<§;
   import §]!>§.§[Q§;
   import §]!A§.§&A§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"!=§ extends Popup
   {
      
      private static var §`Z§:§6!<§;
      
      private static const §%!f§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §"!=§)
         {
            §%!f§ = 1000;
         }
      }
      
      private var §"!T§:StatePopupManager;
      
      protected var §4!U§:Timer;
      
      protected var §6x§:Timer;
      
      private var §8"-§:§+"@§;
      
      public function §"!=§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(§ "A§.§4[§.Views.PopupView_TournamentLastResults[0],param1);
         }
         do
         {
            this.§"!T§ = param2;
            do
            {
               this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
            }
            while(!_loc4_);
            
         }
         while(!(_loc4_ || param1));
         
      }
      
      public static function §super§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         if(_loc4_)
         {
            if(!§,!C§.§;"§.lastResult)
            {
               if(_loc4_ || _loc2_)
               {
                  return false;
               }
            }
            §`Z§ = new §6!<§();
         }
         var _loc2_:int = 0;
         var _loc3_:* = §,!C§.§;"§.lastResult.players;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc2_)
            {
               if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
               {
                  if(!_loc5_)
                  {
                     addr77:
                     §`Z§.user = §[Q§.§!!t§(_loc1_);
                  }
                  break;
               }
               continue;
            }
            §§goto(addr77);
         }
         if(!(_loc5_ && _loc1_))
         {
            §§push(§`Z§);
            loop1:
            while(true)
            {
               §§push(§ "'§(1));
               while(true)
               {
                  §§pop().§,!@§ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§`Z§);
                     while(_loc4_)
                     {
                        §§push(§ "'§(2));
                        loop5:
                        while(true)
                        {
                           §§pop().§9!2§ = §§pop();
                           addr200:
                           while(!(_loc5_ && _loc2_))
                           {
                              §§push(§`Z§);
                              continue loop5;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(§`Z§);
            if(_loc4_ || _loc2_)
            {
               §§goto(addr119);
            }
            §§goto(addr150);
         }
         §§goto(addr147);
      }
      
      private static function § "'§(param1:int) : §[Q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§@!5§ = null;
         if(_loc7_)
         {
            §§push(§,!C§.§;"§);
            if(!_loc6_)
            {
               if(§§pop().lastResult)
               {
                  if(!_loc6_)
                  {
                     addr35:
                     addr33:
                     if(!§,!C§.§;"§.lastResult.players)
                     {
                     }
                     §§goto(addr130);
                  }
                  var _loc4_:int = 0;
                  var _loc5_:* = §,!C§.§;"§.lastResult.players;
                  while(true)
                  {
                     for each(_loc2_ in _loc5_)
                     {
                        if(_loc7_)
                        {
                           if(_loc2_ != null)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr75:
                                 if(_loc2_.r != param1)
                                 {
                                    continue;
                                 }
                              }
                              _loc3_ = §1z§.§@Z§(_loc2_.u);
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(!(_loc6_ && param1))
                                 {
                                    _loc2_.n = _loc3_.name;
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       break;
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr75);
                     }
                  }
                  return §[Q§.§!!t§(_loc2_);
               }
               addr130:
               return null;
            }
            §§goto(addr35);
         }
         §§goto(addr33);
      }
      
      public static function get §`J§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§`Z§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(_loc8_ || param3)
            {
               §§push("CLAIM_PRIZE");
               if(!(_loc7_ && param2))
               {
                  §§push(_loc6_);
                  if(!(_loc7_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           addr140:
                           §§push(0);
                           if(!(_loc7_ && param2))
                           {
                              addr193:
                              loop1:
                              while(true)
                              {
                                 loop3:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       break loop0;
                                    case 1:
                                       AngryBirdsFP11.§@<§.§#m§();
                                       while(true)
                                       {
                                          §§push(int(§`Z§.user.§9!Y§));
                                          if(_loc8_)
                                          {
                                             §§push(_loc4_ = §§pop());
                                             if(!_loc7_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                          addr50:
                                          if(!(_loc8_ || param3))
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             break loop3;
                                             addr108:
                                          }
                                          addr34:
                                          this.deActivate();
                                          break loop3;
                                          addr37:
                                       }
                                       break;
                                    case 2:
                                       this.deActivate();
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr34);
                                          }
                                          §§goto(addr37);
                                       }
                                 }
                                 addr195:
                                 return;
                              }
                           }
                        }
                        else
                        {
                           addr173:
                           §§push(1);
                           if(_loc7_)
                           {
                           }
                        }
                        §§goto(addr193);
                     }
                     else
                     {
                        §§push("SHARE_TOURNAMENT");
                        if(!(_loc7_ && this))
                        {
                           addr167:
                           §§push(_loc6_);
                           if(!_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§goto(addr173);
                                 }
                              }
                              else
                              {
                                 addr179:
                                 if("CLOSE_POPUP" !== _loc6_)
                                 {
                                    §§goto(addr193);
                                    §§push(3);
                                 }
                              }
                              §§goto(addr193);
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr179);
               }
               §§goto(addr167);
            }
            §§goto(addr140);
         }
         this.§ i§();
         §§goto(addr108);
      }
      
      private function § i§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            getItemByName("ClaimPrizeButton").setVisibility(false);
            if(_loc2_ || _loc1_)
            {
               getItemByName("GiftCarouselContainer").setVisibility(true);
               if(!_loc3_)
               {
                  mClip.GiftCarouselContainer.mouseEnabled = mClip.GiftCarouselContainer.mouseChildren = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     mClip.GiftCarouselContainer.mcCount.gotoAndStop(0);
                     while(true)
                     {
                        mClip.GiftCarouselContainer.mcReward.gotoAndStop(0);
                        loop5:
                        while(true)
                        {
                           mClip.GiftCarouselContainer.txtPowerup.text = "";
                           addr149:
                           while(_loc3_)
                           {
                              continue loop5;
                           }
                           addr142:
                           mClip.getChildByName("GiftBox").visible = false;
                           loop6:
                           while(true)
                           {
                              this.§4!U§ = new Timer(§%!f§);
                              addr116:
                              addr135:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc2_ || _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr149);
                                 continue loop6;
                              }
                              loop7:
                              while(true)
                              {
                                 this.§4!U§.addEventListener(TimerEvent.TIMER,this.§^!s§);
                                 while(!(_loc2_ || _loc3_))
                                 {
                                    §§goto(addr116);
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     addr164:
                  }
                  do
                  {
                     this.§4!U§.start();
                     if(_loc3_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  while(_loc3_ && _loc2_);
                  
                  return;
               }
               §§goto(addr164);
            }
            §§goto(addr142);
         }
         §§goto(addr135);
      }
      
      private function §^!s§(param1:TimerEvent) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc6_:* = 0;
         if(_loc7_)
         {
            this.§4!U§.reset();
            if(_loc7_ || _loc2_)
            {
               this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
            }
         }
         var _loc2_:§2G§ = §>,§.§'!i§(§`Z§.§6",§);
         if(!(_loc8_ && param1))
         {
            if(_loc2_)
            {
               if(_loc7_ || param1)
               {
                  §§push(_loc2_.§7!5§);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc3_ = §§pop();
                        addr73:
                        §§push(_loc2_.§]6§);
                        if(!_loc8_)
                        {
                           §§goto(addr77);
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr73);
            }
            addr77:
            _loc4_ = §§pop();
            §§push(§&A§.§[!H§);
            if(!(_loc8_ && param1))
            {
               addr88:
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(§`Z§.§6",§);
               if(!_loc8_)
               {
                  if(§§pop().indexOf("PowerPackage") != -1)
                  {
                     if(_loc7_)
                     {
                        §§push(§&A§.§1!h§);
                        if(!(_loc8_ && this))
                        {
                           addr160:
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                     }
                     loop0:
                     while(true)
                     {
                        addr121:
                        while(true)
                        {
                           §§push(int(§,!C§.§;"§.§[-§.indexOf(§`Z§.§4!d§)));
                           loop2:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(3);
                                 if(!_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop() - _loc6_));
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr188);
                           }
                        }
                     }
                  }
                  else
                  {
                     mClip.GiftCarouselContainer.mcCount.gotoAndStop(§`Z§.§4!d§);
                     §§goto(addr188);
                  }
                  §§goto(addr188);
               }
               §§goto(addr160);
            }
            addr188:
            mClip.GiftCarouselContainer.mcReward.gotoAndStop(_loc4_);
            if(_loc7_)
            {
               if(§`Z§.§4!d§ > 1)
               {
                  addr280:
                  if(!(_loc8_ && this))
                  {
                     §§push(_loc5_);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop().replace("%1",§`Z§.§4!d§).replace("%2",_loc3_));
                     }
                     _loc3_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr280:
               }
               while(true)
               {
                  mClip.GiftCarouselContainer.txtPowerup.text = _loc3_;
                  §§goto(addr280);
               }
               addr195:
            }
            loop6:
            while(true)
            {
               this.§6x§ = new Timer(1500,1);
               addr234:
               while(true)
               {
                  this.§6x§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!B§);
                  continue loop6;
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function §^!B§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"m§ = null;
         if(_loc4_)
         {
            this.§6x§.reset();
            while(true)
            {
               this.§6x§.removeEventListener(TimerEvent.TIMER,this.§^!B§);
               while(true)
               {
                  if(!_loc4_)
                  {
                     break;
                     addr67:
                  }
                  loop2:
                  while(true)
                  {
                     getItemByName("Button_Close").setVisibility(true);
                     loop3:
                     while(§`Z§.user.§9!Y§ <= 3)
                     {
                        if(_loc4_ || param1)
                        {
                           while(true)
                           {
                              getItemByName("ShareTournamentButton").setVisibility(true);
                           }
                           addr36:
                        }
                        while(true)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     §§goto(addr127);
                  }
                  if(_loc4_ || param1)
                  {
                     if(false)
                     {
                        §§goto(addr67);
                     }
                     _loc2_ = §>!+§.§;"§.§^!K§(mClip.GiftCarouselContainer,{
                        "alpha":0,
                        "scaleX":0.3,
                        "scaleY":0.3
                     },{
                        "alpha":1,
                        "scaleX":1,
                        "scaleY":1
                     },0.33,§>!+§.§!!>§);
                     if(_loc4_)
                     {
                        _loc2_.play();
                     }
                  }
                  continue;
                  addr127:
                  return;
               }
            }
         }
         §§goto(addr36);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = null;
         if(_loc3_ || _loc3_)
         {
            super.open(param1);
            loop0:
            while(true)
            {
               §§push(this.§8"-§);
               while(true)
               {
                  if(§§pop() == null)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(this.§8"-§);
                     if(!(_loc3_ || param1))
                     {
                        break;
                     }
                     §§pop().activate();
                     loop5:
                     while(true)
                     {
                        addr62:
                        while(true)
                        {
                           §>!E§.§7N§("Sound_BirdsApplause");
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §8"9§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc1_:* = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§<"+§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§<"+§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§<"+§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§<"+§ = null;
         if(_loc12_)
         {
            §§push(§`Z§);
            if(_loc12_ || _loc2_)
            {
               if(§§pop().§!!$§)
               {
                  if(!(_loc11_ && this))
                  {
                     _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
                     _loc4_ = new §<"+§(_loc3_,§`Z§.§!!$§);
                     if(!_loc11_)
                     {
                        mClip.PodiumContainer.TextField_Podium3.text.text = §`Z§.§!!$§.userName;
                        addr88:
                        §§push(§`Z§);
                        if(_loc12_)
                        {
                           if(§§pop().§9!2§)
                           {
                              if(!(_loc11_ && _loc2_))
                              {
                                 addr100:
                                 _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
                                 _loc6_ = new §<"+§(_loc5_,§`Z§.§9!2§);
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    mClip.PodiumContainer.TextField_Podium2.text.text = §`Z§.§9!2§.userName;
                                 }
                              }
                              addr150:
                              _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
                              _loc8_ = new §<"+§(_loc7_,§`Z§.§,!@§);
                              if(_loc12_)
                              {
                                 mClip.PodiumContainer.TextField_Podium1.text.text = §`Z§.§,!@§.userName;
                              }
                              var _loc2_:int = §`Z§.user.§9!Y§;
                              if(!(_loc11_ && _loc2_))
                              {
                                 §§push(§=1§.§,A§(_loc2_));
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc12_)
                                 {
                                    mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
                                    if(_loc12_)
                                    {
                                       addr206:
                                       if(§`Z§.user.§9!Y§ > 3)
                                       {
                                          if(!_loc11_)
                                          {
                                             addr213:
                                             _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
                                             if(_loc12_ || this)
                                             {
                                                mClip.getChildByName("OwnAvatarStar").visible = true;
                                                if(_loc12_ || _loc1_)
                                                {
                                                   _loc9_.visible = true;
                                                }
                                             }
                                             _loc10_ = new §<"+§(_loc9_,§`Z§.user);
                                          }
                                          else
                                          {
                                             addr284:
                                             mClip.getChildByName("GiftBox").visible = false;
                                          }
                                          §§goto(addr289);
                                       }
                                       else
                                       {
                                          mClip.getChildByName("OwnAvatarHolder").visible = false;
                                          if(_loc12_ || _loc2_)
                                          {
                                             mClip.getChildByName("OwnAvatarStar").visible = false;
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                §§goto(addr284);
                                             }
                                             addr289:
                                             return;
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr206);
                           }
                           §§push(§`Z§);
                           if(!(_loc11_ && _loc2_))
                           {
                              addr148:
                              if(!§§pop().§,!@§)
                              {
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr100);
               }
               §§goto(addr88);
            }
            §§goto(addr148);
         }
         §§goto(addr150);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            preClose();
            if(!(_loc1_ && _loc1_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
            do
            {
               §§push(this.§8"-§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     addr133:
                     while(true)
                     {
                        §§push(this.§8"-§);
                        addr135:
                        while(true)
                        {
                           §§pop().deActivate();
                           addr136:
                           while(true)
                           {
                           }
                        }
                     }
                     addr133:
                  }
                  loop1:
                  while(true)
                  {
                     this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
                     while(true)
                     {
                        this.§4!U§.reset();
                        loop3:
                        for(; !(_loc2_ && _loc1_); if(!(_loc1_ || this))
                        {
                           continue;
                        },§§goto(addr72))
                        {
                           this.§6x§.removeEventListener(TimerEvent.TIMER,this.§^!B§);
                           loop4:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 this.§6x§.reset();
                                 loop5:
                                 while(_loc1_)
                                 {
                                    this.§4!U§ = null;
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                       addr72:
                                       this.§6x§ = null;
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             break loop1;
                                          }
                                          break loop4;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue;
                              }
                              §§goto(addr133);
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr135);
            }
            while(!(_loc1_ || _loc1_));
            
            return;
         }
         §§goto(addr133);
      }
   }
}
