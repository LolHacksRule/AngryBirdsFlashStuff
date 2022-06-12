package §[!K§
{
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §1p§.GiftParticle;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §3!7§.§?!F§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §7"@§.§4!K§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §=,§.UserProgressEvent;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!@§ extends §4!K§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §7"&§:int = 2500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            STATE_NAME = "stateTournamentLevelEnd";
         }
         do
         {
            §7"&§ = 2500;
         }
         while(_loc2_);
         
      }
      
      private var §`"#§:Timer;
      
      private var §@!R§:Boolean;
      
      private var §"!E§:Boolean;
      
      private var § !d§:String;
      
      protected var §;]§:Boolean = false;
      
      public function §-!@§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
            do
            {
               §!"+§ = true;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      protected function §#p§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               (§§pop() as §[<§).§7&§(LevelManager.§'!O§,param1);
               while(true)
               {
                  (§#6§.§ q§ as §3T§).§ k§(LevelManager.§'!O§,param1);
                  while(!_loc2_)
                  {
                     continue loop0;
                     (§§pop() as §[<§).saveLevelProgress(LevelManager.§'!O§,false,true);
                     if(!(_loc2_ && param1))
                     {
                        return;
                        addr63:
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§,!C§.§;"§.§4W§(LevelManager.§'!O§));
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr116:
               while(true)
               {
                  §§push(!§§pop());
                  addr117:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr119:
                     }
                     else
                     {
                        while(true)
                        {
                           addr102:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    LevelManager.§-!4§(LevelManager.§;!f§(_loc1_));
                                    while(!(_loc3_ || this))
                                    {
                                    }
                                    return;
                                    addr112:
                                 }
                                 §§goto(addr112);
                              }
                              else
                              {
                                 LevelManager.§+!;§ = LevelManager.§'!O§;
                                 addr70:
                              }
                              while(true)
                              {
                                 mNextState = this.getCutSceneState();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr45);
                           }
                        }
                        addr101:
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§"m§ = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§"!E§ = false;
            if(_loc7_ || _loc2_)
            {
               this.§ !d§ = null;
            }
         }
         var _loc1_:§7'§ = §6w§.getItemByName("mcGiftIcon");
         if(!_loc6_)
         {
            _loc1_.setVisibility(false);
            if(!_loc6_)
            {
               §6w§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
            }
         }
         §§push((AngryBirdsFP11.sUserProgress as §[<§).§<U§(LevelManager.§'!O§));
         if(!(_loc6_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§#6§.§'" §.getScore());
         if(_loc7_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            §%"1§ = _loc3_ > _loc2_;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc7_ || this)
               {
                  if(§§pop() == 0)
                  {
                     addr227:
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §[!3§ = true;
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           addr210:
                           addr210:
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 addr197:
                                 while(true)
                                 {
                                    §[=§(_loc3_,_loc2_);
                                    for(; _loc7_; § w§(),if(_loc7_)
                                    {
                                       if(true)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    })
                                    {
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              addr230:
                              §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§'!O§,_loc3_));
                              if(!_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 break loop0;
                              }
                              break loop0;
                           }
                        }
                        addr122:
                     }
                     while(true)
                     {
                        this.§#p§(_loc3_);
                        §§goto(addr210);
                     }
                     addr227:
                  }
                  else
                  {
                     addr179:
                     if(§%"1§)
                     {
                        if(!_loc6_)
                        {
                           this.§@!R§ = false;
                           if(_loc7_)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(!(_loc6_ && this))
                              {
                                 (§§pop() as §[<§).addEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
                                 §§goto(addr227);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr227);
                     }
                  }
                  §§goto(addr197);
               }
               break;
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc2_))
            {
               (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(false);
               loop5:
               while(true)
               {
                  (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("UnLit");
                  while(true)
                  {
                     (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("UnLit");
                     addr286:
                     while(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        continue loop5;
                     }
                  }
               }
            }
            while(true)
            {
               (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.gotoAndStop("UnLit");
               if(_loc7_ || this)
               {
                  break;
               }
               §§goto(addr286);
            }
            return;
         }
         §§goto(addr122);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            do
            {
               this.§;]§ = false;
               while(!LevelManager.§%^§())
               {
                  this.showButtonsNormal();
                  if(!(_loc2_ || this))
                  {
                     return;
                  }
                  addr89:
                  addr25:
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
            }
            while(_loc1_ && this);
            
         }
         §^7§();
         §§goto(addr89);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
            loop0:
            while(true)
            {
               (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
               while(true)
               {
                  (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
                  addr211:
                  addr64:
                  while(true)
                  {
                     if(!§,!C§.§;"§.§4W§(LevelManager.§'!O§))
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                        continue loop0;
                     }
                     while(true)
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
                        addr202:
                        while(true)
                        {
                           (§6w§.getItemByName("Button_Menu") as §^!D§).x = §]4§[0];
                        }
                     }
                  }
                  addr24:
                  addr159:
                  return;
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  (§6w§.getItemByName("Button_NextLevel") as §^!D§).x = §]4§[2];
                  while(true)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr24);
                     }
                     else
                     {
                        loop6:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr202);
                           addr177:
                           while(true)
                           {
                              (§6w§.getItemByName("Button_Replay") as §^!D§).x = §]4§[1];
                              continue loop6;
                           }
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§goto(addr159);
                     }
                  }
                  addr166:
                  §§goto(addr211);
               }
            }
         }
         §§goto(addr177);
      }
      
      private function §4!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`"#§ = new Timer(§7"&§,1);
         }
         do
         {
            this.§`"#§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
            do
            {
               this.§`"#§.start();
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §@E§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            if(!this.§`"#§)
            {
               return;
            }
         }
         do
         {
            this.§`"#§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
            do
            {
               this.§`"#§.reset();
            }
            while(_loc5_);
            
         }
         while(_loc5_ && _loc2_);
         
         var _loc2_:§7'§ = §6w§.getItemByName("mcGiftIcon");
         if(!_loc5_)
         {
            _loc2_.mClip.gotoAndStop(2);
            if(_loc6_)
            {
               this.§`"#§ = null;
            }
         }
         var _loc3_:int = 15;
         var _loc4_:int = 0;
         loop2:
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               loop3:
               while(true)
               {
                  this.§"!E§ = true;
                  loop4:
                  while(_loc6_)
                  {
                     §§push(this.§@!R§);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 addr157:
                                 while(true)
                                 {
                                    §§push(Boolean(this.§ !d§));
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop5;
                                 }
                              }
                              addr156:
                           }
                           while(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc5_ && _loc2_)
                                    {
                                       _loc4_++;
                                       break loop4;
                                       addr186:
                                    }
                                    this.§<^§(this.§ !d§);
                                 }
                                 else
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              break;
                           }
                           return;
                        }
                        §§goto(addr156);
                     }
                  }
                  continue loop2;
               }
            }
            else
            {
               _loc2_.mClip.addChild(new GiftParticle(Math.random() * 30,Math.random() * -30));
            }
            §§goto(addr186);
         }
      }
      
      private function §<^§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §?!F§.§;"§.§4!J§(param1,§?!F§.§;"§.§!!y§(param1) + 1);
         }
         var _loc2_:§7'§ = §6w§.getItemByName("mcGiftIcon");
         if(_loc4_)
         {
            _loc2_.mClip.gotoAndStop(param1);
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.onUserProgressSaved(param1);
            loop0:
            while(true)
            {
               this.§@!R§ = true;
               loop1:
               while(param1.data)
               {
                  loop2:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(param1.data is String);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           break loop1;
                        }
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        if(param1.data.length <= 1)
                        {
                           break loop1;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           addr118:
                           if(this.§"!E§)
                           {
                              break;
                           }
                           this.§ !d§ = param1.data as String;
                           if(!(_loc2_ || _loc2_))
                           {
                              loop4:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                    addr54:
                                 }
                                 addr125:
                                 while(true)
                                 {
                                    this.§<^§(this.§ !d§);
                                    continue loop4;
                                 }
                              }
                              break loop1;
                           }
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     §§goto(addr118);
                  }
                  while(true)
                  {
                     this.§ !d§ = param1.data as String;
                     §§goto(addr125);
                     §§goto(addr54);
                  }
               }
               return;
            }
         }
         §§goto(addr125);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
         }
         loop0:
         while(true)
         {
            if(this.§`"#§)
            {
               while(true)
               {
                  this.§`"#§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
                  while(!_loc1_)
                  {
                     this.§`"#§.reset();
                     while(true)
                     {
                        §§goto(addr29);
                     }
                  }
                  continue loop0;
               }
            }
            addr29:
            while(true)
            {
               this.§`"#§ = null;
               if(!(_loc1_ && _loc2_))
               {
                  if(_loc2_ || this)
                  {
                     continue loop1;
                  }
                  continue loop2;
               }
               continue loop3;
            }
            addr74:
            return;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = true;
         var _loc5_:* = param2;
         if(_loc7_ || param3)
         {
            if("NEXT_LEVEL" === _loc5_)
            {
               addr84:
               §§push(0);
               if(_loc6_ && this)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §§push(this.§;]§);
                  if(_loc7_ || param3)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(false);
                           if(_loc7_ || this)
                           {
                              _loc4_ = §§pop();
                              if(_loc7_ || this)
                              {
                                 §%?§.§ ]§("levelend-win");
                                 if(_loc7_ || param1)
                                 {
                                    addr112:
                                    if(_loc4_)
                                    {
                                       if(_loc6_ && this)
                                       {
                                       }
                                       break;
                                    }
                                    break;
                                    addr69:
                                 }
                              }
                              super.uiInteractionHandler(param1,param2,param3);
                              break;
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr112);
               default:
                  §§goto(addr112);
            }
            return;
         }
         §§goto(addr84);
      }
      
      override protected function getCutSceneState() : String
      {
         return §;+§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §-k§.STATE_NAME;
      }
   }
}
