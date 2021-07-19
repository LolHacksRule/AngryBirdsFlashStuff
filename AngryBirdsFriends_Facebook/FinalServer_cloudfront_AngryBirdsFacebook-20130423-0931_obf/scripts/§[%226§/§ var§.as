package §["6§
{
   import §%!I§.§]!M§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§#!,§;
   import §,l§.§1U§;
   import §,l§.§7"L§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §0D§.§`!k§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §30§.§'"+§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §6!H§.§6!e§;
   import §8m§.§@"M§;
   import §9@§.§!"P§;
   import §9@§.§@q§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § var§ extends Popup implements §&!l§
   {
      
      private static var §]?§:§7"L§;
       
      
      private var §>"P§:StatePopupManager;
      
      protected var §^"W§:Timer;
      
      private var §%!d§:§^!C§;
      
      private var §4!u§:§6!F§;
      
      private var §7!j§:Boolean;
      
      private var §7!X§:int;
      
      public function § var§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§7!j§ = param3;
            while(true)
            {
               super(§ "<§.§%I§.Views.PopupView_TournamentLastResults[0],param1);
               while(_loc5_ || param1)
               {
                  this.§>"P§ = param2;
                  loop2:
                  while(_loc5_ || param1)
                  {
                     while(true)
                     {
                        this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
                        if(_loc5_ || param3)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public static function §`";§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         if(_loc5_ || _loc3_)
         {
            if(!§3!R§.§&"5§.lastResult)
            {
               if(_loc5_ || _loc1_)
               {
                  return false;
               }
            }
         }
         §]?§ = new §7"L§();
         var _loc2_:int = 0;
         var _loc3_:* = §3!R§.§&"5§.lastResult.players;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc4_)
            {
               if(_loc1_.u != (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §]?§.user = §1U§.§?$§(_loc1_);
               }
            }
            break;
         }
         if(_loc5_)
         {
            §§push(§]?§);
            loop1:
            while(true)
            {
               §§push(§1!S§(1));
               loop2:
               while(true)
               {
                  §§pop().§;"O§ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§]?§);
                     while(true)
                     {
                        §§push(§1!S§(2));
                        addr230:
                        while(_loc5_)
                        {
                           §§pop().§ !e§ = §§pop();
                           while(true)
                           {
                              §§push(§]?§);
                              continue loop1;
                           }
                        }
                        continue loop2;
                        addr156:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(§3!R§.§&"5§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop().§5q§ = §§pop().lastResult.prizes[0].quantity;
                           while(true)
                           {
                              §@q§.§2!f§(§3!R§.§&"5§.lastResult.players.length);
                              loop13:
                              while(true)
                              {
                                 §@q§.§[!_§(§@q§.§ O§,§]?§.§5"6§,§]?§.§5q§);
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop13;
                                 }
                                 addr189:
                                 addr222:
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    addr196:
                                    §§push(§]?§);
                                    if(!_loc4_)
                                    {
                                       addr149:
                                       if(_loc4_ && _loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr156);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§3!R§.§&"5§);
                                          §§goto(addr196);
                                       }
                                       addr181:
                                    }
                                 }
                                 while(!_loc4_)
                                 {
                                    §§goto(addr181);
                                    §§push(§]?§);
                                    §§goto(addr189);
                                 }
                                 continue loop3;
                              }
                              if(_loc4_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr233);
                           }
                           return true;
                           addr178:
                        }
                        while(true)
                        {
                           §§pop().§5"6§ = §§pop().lastResult.prizes[0].itemId;
                           §§goto(addr189);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      private static function §1!S§(param1:int) : §1U§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§@"E§ = null;
         if(_loc6_ || § var§)
         {
            §§push(§3!R§.§&"5§);
            if(_loc6_ || param1)
            {
               if(§§pop().lastResult)
               {
                  if(!_loc7_)
                  {
                     addr44:
                     if(§3!R§.§&"5§.lastResult.players)
                     {
                        §§goto(addr47);
                     }
                  }
                  §§goto(addr47);
               }
               return null;
            }
            §§goto(addr44);
         }
         addr47:
         var _loc4_:int = 0;
         var _loc5_:* = §3!R§.§&"5§.lastResult.players;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc7_)
               {
                  if(_loc2_ == null)
                  {
                     continue;
                  }
                  if(_loc6_ || § var§)
                  {
                     addr84:
                     if(_loc2_.r != param1)
                     {
                        continue;
                     }
                  }
                  _loc3_ = §&k§.§`!]§(_loc2_.u);
                  if(_loc6_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr115:
                     _loc2_.n = _loc3_.name;
                     if(!(_loc7_ && § var§))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr115);
               }
               §§goto(addr84);
            }
         }
         return §1U§.§?$§(_loc2_);
      }
      
      public static function get §!Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§]?§ == null);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
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
            if(!(_loc7_ && this))
            {
               §§push("CLAIM_PRIZE");
               if(_loc8_)
               {
                  §§push(_loc6_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && param1))
                        {
                           addr150:
                           §§push(0);
                           if(_loc8_ || this)
                           {
                           }
                        }
                        else
                        {
                           addr188:
                           §§push(1);
                           if(_loc7_ && param2)
                           {
                              addr208:
                           }
                        }
                     }
                     else
                     {
                        §§push("SHARE_TOURNAMENT");
                        if(!(_loc7_ && this))
                        {
                           addr167:
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              addr170:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    §§goto(addr188);
                                 }
                                 addr213:
                                 loop1:
                                 while(true)
                                 {
                                    loop6:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§8"-§();
                                          break;
                                          addr123:
                                       case 1:
                                          AngryBirdsFP11.§>m§.§^X§();
                                          while(true)
                                          {
                                             §§push(int(§]?§.user.§'Q§));
                                             if(_loc8_)
                                             {
                                                §§push(_loc4_ = §§pop());
                                                if(_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                          continue loop0;
                                          addr118:
                                       case 2:
                                          this.deActivate();
                                          if(!(_loc7_ && this))
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                if(!(_loc7_ && param3))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      this.deActivate();
                                                   }
                                                   addr51:
                                                }
                                                else
                                                {
                                                   §§goto(addr123);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   break loop6;
                                                }
                                                addr109:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §'"+§.§'!#§("shareTournamentRank",_loc5_,§]!M§.§<Y§(§]?§.user.§?&§));
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         break loop6;
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr118);
                                                   }
                                                }
                                                break loop6;
                                             }
                                          }
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 addr199:
                                 if("CLOSE_POPUP" !== _loc6_)
                                 {
                                    §§goto(addr213);
                                    §§push(3);
                                 }
                                 §§goto(addr213);
                              }
                              §§push(2);
                              if(_loc8_ || param1)
                              {
                                 §§goto(addr208);
                              }
                              §§goto(addr213);
                           }
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr170);
               }
               §§goto(addr167);
            }
            §§goto(addr150);
         }
      }
      
      private function §8"-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§]?§)
            {
               if(_loc2_)
               {
                  this.close();
                  if(!_loc3_)
                  {
                     return;
                  }
                  loop10:
                  while(true)
                  {
                     addr147:
                     loop6:
                     while(true)
                     {
                        §§push(this.§4!u§);
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_)
                           {
                              §§push(§]?§.§5q§);
                              if(_loc2_)
                              {
                                 addr163:
                                 §§pop().§5!q§(§§pop());
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       addr220:
                                       while(true)
                                       {
                                          if(!this.§7!j§)
                                          {
                                             §§push(this.§4!u§);
                                             break loop6;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§4!u§);
                                       addr211:
                                       while(true)
                                       {
                                          §§push(this.§7!X§);
                                          addr213:
                                          while(true)
                                          {
                                             §§pop().§!!J§(§§pop());
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 mClip.GiftCarouselContainer.txtRewardAmount.text = §]?§.§5q§ + " x";
                                 loop0:
                                 while(true)
                                 {
                                    this.§^"W§ = new Timer(1500,1);
                                    loop1:
                                    while(_loc2_)
                                    {
                                       this.§^"W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!x§);
                                       loop2:
                                       while(!(_loc3_ && this))
                                       {
                                          while(true)
                                          {
                                             this.§^"W§.start();
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    addr204:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 addr164:
                                 return;
                                 addr146:
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop().§!!J§(§§pop() + §]?§.§5q§);
                                    §§goto(addr204);
                                 }
                                 else
                                 {
                                    §§goto(addr213);
                                 }
                              }
                              §§goto(addr163);
                              addr193:
                           }
                           §§goto(addr211);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr193);
                        §§goto(addr147);
                     }
                  }
                  addr214:
               }
               §§goto(addr146);
            }
            else
            {
               while(true)
               {
                  getItemByName("ClaimPrizeButton").setVisibility(false);
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  getItemByName("GiftCarouselContainer").setVisibility(true);
                  if(!_loc3_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     mClip.GiftCarouselContainer.mouseEnabled = mClip.GiftCarouselContainer.mouseChildren = false;
                     if(_loc2_ || this)
                     {
                        mClip.getChildByName("GiftBox").visible = false;
                        §§goto(addr220);
                     }
                     §§goto(addr126);
                  }
                  break;
               }
               addr29:
            }
            §§goto(addr214);
         }
         §§goto(addr29);
      }
      
      private function §^!x§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6!K§ = null;
         if(!(_loc3_ && _loc3_))
         {
            this.§^"W§.reset();
            loop0:
            while(true)
            {
               this.§^"W§.removeEventListener(TimerEvent.TIMER,this.§^!x§);
               loop1:
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     getItemByName("Button_Close").setVisibility(true);
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(§]?§.user.§'Q§ > 3)
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              getItemByName("ShareTournamentButton").setVisibility(true);
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     §§goto(addr127);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr62);
            }
            else
            {
               _loc2_ = §0W§.§&"5§.§]!r§(mClip.GiftCarouselContainer,{
                  "alpha":0,
                  "scaleX":0.3,
                  "scaleY":0.3
               },{
                  "alpha":1,
                  "scaleX":1,
                  "scaleY":1
               },0.33,§0W§.§4!E§);
               if(!(_loc3_ && this))
               {
                  _loc2_.play();
               }
            }
            addr127:
            return;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = null;
         if(!(_loc3_ && _loc2_))
         {
            super.open(param1);
            loop0:
            while(true)
            {
               this.§7!X§ = §%"S§.§!C§.§9"%§.§,T§.§0Q§;
               addr122:
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               this.§%!d§ = new §^!C§(mClip.CombinedBackground.FireworksArea);
               loop3:
               while(true)
               {
                  addr96:
                  loop4:
                  while(true)
                  {
                     §§push(this.§%!d§);
                     if(!_loc3_)
                     {
                        §§pop().activate();
                        loop5:
                        while(!(_loc3_ && _loc3_))
                        {
                           this.§?!f§(new §6!F§(this,true,false,false));
                           while(true)
                           {
                              this.§-"U§();
                              loop7:
                              while(true)
                              {
                                 addr65:
                                 while(true)
                                 {
                                    §@"M§.§3"C§("Sound_BirdsApplause");
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!§!Q§)
                                          {
                                             break;
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§`&§();
                                                   continue loop7;
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr65);
                              }
                              _loc2_ = §3!R§.§&"5§.§7!f§;
                              if(_loc4_)
                              {
                                 mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
                                 addr181:
                                 mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
                                 if(!_loc3_)
                                 {
                                    mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
                                    if(!_loc3_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr181);
                                       }
                                       addr202:
                                       return;
                                    }
                                    §§goto(addr181);
                                    addr192:
                                 }
                                 addr201:
                                 §§goto(addr201);
                              }
                              §§goto(addr192);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§%!d§);
                           break loop4;
                           §§goto(addr102);
                        }
                        addr102:
                        addr145:
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue loop3;
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr145);
      }
      
      private function §-"U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§7!j§)
            {
               §§push(this.§4!u§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.§7!X§);
                  if(_loc2_)
                  {
                     §§pop().§!!J§(§§pop());
                     if(_loc2_ || this)
                     {
                     }
                  }
                  §§goto(addr87);
               }
               else
               {
                  addr81:
                  §§push(this.§7!X§);
               }
               §§pop().§!!J§(§§pop() - §]?§.§5q§);
            }
            §§goto(addr87);
         }
         addr87:
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§4!u§);
         }
      }
      
      public function §`&§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc1_:* = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§`!k§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§`!k§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§`!k§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§`!k§ = null;
         if(_loc11_)
         {
            §§push(§]?§);
            if(!(_loc12_ && _loc3_))
            {
               if(§§pop().§3J§)
               {
                  if(!_loc12_)
                  {
                     _loc3_ = mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
                     _loc4_ = new §`!k§(_loc3_,§]?§.§3J§);
                     if(!(_loc12_ && _loc2_))
                     {
                        mClip.PodiumContainer.TextField_Podium3.text.text = §]?§.§3J§.userName;
                     }
                  }
                  §§goto(addr144);
               }
               §§push(§]?§);
               if(_loc11_ || _loc3_)
               {
                  if(§§pop().§ !e§)
                  {
                     if(_loc11_)
                     {
                        _loc5_ = mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
                        _loc6_ = new §`!k§(_loc5_,§]?§.§ !e§);
                        if(!(_loc12_ && this))
                        {
                           mClip.PodiumContainer.TextField_Podium2.text.text = §]?§.§ !e§.userName;
                        }
                     }
                     §§goto(addr144);
                  }
                  §§push(§]?§);
                  if(_loc12_)
                  {
                  }
                  §§goto(addr144);
               }
               if(!§§pop().§;"O§)
               {
               }
            }
            §§goto(addr144);
         }
         addr144:
         _loc7_ = mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
         _loc8_ = new §`!k§(_loc7_,§]?§.§;"O§);
         if(_loc11_ || this)
         {
            mClip.PodiumContainer.TextField_Podium1.text.text = §]?§.§;"O§.userName;
         }
         var _loc2_:int = §]?§.user.§'Q§;
         if(_loc11_)
         {
            §§push(§!"P§.§>!9§(_loc2_));
            if(_loc11_ || _loc2_)
            {
               §§push(§§pop());
            }
            _loc1_ = §§pop();
            if(_loc11_ || this)
            {
               mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
               if(_loc11_)
               {
                  if(§]?§.user.§'Q§ > 3)
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        _loc9_ = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
                        if(!_loc12_)
                        {
                           mClip.getChildByName("OwnAvatarStar").visible = true;
                           if(!(_loc12_ && this))
                           {
                              addr243:
                              _loc9_.visible = true;
                           }
                           _loc10_ = new §`!k§(_loc9_,§]?§.user);
                           §§goto(addr288);
                        }
                        §§goto(addr243);
                     }
                     else
                     {
                        addr271:
                        mClip.getChildByName("OwnAvatarStar").visible = false;
                        if(_loc12_ && _loc1_)
                        {
                        }
                        §§goto(addr288);
                     }
                  }
                  else
                  {
                     mClip.getChildByName("OwnAvatarHolder").visible = false;
                     if(!_loc12_)
                     {
                        §§goto(addr271);
                     }
                     §§goto(addr288);
                  }
                  §§goto(addr288);
               }
               mClip.getChildByName("GiftBox").visible = false;
               §§goto(addr288);
            }
            §§goto(addr271);
         }
         addr288:
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§4!u§ = param1;
         }
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip.walletContainer;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
            do
            {
               super.deActivate();
               do
               {
                  preClose();
               }
               while(_loc2_ && this);
               
            }
            while(!_loc1_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
            loop0:
            while(true)
            {
               §#!,§.§&"5§.§@J§();
               loop1:
               while(true)
               {
                  super.close();
                  loop2:
                  while(true)
                  {
                     §§push(this.§%!d§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§%!d§);
                              addr128:
                              addr82:
                              while(true)
                              {
                                 §§pop().deActivate();
                                 addr129:
                                 while(true)
                                 {
                                 }
                              }
                              while(!(_loc1_ && _loc1_))
                              {
                                 continue loop2;
                                 loop7:
                                 for(; !(_loc1_ && this); while(true)
                                 {
                                    this.§^"W§ = null;
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 },return)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    addr102:
                                    while(_loc2_ || _loc2_)
                                    {
                                       if(this.§^"W§)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop7;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr129);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§!U§(this.§4!u§);
                           §§goto(addr102);
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr128);
                  }
               }
            }
         }
         while(true)
         {
            this.§^"W§.removeEventListener(TimerEvent.TIMER,this.§^!x§);
            §§goto(addr82);
         }
      }
   }
}
