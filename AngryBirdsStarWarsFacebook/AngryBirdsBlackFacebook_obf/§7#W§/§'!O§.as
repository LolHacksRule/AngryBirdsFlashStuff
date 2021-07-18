package §7#W§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"W§.§="g§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §,"N§.§8"3§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §3§.§1"M§;
   import §3§.§<#A§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §;"Y§.§]#X§;
   import §<"c§.§?!W§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^!v§.§5!N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §'!O§ extends §?!W§
   {
      
      public static const §^!7§:String = "stateTournamentLevelEnd";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §^!7§ = "stateTournamentLevelEnd";
         }
      }
      
      private var §5"a§:Number;
      
      private var § <§:§5!N§;
      
      private var §6"7§:MovieClip;
      
      private var §?#F§:Boolean;
      
      public function §'!O§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function get restartUsesEnergyCrystal() : Boolean
      {
         return true;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §6!W§.§^!7§;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §8!]§.§^!7§;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§6"7§ = §9!#§.mClip.unlockTimer;
               while(true)
               {
                  this.§ <§ = new §5!N§(§9!#§,§@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§,true);
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     this.§?#F§ = false;
                     while(true)
                     {
                        this.§]"R§();
                        while(!(_loc3_ && this))
                        {
                           §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
                           continue loop0;
                           loop6:
                           while(!(_loc3_ && _loc3_))
                           {
                              while(true)
                              {
                                 §@#B§(§4#;§.singleton.dataModel).§%!?§.§+#U§(§8"3§.§@"U§);
                                 while(_loc2_)
                                 {
                                    §4#;§.singleton.popupManager.openPopup(new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§8i§,true),true,true,false);
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr19:
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§#$§();
         }
         loop0:
         while(true)
         {
            super.setScoreData();
            while(!§<!L§)
            {
               if(!_loc2_)
               {
                  §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,true);
               }
               if(_loc1_)
               {
                  continue loop0;
               }
            }
            addr24:
            return;
         }
      }
      
      protected function §#$§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§4#;§.singleton.dataModel.userProgress.getStarsForLevel(§+!b§.currentLevel,§@#B§(§4#;§.singleton.dataModel).§!!C§.getScoreForLevel(§+!b§.currentLevel)));
         if(_loc6_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:§]#X§ = §@;§.getItemByName("MovieClip_CoinLeft");
         var _loc3_:§]#X§ = §@;§.getItemByName("MovieClip_CoinMiddle");
         var _loc4_:§]#X§ = §@;§.getItemByName("MovieClip_CoinRight");
         var _loc5_:Array = §@#B§(§4#;§.singleton.dataModel).§!!C§.starCoinRewards;
         if(_loc6_)
         {
            _loc2_.mClip.gotoAndStop(1);
            loop0:
            while(true)
            {
               _loc2_.setVisibility(_loc1_ < 1);
               loop1:
               while(true)
               {
                  _loc2_.mClip.txtAmount.text = "x" + _loc5_[0];
                  loop2:
                  while(true)
                  {
                     _loc3_.mClip.gotoAndStop(1);
                     loop3:
                     while(true)
                     {
                        _loc3_.setVisibility(_loc1_ < 2);
                        while(true)
                        {
                           _loc3_.mClip.txtAmount.text = "x" + _loc5_[1];
                           while(!_loc7_)
                           {
                              loop7:
                              while(!(_loc7_ && _loc2_))
                              {
                                 _loc4_.setVisibility(_loc1_ < 3);
                                 while(true)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop1;
                           if(!(_loc7_ && this))
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc4_.mClip.gotoAndStop(1);
            §§goto(addr137);
         }
         §§goto(addr115);
      }
      
      override protected function lightStar(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            super.lightStar(param1);
         }
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         var _loc3_:MovieClip = §@;§.getItemByName(["MovieClip_CoinLeft","MovieClip_CoinMiddle","MovieClip_CoinRight"][_loc2_]).mClip;
         if(_loc5_)
         {
            _loc3_.gotoAndStop(2);
            while(true)
            {
               _loc3_.txtAmount.text = "x" + §@#B§(§4#;§.singleton.dataModel).§!!C§.starCoinRewards[_loc2_];
               loop4:
               while(_loc5_ || this)
               {
                  §@;§.addChild(§0!r§);
                  loop5:
                  while(true)
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue loop4;
                     }
                     addr70:
                     if(_loc5_ || this)
                     {
                        addr77:
                        if(!(_loc5_ || _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(!(_loc5_ || _loc2_))
                        {
                           while(true)
                           {
                              if(_loc3_.visible == true)
                              {
                                 break loop5;
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr48:
                           addr186:
                        }
                        §0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc3_.x + §^c§.x + 70,_loc3_.y + §^c§.y + 70,[§<#A§.§=!D§,§<#A§.§!&§,§<#A§.§?b§][_loc2_],_loc4_,§1"M§.§&!y§);
                        continue loop4;
                        return;
                        §§goto(addr70);
                     }
                  }
                  while(true)
                  {
                     §§push(10);
                     if(_loc5_)
                     {
                        §§push(int(null[_loc2_]));
                     }
                     _loc4_ = §§pop();
                     §§goto(addr153);
                     §§goto(addr77);
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §]"R§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:Object = null;
         var _loc1_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         var _loc2_:Object = _loc1_.§["^§(§+!b§.currentLevel);
         var _loc3_:int = _loc1_.levelObjects.indexOf(_loc2_);
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(_loc8_ || this)
         {
            if(_loc3_ + 1 < _loc1_.levelObjects.length)
            {
               if(_loc8_ || _loc1_)
               {
                  addr65:
                  §§push(Boolean((_loc6_ = _loc1_.levelObjects[_loc3_ + 1]).unlocksAt));
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           addr87:
                           §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc6_.unlocksAt > getTimer());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          §§goto(addr169);
                                       }
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              addr166:
                           }
                           addr169:
                           §§goto(addr150);
                        }
                        addr150:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc7_)
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              continue loop8;
                           }
                           continue loop6;
                        }
                        loop2:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_)
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 this.§5"a§ = _loc6_.unlocksAt;
                                 if(_loc8_ || _loc2_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                                       while(true)
                                       {
                                          §@;§.movieClip.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(_loc8_ || _loc3_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(true)
                                                {
                                                   §9!#§.setVisibility(_loc4_);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(this.§ <§);
                                                      while(true)
                                                      {
                                                         §§pop().isLocked = _loc5_;
                                                         break loop2;
                                                      }
                                                      addr224:
                                                   }
                                                }
                                                else
                                                {
                                                   addr170:
                                                }
                                                continue loop3;
                                                break loop2;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr193:
                                       §§push(this.§ <§);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§pop().§5!_§ = _loc6_;
                                          §§goto(addr204);
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr169);
                           }
                           break;
                        }
                        while(_loc6_)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr193);
                           }
                           §§goto(addr204);
                        }
                        addr204:
                        if(!(_loc8_ || _loc2_))
                        {
                           break loop2;
                        }
                        return;
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr87);
               }
            }
            else
            {
               _loc4_ = false;
            }
            §§goto(addr170);
         }
         §§goto(addr65);
      }
      
      override protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,true);
            while(true)
            {
               §7q§(§4#;§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§3#V§,§6d§);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,true);
            if(_loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ <§.dispose();
            loop0:
            while(true)
            {
               this.§ <§ = null;
               addr97:
               while(true)
               {
                  §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
                  addr80:
                  while(!_loc1_)
                  {
                     §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         do
         {
            super.deActivate();
            for(; _loc2_; §@#B§(§4#;§.singleton.dataModel).§!!C§.removeEventListener(§@"b§.§3R§,this.onTournamentOver),if(!_loc1_)
            {
               continue loop3;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr80);
         }
         while(_loc1_);
         
      }
      
      private function get §3"A§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§@#B§(§4#;§.singleton.dataModel).§%!?§.§5">§(§8"3§.§@"U§));
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc1_)
         {
            if(!_loc1_)
            {
               if(_loc4_)
               {
                  return true;
               }
            }
         }
         var _loc2_:Date = new Date(_loc1_);
         var _loc3_:Date = new Date();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.day == _loc3_.day);
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
                              §§push(_loc2_.month == _loc3_.month);
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr155:
                                 while(!_loc5_)
                                 {
                                 }
                                 addr94:
                                 continue loop1;
                                 if(_loc5_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc5_)
                                 {
                                    addr104:
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(true);
                                                while(true)
                                                {
                                                   if(_loc5_ && _loc1_)
                                                   {
                                                      §§goto(addr155);
                                                   }
                                                   addr130:
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                return §§pop();
                                                addr123:
                                             }
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc2_.fullYear == _loc3_.fullYear);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr104);
                                                addr162:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop10;
                                                   §§goto(addr104);
                                                }
                                             }
                                          }
                                          §§push(false);
                                          if(_loc5_ && _loc1_)
                                          {
                                             §§goto(addr123);
                                          }
                                          return §§pop();
                                          addr113:
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr123);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr162);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr130);
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § g§(§6!W§.§^!7§);
         }
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = Number(Math.floor((this.§5"a§ - getTimer()) / 1000));
         if(!(_loc7_ && param1))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     this.§+n§();
                     if(!(_loc7_ && _loc2_))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 loop2:
                                 while(!_loc7_)
                                 {
                                    this.§6"7§.txtTimer.text = _loc2_.toString() + " sec";
                                    loop3:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr41:
                                             return;
                                             addr45:
                                          }
                                          addr347:
                                          this.§6"7§.txtTimer.visible = false;
                                          break loop2;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(60);
                                             loop6:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc2_);
                                                if(_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(60);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr281:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop10:
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(60);
                                                                     loop12:
                                                                     while(!_loc7_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop13:
                                                                        while(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              addr256:
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 addr257:
                                                                                 while(!_loc7_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    break loop3;
                                                                                 }
                                                                                 addr355:
                                                                                 if(!(_loc6_ || _loc2_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr389:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          addr350:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                break loop10;
                                                                                             }
                                                                                             addr318:
                                                                                             this.§6"7§.gotoAndStop("hours");
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   this.§6"7§.txtTimer.visible = true;
                                                                                                   continue loop4;
                                                                                                }
                                                                                                addr370:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr381:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(60);
                                                                                                      addr382:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         break loop13;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr363:
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             addr364:
                                                                                             §§goto(addr365);
                                                                                             §§push(4);
                                                                                          }
                                                                                          break loop3;
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    addr388:
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§push(§§pop() * (§§pop() * §§pop()));
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr384:
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       addr170:
                                                                                       §§push(60);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc7_ && param1)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                    addr180:
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * 24);
                                                                                    break loop13;
                                                                                 }
                                                                                 addr384:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 break loop6;
                                                                                 §§goto(addr384);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr384);
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                         }
                                                      }
                                                      addr279:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr281);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr388);
                                             }
                                          }
                                       }
                                    }
                                    this.§6"7§.gotoAndStop("days_" + _loc3_);
                                    §§goto(addr347);
                                 }
                                 if(_loc7_ && param1)
                                 {
                                    §§goto(addr365);
                                 }
                                 §§goto(addr45);
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr260);
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 this.§6"7§.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
                                 while(_loc6_)
                                 {
                                    if(_loc7_ && param1)
                                    {
                                       §§goto(addr389);
                                    }
                                    §§goto(addr41);
                                 }
                                 §§goto(addr364);
                                 addr99:
                              }
                           }
                           addr236:
                        }
                        §§goto(addr318);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr370);
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§push(int(§§pop()));
               if(!_loc7_)
               {
                  if(!(_loc7_ && param1))
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc5_ = §§pop();
                        §§goto(addr236);
                     }
                     §§goto(addr350);
                  }
                  §§goto(addr365);
               }
               §§goto(addr257);
            }
         }
         §§goto(addr389);
      }
      
      protected function §+n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§ <§);
            loop0:
            while(true)
            {
               if(!§§pop().§5!_§)
               {
                  loop6:
                  while(true)
                  {
                     §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                     loop7:
                     while(!_loc2_)
                     {
                        if(_loc1_ || this)
                        {
                           while(true)
                           {
                              §§push(this.§ <§);
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              if(!_loc2_)
                              {
                                 §§pop().isLocked = false;
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              addr99:
                              while(true)
                              {
                                 delete §§pop().§5!_§.unlocksAt;
                              }
                           }
                           return;
                           addr67:
                        }
                        while(true)
                        {
                           §§push(this.§ <§);
                           continue loop0;
                        }
                     }
                     addr80:
                     while(!_loc2_)
                     {
                        continue loop6;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr67);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§@#B§ = null;
         var _loc5_:§@"b§ = null;
         var _loc6_:§[!j§ = null;
         if(!_loc8_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push("REPLAY");
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc8_ && param1))
                           {
                              §§pop();
                              if(!(_loc8_ && this))
                              {
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    §§push("NEXT_LEVEL");
                                    if(_loc7_)
                                    {
                                       addr161:
                                       §§push(§§pop() == §§pop());
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§pop();
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0);
                                                   loop5:
                                                   for(; !_loc8_; if(!(_loc7_ || param1))
                                                   {
                                                      continue;
                                                   },if(!§§pop())
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr209);
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push("REPLAY");
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(this.§7"e§(§+!b§.currentLevel));
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr209:
                                                                     if(param2 == "NEXT_LEVEL")
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           §§goto(addr218);
                                                                        }
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            return;
                                                            addr100:
                                                            addr39:
                                                         }
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §4#;§.singleton.popupManager.openPopup(new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP),true,true,true);
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               return;
                                                            }
                                                            addr406:
                                                            §§goto(addr401);
                                                         }
                                                         addr218:
                                                         §§push(this.§ <§);
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(§§pop().isLocked);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               addr235:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            break loop2;
                                                         }
                                                         §§goto(addr245);
                                                         addr401:
                                                         addr401:
                                                         super.onUIInteraction(param1,param2,param3);
                                                         return;
                                                         §§goto(addr401);
                                                      }
                                                   }
                                                   continue loop3;
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   § g§(this.getMenuButtonTargetState());
                                                   if(_loc7_ || param3)
                                                   {
                                                      §§goto(addr100);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr245);
                                                   }
                                                }
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr123);
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr401);
                           }
                           break;
                        }
                        §§goto(addr161);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§goto(addr249);
                     }
                     else
                     {
                        §§goto(addr406);
                     }
                  }
                  addr249:
                  if(_loc7_ || param1)
                  {
                     addr245:
                     §§push(this.§ <§.canBuyToUnlock);
                     break loop2;
                  }
                  if((_loc4_ = §@#B§(§4#;§.singleton.dataModel)).§`!W§.starCoins >= this.§ <§.§?!N§)
                  {
                     if(!(_loc8_ && this))
                     {
                        this.§ <§.canBuyToUnlock = false;
                     }
                     _loc5_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                     if(!_loc8_)
                     {
                        this.§?#F§ = _loc5_.§!!e§;
                     }
                     loop8:
                     while(true)
                     {
                        _loc5_.§!!e§ = true;
                        addr356:
                        while(true)
                        {
                           _loc4_.§`!W§.§12§(this.§ <§.§?!N§);
                           continue loop8;
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                     if(_loc7_)
                     {
                        §4#;§.singleton.popupManager.openPopup(_loc6_,true,true,true);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §"#^§(param1:§="g§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@"b§ = null;
         if(_loc3_)
         {
            §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
            if(!(_loc4_ && param1))
            {
               if(!this.§?#F§)
               {
                  if(!_loc4_)
                  {
                     _loc2_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                     if(_loc3_)
                     {
                        _loc2_.§!!e§ = false;
                     }
                  }
                  §§goto(addr91);
               }
               this.§+n§();
               if(!(_loc4_ && _loc3_))
               {
                  addr86:
                  this.onUIInteraction(-1,"NEXT_LEVEL",§,>§);
               }
            }
            addr91:
            return;
         }
         §§goto(addr86);
      }
      
      private function §7"e§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_.isLoading);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr62:
                        §§pop();
                        §§push(_loc2_.§["^§(§+!b§.currentLevel) == null);
                        if(!(_loc4_ && param1))
                        {
                           addr86:
                           return !§§pop();
                        }
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr86);
         }
         §§goto(addr62);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7"e§(§+!b§.currentLevel));
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr114:
                        loop2:
                        while(true)
                        {
                           §§push(this.§7"e§(§+!b§.getNextLevelId()));
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop3;
                              }
                              addr67:
                              §§push(!§§pop());
                              while(true)
                              {
                                 break loop2;
                                 §§goto(addr67);
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr77:
                                 § g§(this.getMenuButtonTargetState());
                                 break;
                              }
                              break;
                           }
                           super.loadNextLevel();
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr19);
                           }
                           §§goto(addr114);
                        }
                        addr19:
                        return;
                     }
                     addr113:
                  }
                  §§goto(addr68);
               }
            }
            §§goto(addr113);
         }
         §§goto(addr77);
      }
      
      override protected function getRankForLevel() : int
      {
         return §@#B§(§4#;§.singleton.dataModel).§!!C§.getRankForLevel(§+!b§.currentLevel);
      }
   }
}
