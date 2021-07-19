package §<"c§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"e§.§9#B§;
   import §!"e§.SyncPopup;
   import §!"e§.TournamentUnlockedPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §7#W§.§6!W§;
   import §9p§.§#"T§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §?m§.§3![§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^!v§.§ ?§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §?!W§ extends §""o§
   {
      
      public static const §0#G§:int = 9;
      
      public static const §=q§:String = "2";
      
      private static var §'"q§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0#G§ = 9;
            while(true)
            {
               §=q§ = "2";
               while(!(_loc1_ && _loc1_))
               {
                  §'"q§ = 0;
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      protected var §5#?§:String;
      
      protected var §5M§:§9#B§;
      
      protected var §"!c§:§ ?§;
      
      protected var §4!&§:Boolean;
      
      protected var §'#[§:Boolean;
      
      protected var §=3§:Boolean;
      
      protected var §2"'§:Boolean;
      
      protected var §0"S§:Boolean;
      
      protected var §2!w§:§^"m§;
      
      protected var §6U§:MovieClip;
      
      protected var §-"X§:Boolean = false;
      
      protected var §`"Z§:§#"T§;
      
      protected var §5!r§:§@"A§;
      
      protected var §]"b§:§^"m§;
      
      public function §?!W§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      protected function get restartUsesEnergyCrystal() : Boolean
      {
         return false;
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.init();
            if(_loc3_)
            {
               this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
               loop0:
               while(true)
               {
                  §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§ A§();
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§2!w§ = §^"m§(§@;§.getItemByName("Button_Tournament"));
                        loop1:
                        while(true)
                        {
                           this.§6U§ = §@;§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
                           loop2:
                           for(; !_loc2_; if(_loc3_ || _loc1_)
                           {
                              continue loop1;
                           })
                           {
                              this.§]"b§ = §^"m§(§^c§.getItemByName("Button_NextLevelLocked"));
                              while(true)
                              {
                                 addr31:
                                 while(true)
                                 {
                                    §9!#§.mClip.unlockTimer.visible = false;
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           this.§]"b§.setVisibility(false);
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr31);
                                 }
                                 §9!#§.mClip.unlockTimer.mouseEnabled = §9!#§.mClip.unlockTimer.mouseChildren = false;
                                 §§goto(addr155);
                              }
                              §§goto(addr62);
                           }
                           §§goto(addr155);
                        }
                     }
                  }
               }
               addr131:
            }
            addr155:
            return;
         }
         §§goto(addr131);
      }
      
      override protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      override public function activate(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§[!j§ = null;
         if(_loc7_)
         {
            this.§4!&§ = false;
            loop0:
            while(true)
            {
               this.§2"'§ = true;
               loop1:
               while(true)
               {
                  this.§0"S§ = false;
                  loop2:
                  while(true)
                  {
                     super.activate(param1);
                     if(_loc6_)
                     {
                        break;
                     }
                     §@;§.getItemByName("Button_Share").setVisibility(false);
                     loop3:
                     while(true)
                     {
                        this.§'#[§ = false;
                        loop4:
                        while(true)
                        {
                           this.§=3§ = false;
                           while(true)
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                              addr62:
                              if(_loc7_ || _loc2_)
                              {
                                 §""v§.addCallback("crownShared",this.§0!<§);
                                 if(_loc7_ || this)
                                 {
                                    if(false)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          this.setButtonAlignment();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr48:
                                             if(_loc7_ || this)
                                             {
                                                addr55:
                                                if(_loc6_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr62);
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(!_loc6_)
                                                   {
                                                      this.§5!r§ = new §@"A§(§^c§,§^c§.getItemByName("MovieClip_PowerupReward").mClip);
                                                      break loop12;
                                                   }
                                                   continue loop1;
                                                   addr119:
                                                }
                                                §@;§.getItemByName("MovieClip_PowerupReward").setVisibility(false);
                                                if(_loc6_)
                                                {
                                                   break loop2;
                                                }
                                                addr78:
                                                if(!(_loc6_ && this))
                                                {
                                                   addr85:
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §[N§.addEventListener(§ ?§.§[!9§,this.onBadgeLanded);
                                                      continue loop12;
                                                   }
                                                   continue loop3;
                                                   §§goto(addr78);
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§5!r§.addEventListener(§ ?§.§[!9§,this.onBadgeLanded);
                                                §§goto(addr113);
                                                §§goto(addr85);
                                             }
                                          }
                                          break loop2;
                                       }
                                       while(true)
                                       {
                                          if(§^c§.getItemByName("MovieClip_PowerupReward"))
                                          {
                                             §§goto(addr119);
                                          }
                                          §§goto(addr95);
                                          §§goto(addr55);
                                       }
                                       addr137:
                                    }
                                    var _loc4_:*;
                                    §§push((_loc4_ = §§findproperty(§'"q§)).§'"q§);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       _loc4_.§'"q§ = _loc5_;
                                    }
                                    break loop2;
                                 }
                                 break loop2;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§.§;!C§);
                  if(_loc7_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§'"q§ == 2);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 §§pop();
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(this.§#F§);
                                    if(!_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc6_)
                                       {
                                          §§goto(addr276);
                                       }
                                    }
                                    addr276:
                                    addr277:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          addr285:
                                          §§pop();
                                          §§goto(addr293);
                                       }
                                    }
                                    if(!§§pop())
                                    {
                                    }
                                    §§goto(addr293);
                                 }
                                 addr293:
                                 if(_loc7_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc7_)
                                    {
                                       addr291:
                                       §§push(!§§pop());
                                    }
                                 }
                                 _loc3_ = new TournamentUnlockedPopup(§`"W§.§+v§,§+5§.DEFAULT,TournamentUnlockedPopup.§ !e§);
                                 if(_loc7_)
                                 {
                                    §4#;§.singleton.popupManager.openPopup(_loc3_,true,true,true);
                                 }
                                 return;
                              }
                              §§goto(addr285);
                           }
                           §§goto(addr276);
                        }
                        §§goto(addr277);
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr285);
               }
            }
         }
         while(true)
         {
            this.§"!c§ = new § ?§(§^c§);
            §§goto(addr137);
         }
      }
      
      protected function § A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@;§.getItemByName("MovieClip_CoinLeft").mClip.gotoAndStop(1);
            do
            {
               §@;§.getItemByName("MovieClip_CoinMiddle").mClip.gotoAndStop(1);
               do
               {
                  §@;§.getItemByName("MovieClip_CoinRight").mClip.gotoAndStop(1);
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
            loop0:
            while(true)
            {
               §[N§.removeEventListener(§ ?§.§[!9§,this.onBadgeLanded);
               loop1:
               while(true)
               {
                  §§push(this.§5!r§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§5!r§);
                           addr191:
                           while(true)
                           {
                              §§pop().removeEventListener(§ ?§.§[!9§,this.onBadgeLanded);
                              loop7:
                              while(true)
                              {
                                 §§push(this.§5!r§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().dispose();
                                 loop8:
                                 while(true)
                                 {
                                    this.§5!r§ = null;
                                    loop9:
                                    while(_loc1_)
                                    {
                                       addr170:
                                       while(true)
                                       {
                                          §§push(this.§"!c§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§ ?§.§[!9§);
                                             loop5:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(§§pop(),this.§&!u§);
                                                addr163:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§"!c§);
                                                   loop11:
                                                   for(; !(_loc2_ && _loc2_); §§push(this.§"!c§),if(_loc2_ && this)
                                                   {
                                                      continue;
                                                   },§§pop().dispose(),loop13:
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            this.§"!c§ = null;
                                                            while(true)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§`"Z§ = null;
                                                                  while(true)
                                                                  {
                                                                     this.§-"X§ = false;
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.§5M§.§="M§();
                                                                              continue;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               §""v§.§&z§("crownShared",this.§0!<§);
                                                               §§goto(addr45);
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                   })
                                                   {
                                                      §§push(§ ?§.§="<§);
                                                      if(_loc1_)
                                                      {
                                                         §§pop().removeEventListener(§§pop(),this.§6!s§);
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue;
                                                         addr147:
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr191);
               }
            }
         }
         §§goto(addr163);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.update(param1);
            do
            {
               this.§"!c§.update(param1);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function get §#F§() : Boolean
      {
         return §">§.isLevelPassed(§+!b§.getEpisodeByName(§=q§).getLevelName(§0#G§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         var _loc1_:§3![§ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
         var _loc2_:Boolean = §">§.isLevelPassed(§+!b§.currentLevel);
         §§push(_loc1_.getLevelIndex(§+!b§.currentLevel));
         if(_loc7_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc8_)
         {
            §§push(int(§§pop() + 1));
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc1_.name == "2");
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              §§push(§§pop() == §0#G§);
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc8_ && _loc1_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§4!&§ = false;
                                                                  if(_loc7_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           this.§2"'§ = false;
                                                                           addr68:
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 loop11:
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§#F§);
                                                                                       if(!(_loc8_ && _loc1_))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop11;
                                                                                             }
                                                                                             addr153:
                                                                                          }
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              addr120:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ || _loc2_))
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 this.§4!&§ = true;
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr68);
                                                               }
                                                               §§goto(addr120);
                                                            }
                                                            §§push(§0#G§);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() - _loc3_);
                                                               }
                                                               §§push(int(§§pop()));
                                                               break loop3;
                                                            }
                                                            break loop3;
                                                            addr118:
                                                         }
                                                      }
                                                      continue loop6;
                                                      addr141:
                                                   }
                                                   §§goto(addr153);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                              }
                              addr163:
                           }
                           break;
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           addr512:
                           §§push(!this.§4!&§ && _loc1_.name == "2");
                           if(!this.§4!&§ && _loc1_.name == "2")
                           {
                              addr496:
                              if(!_loc8_)
                              {
                                 §§pop();
                                 addr509:
                                 §§push(_loc5_ > 0);
                                 if(_loc5_ > 0)
                                 {
                                    addr479:
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§pop();
                                       addr487:
                                       §§push(!_loc2_);
                                       §§push(!_loc2_);
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr456:
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         addr471:
                                                         §§push(this.§#F§);
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr342:
                                                                     §§push(!§§pop());
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              addr358:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr360:
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§4#;§.singleton.§4#,§.getLocalizedString("levelend_unlock_tournament"));
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().replace("[count]",_loc5_));
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   addr410:
                                                                                                   §§push(_loc6_ = §§pop());
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      addr418:
                                                                                                      §§push("[levels]");
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(_loc5_ == 1)
                                                                                                         {
                                                                                                            addr432:
                                                                                                            _loc6_ = §§pop().replace(§§pop(),"level");
                                                                                                            this.§6U§.txtLabel.text = _loc6_;
                                                                                                            this.§6U§.visible = true;
                                                                                                            addr298:
                                                                                                            super.setScoreData();
                                                                                                            addr301:
                                                                                                            addr433:
                                                                                                            addr324:
                                                                                                            addr317:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(§<!L§)
                                                                                                               {
                                                                                                                  if(_loc7_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    this.saveLevelProgress();
                                                                                                                                    addr290:
                                                                                                                                    if(_loc7_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §@!m§(§4#;§.singleton).§""s§.§!d§();
                                                                                                                                       addr230:
                                                                                                                                       if(_loc7_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr203:
                                                                                                                                          §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr471);
                                                                                                                                                }
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             §§goto(addr301);
                                                                                                                                          }
                                                                                                                                          §§goto(addr230);
                                                                                                                                       }
                                                                                                                                       §§goto(addr290);
                                                                                                                                    }
                                                                                                                                    §§goto(addr509);
                                                                                                                                 }
                                                                                                                                 §§goto(addr487);
                                                                                                                              }
                                                                                                                              §§goto(addr433);
                                                                                                                           }
                                                                                                                           §§goto(addr324);
                                                                                                                        }
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                     addr311:
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                               §§goto(addr203);
                                                                                                            }
                                                                                                            §§goto(addr360);
                                                                                                            addr430:
                                                                                                            addr425:
                                                                                                         }
                                                                                                         §§goto(addr430);
                                                                                                         §§push("levels");
                                                                                                      }
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                                §§goto(addr418);
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          §§goto(addr418);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr432);
                                                                                 }
                                                                                 §§goto(addr516);
                                                                              }
                                                                              this.§6U§.visible = false;
                                                                              §§goto(addr311);
                                                                           }
                                                                        }
                                                                        §§goto(addr487);
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr512);
                                                               }
                                                               §§goto(addr496);
                                                            }
                                                            §§goto(addr509);
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   §§goto(addr479);
                                                }
                                                §§goto(addr358);
                                             }
                                          }
                                          §§goto(addr512);
                                       }
                                       §§goto(addr509);
                                    }
                                    §§goto(addr512);
                                 }
                                 §§goto(addr487);
                              }
                              §§goto(addr512);
                           }
                        }
                        §§goto(addr509);
                     }
                  }
                  §§goto(addr163);
               }
            }
         }
         §§goto(addr156);
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Boolean = §9!#§.visible;
         var _loc2_:Boolean = §^W§.visible;
         var _loc3_:* = int(§,#9§);
         if(!(_loc5_ && _loc1_))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        addr158:
                        while(true)
                        {
                           §§push(int(§§pop() + §§pop()));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr161:
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop8:
                                    while(!(_loc5_ && _loc1_))
                                    {
                                       §§push(_loc1_);
                                       loop9:
                                       for(; _loc6_; §§push(this.§0"S§),if(!(_loc6_ || _loc1_))
                                       {
                                          continue;
                                       },if(!§§pop())
                                       {
                                          addr76:
                                          §§push(0);
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(int(§§pop() + §§pop()));
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc5_ && _loc1_)
                                                {
                                                   continue loop8;
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   §§goto(addr147);
                                                }
                                                if(!(_loc6_ || this))
                                                {
                                                   continue loop6;
                                                }
                                                if(false)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(_loc3_);
                                                if(_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(§§pop() / 2);
                                                   }
                                                   §§goto(addr178);
                                                   §§push(int(§§pop() + §<!K§));
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr178);
                                       },if(_loc6_ || this)
                                       {
                                          continue loop0;
                                       },§§goto(addr178))
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop2;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§5"n§ + §,#9§);
                                             addr137:
                                             while(true)
                                             {
                                                §§push(int(§§pop() + §§pop()));
                                                addr139:
                                                while(_loc6_ || _loc3_)
                                                {
                                                   _loc3_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop14;
                                                   }
                                                   var _loc4_:* = §§pop();
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr642:
                                                      if(_loc2_)
                                                      {
                                                         addr643:
                                                         §^W§.x = _loc4_;
                                                         addr639:
                                                         _loc4_ += §5"n§ + §,#9§;
                                                         §^W§.setEnabled(this.§2"'§);
                                                         addr621:
                                                         addr646:
                                                         addr640:
                                                         addr624:
                                                         §§push(§^W§);
                                                         if(this.§2"'§)
                                                         {
                                                            addr614:
                                                            §§pop().setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                            addr597:
                                                            §5"t§.x = _loc4_;
                                                            addr576:
                                                            addr601:
                                                            addr615:
                                                            §§push(_loc4_);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr588:
                                                               §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §^"^§.setEnabled(this.§2"'§);
                                                                  addr596:
                                                                  addr573:
                                                                  §§push(§^"^§);
                                                                  if(this.§2"'§)
                                                                  {
                                                                     addr564:
                                                                     §§pop().setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                     addr565:
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr541:
                                                                        §§push(_loc1_);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr544:
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §9!#§.x = _loc4_;
                                                                                    addr530:
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    addr551:
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §]6§.setEnabled(this.§2"'§);
                                                                                       addr494:
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc1_))
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§]6§);
                                                                                                if(this.§2"'§)
                                                                                                {
                                                                                                   addr480:
                                                                                                   §§pop().setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                   addr481:
                                                                                                   if(_loc6_ || _loc1_)
                                                                                                   {
                                                                                                      §,>§.setEnabled(this.§2"'§);
                                                                                                      addr467:
                                                                                                      §§push(§,>§);
                                                                                                      if(this.§2"'§)
                                                                                                      {
                                                                                                         addr460:
                                                                                                         §§pop().setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                         addr446:
                                                                                                         this.§]"b§.setEnabled(this.§2"'§);
                                                                                                         addr447:
                                                                                                         addr461:
                                                                                                         addr444:
                                                                                                         §§push(this.§]"b§);
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               §§push(this.§2"'§);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr419:
                                                                                                                     §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr426:
                                                                                                                        }
                                                                                                                        addr437:
                                                                                                                        §§pop().setComponentState(§§pop());
                                                                                                                        addr438:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr361:
                                                                                                                           §§push(this.§0"S§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr367:
                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr384:
                                                                                                                                       this.§2!w§.setVisibility(true);
                                                                                                                                       addr385:
                                                                                                                                       addr383:
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr354:
                                                                                                                                                this.§2!w§.x = _loc4_;
                                                                                                                                                addr356:
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr328:
                                                                                                                                                            §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                  addr343:
                                                                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr280:
                                                                                                                                                                     §§push(this.§2!w§);
                                                                                                                                                                     §§push(this.§2"'§);
                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().setEnabled(§§pop());
                                                                                                                                                                        addr290:
                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§2!w§);
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr242:
                                                                                                                                                                                          if(this.§2"'§)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr243:
                                                                                                                                                                                             §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr271:
                                                                                                                                                                                                   §§pop().setComponentState(§§pop());
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr385);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr187);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr290);
                                                                                                                                                                                                   addr260:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr270:
                                                                                                                                                                                                §§goto(addr271);
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr260);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr270);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr271);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr383);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr280);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr243);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr481);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr467);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr343);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr384);
                                                                                                                                                                     addr350:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr438);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr576);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr530);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr588);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr328);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr544);
                                                                                                                                                }
                                                                                                                                                §§goto(addr367);
                                                                                                                                             }
                                                                                                                                             §§goto(addr596);
                                                                                                                                          }
                                                                                                                                          §§goto(addr551);
                                                                                                                                       }
                                                                                                                                       §§goto(addr447);
                                                                                                                                    }
                                                                                                                                    §§goto(addr601);
                                                                                                                                 }
                                                                                                                                 §§goto(addr461);
                                                                                                                              }
                                                                                                                              §§push(this.§2!w§);
                                                                                                                              if(_loc6_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr356);
                                                                                                                                             }
                                                                                                                                             addr187:
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr271);
                                                                                                                                       }
                                                                                                                                       §§goto(addr280);
                                                                                                                                    }
                                                                                                                                    §§goto(addr242);
                                                                                                                                 }
                                                                                                                                 §§goto(addr354);
                                                                                                                              }
                                                                                                                              §§goto(addr243);
                                                                                                                           }
                                                                                                                           §§goto(addr541);
                                                                                                                        }
                                                                                                                        §§goto(addr530);
                                                                                                                     }
                                                                                                                     §§goto(addr426);
                                                                                                                  }
                                                                                                                  §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr437);
                                                                                                               }
                                                                                                               §§goto(addr446);
                                                                                                            }
                                                                                                            §§goto(addr444);
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                      §§goto(addr460);
                                                                                                      §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                                                                   }
                                                                                                   §§goto(addr494);
                                                                                                }
                                                                                                §§goto(addr480);
                                                                                                §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                                                             }
                                                                                             §§goto(addr621);
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                    §§goto(addr643);
                                                                                 }
                                                                                 §§goto(addr646);
                                                                              }
                                                                              §§goto(addr640);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr642);
                                                                     }
                                                                     §§goto(addr573);
                                                                  }
                                                                  §§goto(addr564);
                                                                  §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                               }
                                                               §§goto(addr624);
                                                            }
                                                            §§goto(addr639);
                                                         }
                                                         §§goto(addr614);
                                                         §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                      }
                                                      §§goto(addr597);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr158);
                  }
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr85);
               §§push(§5"n§ + §,#9§);
            }
         }
         §§goto(addr161);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,false);
            while(true)
            {
               §7q§(§4#;§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§3#V§,this.§6d§);
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,false);
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §6d§(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=3§ = true;
            loop0:
            while(true)
            {
               §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
               loop1:
               while(true)
               {
                  this.§`"Z§ = §#"T§(param1.data);
                  loop2:
                  while(true)
                  {
                     §§push(this.§`"Z§);
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_ && param1)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr121);
                                             }
                                             §§goto(addr88);
                                          }
                                          addr20:
                                       }
                                       while(!(_loc2_ && _loc3_))
                                       {
                                          §§pop();
                                          while(_loc3_)
                                          {
                                             §§push(this.§`"Z§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop().§+",§ > 0);
                                                while(_loc3_)
                                                {
                                                }
                                                continue loop10;
                                                addr117:
                                             }
                                             continue loop3;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§goto(addr20);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§`"Z§);
                                             continue loop3;
                                          }
                                          addr31:
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      addr57:
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         §6"]§.§4!9§(§6"]§.§3!b§,this.§`"Z§.§@!?§,this.§`"Z§.§+",§);
                                                         §§goto(addr57);
                                                      }
                                                      continue loop2;
                                                      addr121:
                                                   }
                                                   while(true)
                                                   {
                                                      addr88:
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(this.§-"X§);
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§'#[§);
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr31);
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                }
                                                addr73:
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§goto(addr80);
                                                }
                                                addr108:
                                             }
                                             §§goto(addr20);
                                          }
                                          §§goto(addr175);
                                       }
                                       continue loop4;
                                       return;
                                    }
                                    continue loop5;
                                 }
                                 addr147:
                              }
                              §§goto(addr175);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      override protected function showScore() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.showScore();
            loop0:
            while(true)
            {
               §§push(!§<!L§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§4!&§);
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 loop1:
                                 while(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§=3§);
                                       addr72:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop3;
                                          }
                                          this.§'#[§ = true;
                                          if(!_loc1_)
                                          {
                                             break loop1;
                                          }
                                          addr77:
                                          if(!_loc1_)
                                          {
                                             break loop3;
                                          }
                                          if(_loc1_ || _loc2_)
                                          {
                                             break loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 return;
                                 addr66:
                              }
                           }
                           §§goto(addr72);
                        }
                        continue loop0;
                     }
                     addr100:
                  }
                  §§goto(addr66);
               }
               §§goto(addr100);
            }
            this.§8E§();
            §§goto(addr77);
         }
         §§goto(addr70);
      }
      
      private function §8E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2"'§ = false;
            loop0:
            while(true)
            {
               §§push(this.§"!c§);
               while(true)
               {
                  §§push(§ ?§.§[!9§);
                  addr95:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§&!u§);
                  }
                  loop4:
                  for(; _loc2_ || _loc2_; §§push(this.§"!c§),if(_loc1_ && _loc2_)
                  {
                     continue;
                  },§§goto(addr34))
                  {
                     §§push(§ ?§.§="<§);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.§6!s§);
                        loop5:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop0;
                           addr34:
                           §§pop().show();
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc1_ && _loc1_)
                              {
                                 while(true)
                                 {
                                    break loop5;
                                 }
                                 addr98:
                              }
                              return;
                           }
                        }
                        continue;
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      override protected function showHighScoreBadge() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§=3§)
            {
               if(!_loc1_)
               {
                  this.§##5§();
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.§0B§();
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     addr68:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(!(_loc2_ || _loc1_));
               
               return;
            }
            this.§-"X§ = true;
         }
         §§goto(addr68);
      }
      
      private function §0B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(§<!L§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     do
                     {
                        §§push(this.getRankForLevel() == 1);
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc1_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §@;§.getItemByName("Button_Share").setVisibility(true);
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                  }
                  §?N§();
                  addr89:
                  if(_loc2_)
                  {
                     §§goto(addr89);
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      protected function §##5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(this.§`"Z§.§@!?§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        super.showHighScoreBadge();
                        loop5:
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(this.§5!r§);
                              }
                              addr175:
                           }
                           else
                           {
                              loop9:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.§5!r§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr77:
                                          if(_loc2_)
                                          {
                                             break;
                                             addr90:
                                             addr92:
                                          }
                                          addr89:
                                          §§pop().show();
                                          while(_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §?!r§.§"#_§("highscore");
                                                      continue loop9;
                                                   }
                                                   addr114:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§5!r§);
                                                   }
                                                   addr127:
                                                }
                                             }
                                             §§goto(addr89);
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§pop().visible = true;
                                          §§goto(addr112);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(this.§`"Z§.§@!?§);
                                          addr167:
                                          while(true)
                                          {
                                             §@;§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + this.§`"Z§.§+",§;
                                          }
                                       }
                                       addr148:
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr167);
                              }
                           }
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                              }
                              continue loop0;
                              §§goto(addr77);
                           }
                           addr174:
                           while(true)
                           {
                              §§pop();
                              §§goto(addr175);
                           }
                        }
                     }
                     §§goto(addr148);
                  }
                  addr146:
               }
               §§goto(addr174);
            }
         }
         §§goto(addr114);
      }
      
      protected function onBadgeLanded(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§4!&§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr73:
                     if(!this.§=3§)
                     {
                        this.§'#[§ = true;
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                           }
                           §§goto(addr24);
                        }
                        addr76:
                        addr24:
                        return;
                        addr76:
                     }
                     this.§8E§();
                  }
                  §§goto(addr76);
               }
               §§goto(addr24);
            }
            §§goto(addr73);
         }
         §§goto(addr76);
      }
      
      protected function §&!u§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
         }
         do
         {
            this.§0"S§ = true;
            do
            {
               this.setButtonAlignment();
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc3_);
         
      }
      
      protected function §6!s§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!c§.removeEventListener(§ ?§.§="<§,this.§&!u§);
         }
         while(true)
         {
            this.§2"'§ = true;
            while(_loc3_ || param1)
            {
               this.setButtonAlignment();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'$§();
         }
         do
         {
            § g§(getCutSceneState());
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(this.§2"'§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr190:
                        while(true)
                        {
                           §§push(this.§=!4§(param2));
                           if(_loc6_ || param1)
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        return;
                     }
                     §§goto(addr190);
                  }
                  var _loc4_:* = param2;
                  if(_loc6_ || param3)
                  {
                     if("NEXT_LEVEL" === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                           }
                           §§goto(addr290);
                        }
                        else
                        {
                           §§goto(addr227);
                        }
                     }
                     else
                     {
                        if("REPLAY" === _loc4_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              addr227:
                              §§push(1);
                              if(_loc5_ && this)
                              {
                                 addr268:
                              }
                              §§goto(addr290);
                           }
                           else
                           {
                              addr272:
                              §§push(4);
                              if(_loc6_)
                              {
                                 addr285:
                              }
                           }
                        }
                        else if("TOURNAMENT" === _loc4_)
                        {
                           if(_loc6_ || param3)
                           {
                              §§push(2);
                              if(!_loc6_)
                              {
                              }
                              §§goto(addr290);
                           }
                           else
                           {
                              §§goto(addr260);
                           }
                        }
                        else
                        {
                           if("MENU" === _loc4_)
                           {
                              if(_loc6_ || this)
                              {
                                 addr260:
                                 §§push(3);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§goto(addr268);
                                 }
                                 §§goto(addr290);
                              }
                              else
                              {
                                 §§goto(addr272);
                              }
                           }
                           else if("SHARE_CROWN" === _loc4_)
                           {
                              §§goto(addr272);
                           }
                           else
                           {
                              §§push(5);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr272);
                     }
                     addr290:
                     switch(§§pop())
                     {
                        case 0:
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           this.loadNextLevel();
                           addr150:
                           break;
                           addr150:
                           addr157:
                        case 1:
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           § g§(getStateLevelLoadState());
                           break;
                           addr136:
                           addr129:
                        case 2:
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           § g§(this.§3#-§());
                           break;
                           addr123:
                           addr116:
                        case 3:
                           §?!r§.§0"#§();
                           addr108:
                           if(_loc6_)
                           {
                              §?!r§.§"#_§("misc_menubuttonback_1");
                              if(_loc6_ || param2)
                              {
                                 § g§(getMenuButtonTargetState());
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          addr37:
                                          break;
                                       }
                                       §§goto(addr150);
                                    }
                                    else
                                    {
                                       §§goto(addr123);
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                           §§goto(addr116);
                        case 4:
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           if(!(_loc5_ && param3))
                           {
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          this.shareCrown();
                                          if(_loc6_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr37);
                                          }
                                          break;
                                       }
                                       §§goto(addr157);
                                    }
                                    else
                                    {
                                       §§goto(addr136);
                                    }
                                 }
                                 §§goto(addr129);
                              }
                              else
                              {
                                 §§goto(addr108);
                              }
                           }
                     }
                     return;
                  }
                  §§goto(addr272);
               }
            }
         }
         §§goto(addr190);
      }
      
      protected function §=!4§(param1:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§[!j§ = null;
         var _loc2_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         var _loc4_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         §§push(_loc2_.indexOf(param1) == -1);
         if(_loc7_)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || this)
         {
            §§push(_loc4_.§7"`§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc7_ || param1)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 while(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc3_.isPopupOpenById(SyncPopup.§%!h§));
                                       if(_loc7_)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                this.§5#?§ = param1;
                                                if(!_loc7_)
                                                {
                                                   break loop3;
                                                }
                                                if(_loc7_)
                                                {
                                                   _loc4_.addEventListener(UserProgressEvent.§3#V§,this.§=>§);
                                                   if(!(_loc7_ || _loc2_))
                                                   {
                                                      break loop3;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             addr115:
                                          }
                                          else
                                          {
                                             addr167:
                                             §§push(true);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                       break;
                                    }
                                    return §§pop();
                                 }
                              }
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc8_ && this))
                                 {
                                    while(true)
                                    {
                                    }
                                    addr104:
                                 }
                                 §§goto(addr170);
                              }
                              continue loop1;
                           }
                           §§goto(addr172);
                        }
                     }
                  }
                  §§goto(addr104);
               }
               addr170:
               return §§pop();
            }
         }
         §§goto(addr115);
      }
      
      private function shareCrown() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4#;§.singleton.§<#'§();
         }
         §§push(this.getRankForLevel());
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §""v§.§&R§("shareCrown",§+!b§.currentLevel,§,"X§(§+!b§).getPrettyLevelString(§+!b§.currentLevel),_loc1_,§,!q§.§>k§.getScore(10));
         }
      }
      
      protected function §3#-§() : String
      {
         return §6!W§.§^!7§;
      }
      
      protected function §=>§(param1:UserProgressEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         if(!_loc4_)
         {
            _loc2_.removeEventListener(UserProgressEvent.§3#V§,this.§=>§);
         }
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         if(_loc5_)
         {
            _loc3_.§,"o§(SyncPopup.§%!h§);
            do
            {
               §=!q§(-1,this.§5#?§,null);
               do
               {
                  this.§5#?§ = null;
               }
               while(_loc4_ && param1);
               
            }
            while(_loc4_);
            
         }
      }
      
      protected function getRankForLevel() : int
      {
         return §7q§(§">§).getRankForLevel(§+!b§.currentLevel);
      }
      
      private function §0!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@;§.getItemByName("Button_Share").setVisibility(false);
         }
      }
   }
}
