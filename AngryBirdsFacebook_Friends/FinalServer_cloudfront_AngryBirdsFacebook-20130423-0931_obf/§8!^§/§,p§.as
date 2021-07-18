package §8!^§
{
   import §%!I§.§5S§;
   import §%!I§.§]!M§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §0D§.§3!R§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §5!Y§.§9"6§;
   import §9!n§.LevelManager;
   import §;u§.StateCutScene;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §,p§ extends §]!M§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §'"P§:int = 5;
      
      public static const §0=§:Array;
      
      private static var §@g§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "TournamentState";
            while(true)
            {
               §'"P§ = 5;
            }
            addr87:
         }
         loop1:
         while(true)
         {
            §0=§ = ["2000-81","2000-90","2000-80","2000-83","2000-75"];
            while(_loc1_ || _loc1_)
            {
               §@g§ = [true,false,false,false,false];
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr87);
            }
         }
      }
      
      private var §<!&§:Vector.<§7"0§>;
      
      private var §+";§:Boolean = false;
      
      private var §'R§:Vector.<§7"0§>;
      
      private const §'"?§:uint = 6000;
      
      private var §@"Z§:Number = 3000.0;
      
      public function §,p§(param1:Boolean = false, param2:String = "TournamentState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function §6"8§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = §0=§[param1 - 1];
         if(!_loc4_)
         {
            if(param1 == 5)
            {
               while(true)
               {
                  _loc2_ = "2000-199";
                  addr92:
                  while(true)
                  {
                  }
               }
               addr90:
            }
            while(true)
            {
               StateCutScene.§@"T§(true,param1);
               while(_loc3_)
               {
                  LevelManager.§,!m§(LevelManager.§["S§(_loc2_));
                  for(; !_loc4_; §%"S§.§!C§.§`H§(§5S§.STATE_NAME),if(_loc3_ || _loc2_)
                  {
                     return;
                  })
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr90);
      }
      
      public static function §'"&§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1);
               addr83:
               addr84:
               while(§§pop() >= §§pop())
               {
                  continue loop0;
               }
               addr84:
               return false;
            }
         }
         §§goto(addr80);
      }
      
      override public function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               loop1:
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_BrandedTournament[0]);
                  loop2:
                  while(true)
                  {
                     addr43:
                     while(true)
                     {
                        §1"§ = §3!R§.§&"5§.§8I§;
                        addr49:
                        while(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<!&§ = new Vector.<§7"0§>(§1"§.length,true);
            if(_loc3_ || this)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            §§goto(addr49);
         }
         var _loc1_:* = 0;
         loop6:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= §1"§.length)
               {
                  loop7:
                  while(true)
                  {
                     this.§'R§ = new Vector.<§7"0§>(§'"P§);
                     while(true)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           _loc1_ = §§pop();
                           loop9:
                           for(; _loc3_ || this; while(_loc3_ || _loc1_)
                           {
                              continue loop7;
                           })
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 addr209:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr210:
                                    while(true)
                                    {
                                       if(§§pop() >= §'"P§)
                                       {
                                          §§goto(addr212);
                                       }
                                       this.§'R§[_loc1_] = §2"@§.getItemByName("CutsceneButton" + (_loc1_ + 1)) as §7"0§;
                                       continue loop9;
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr210);
                     }
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_++;
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || this)
                              {
                                 if(false)
                                 {
                                    §§goto(addr114);
                                 }
                                 §§goto(addr209);
                              }
                              _loc1_++;
                              continue loop6;
                              addr208:
                           }
                           §§goto(addr130);
                        }
                        addr212:
                     }
                     continue;
                     var _loc2_:§4"9§ = §2"@§.getItemByName("TournamentTitleTextField") as §4"9§;
                     if(_loc3_ || _loc2_)
                     {
                        _loc2_.setText("Easter\'s Tournament");
                     }
                     return;
                  }
               }
               else
               {
                  this.§<!&§[_loc1_] = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
               }
               §§goto(addr208);
            }
            §§goto(addr210);
         }
      }
      
      override protected function requestTournamentInfo() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§7"0§ = null;
         if(_loc7_)
         {
            super.requestTournamentInfo();
         }
         var _loc1_:§7"0§ = §2"@§.getItemByName("LevelButton5") as §7"0§;
         var _loc2_:§7"0§ = §2"@§.getItemByName("LevelButton6") as §7"0§;
         var _loc3_:Array = [_loc1_,_loc2_];
         for each(_loc4_ in _loc3_)
         {
            _loc4_.setVisibility(false);
         }
      }
      
      private function §null§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§7"0§ = null;
         var _loc6_:* = 0;
         var _loc7_:§#!$§ = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:* = null;
         if(_loc14_)
         {
            if(this.§+";§)
            {
               addr52:
               _loc1_ = §3!R§.§&"5§.§8I§;
               if(_loc14_ || _loc3_)
               {
                  _loc2_ = false;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_ = 0;
                     if(_loc13_)
                     {
                        break;
                     }
                     loop2:
                     while(_loc3_ < this.§<!&§.length)
                     {
                        _loc4_ = _loc1_[_loc3_];
                        if(_loc13_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop1;
                        }
                        _loc5_ = §2"@§.getItemByName("LevelButton" + (_loc3_ + 1)) as §7"0§;
                        if(!(_loc13_ && _loc1_))
                        {
                           §§push(§3!R§.§&"5§);
                           if(_loc14_)
                           {
                              §§push(_loc4_);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop().secondsToUnlock(§§pop()));
                                 if(!_loc13_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc14_ || _loc2_)
                                    {
                                       addr188:
                                       §§push(§§pop());
                                       if(_loc14_ || _loc3_)
                                       {
                                          _loc6_ = §§pop();
                                          addr197:
                                          §§push(0);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             if((_loc5_.mClip as MovieClip).currentFrameLabel == "Closed")
                                             {
                                                while(true)
                                                {
                                                   (_loc5_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
                                                   addr216:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr206:
                                             }
                                             while(true)
                                             {
                                                _loc5_.mClip.gotoAndStop("Open");
                                                loop7:
                                                while(true)
                                                {
                                                   _loc5_.setEnabled(true);
                                                   loop8:
                                                   while(_loc14_ || this)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         break loop7;
                                                      }
                                                      if(!_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§3!R§.§&"5§);
                                                            if(!(_loc13_ && this))
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc14_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§pop().§,"4§(§§pop(),true);
                                                               while(_loc14_ || _loc2_)
                                                               {
                                                                  _loc5_.mClip.TextField_LevelNum.text.text = _loc3_ + 1 + "";
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc13_ && this)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr127);
                                                                     }
                                                                     §§push((_loc7_ = AngryBirdsFP11.sUserProgress as §#!$§).§3"4§(_loc4_));
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc13_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              if(_loc14_ || _loc1_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc14_ || _loc2_)
                                                                                       {
                                                                                          addr264:
                                                                                          §§pop();
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr438:
                                                                                             if(_loc8_ <= 3)
                                                                                             {
                                                                                                addr440:
                                                                                                _loc5_.mClip.LevelSelection_Crown.gotoAndStop(_loc8_);
                                                                                                addr411:
                                                                                                addr445:
                                                                                                §§push(_loc7_.§="&§(_loc4_));
                                                                                                if(!(_loc13_ && _loc1_))
                                                                                                {
                                                                                                   addr423:
                                                                                                   _loc9_ = §§pop();
                                                                                                   _loc5_.mClip.Textfield_LevelScore.text.text = §<Y§(_loc9_);
                                                                                                   addr424:
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   _loc10_ = _loc7_.getStarsForLevel(_loc4_,_loc9_);
                                                                                                   _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc10_.toString() + "_stars");
                                                                                                   addr376:
                                                                                                   if(_loc14_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr352:
                                                                                                               §§push(0);
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  addr360:
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     _loc5_.mClip.MovieClip_Stars.visible = true;
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc13_ && _loc1_)
                                                                                                                           {
                                                                                                                              addr433:
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§goto(addr411);
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                           addr290:
                                                                                                                           _loc5_.mClip.Textfield_LevelScore.visible = true;
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              _loc5_.mClip.GiftboxMovieclip.visible = false;
                                                                                                                              if(_loc13_ && this)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr290);
                                                                                                                                 }
                                                                                                                                 addr446:
                                                                                                                                 §§goto(addr505);
                                                                                                                              }
                                                                                                                              addr329:
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr338:
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    _loc5_.mClip.GiftboxMovieclip.visible = true;
                                                                                                                                    §§goto(addr329);
                                                                                                                                 }
                                                                                                                                 _loc5_.mClip.Textfield_LevelScore.visible = false;
                                                                                                                                 §§goto(addr338);
                                                                                                                                 addr366:
                                                                                                                              }
                                                                                                                              §§goto(addr446);
                                                                                                                              addr300:
                                                                                                                           }
                                                                                                                           addr361:
                                                                                                                           _loc5_.mClip.MovieClip_Stars.visible = false;
                                                                                                                           §§goto(addr366);
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr376);
                                                                                                                  }
                                                                                                                  §§goto(addr361);
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         §§goto(addr423);
                                                                                                      }
                                                                                                      §§goto(addr445);
                                                                                                   }
                                                                                                   addr398:
                                                                                                   §§goto(addr398);
                                                                                                   addr422:
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             _loc5_.mClip.LevelSelection_Crown.gotoAndStop(4);
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§goto(addr423);
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            else
                                                            {
                                                               addr449:
                                                               §§push((_loc11_ = §§pop().§2"I§(_loc6_))[0] as String);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(_loc12_ = §§pop());
                                                                  if(_loc14_)
                                                                  {
                                                                     addr465:
                                                                     §§push(§§pop().replace(" Left",""));
                                                                  }
                                                                  _loc12_ = §§pop();
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     _loc5_.setEnabled(true);
                                                                     if(_loc14_ || _loc1_)
                                                                     {
                                                                        addr497:
                                                                        (_loc5_.mClip.Textfield_LockTime.text as TextField).text = _loc12_;
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         addr505:
                                                         _loc3_++;
                                                         continue loop2;
                                                         addr127:
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr449);
                                          §§push(§3!R§.§&"5§);
                                       }
                                       §§goto(addr449);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr188);
                              }
                           }
                           §§goto(addr449);
                        }
                        §§goto(addr216);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function injectData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.injectData();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7"0§ = null;
         if(!(_loc3_ && this))
         {
            §1"§ = §3!R§.§&"5§.§8I§;
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < §1"§.length)
         {
            _loc2_ = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              (_loc2_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
                              addr117:
                              loop7:
                              while(!_loc3_)
                              {
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 addr78:
                                 addr128:
                                 while(true)
                                 {
                                    §§push((_loc2_.mClip as MovieClip).currentFrameLabel == "Closed");
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              addr69:
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 break loop5;
                              }
                              §§goto(addr78);
                           }
                        }
                        while(true)
                        {
                           _loc1_++;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr69);
                           }
                           §§goto(addr117);
                        }
                     }
                     continue loop0;
                     addr95:
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr119);
         }
         return super.deActivate();
      }
      
      private function §0"$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"level-locked");
         }
      }
      
      override protected function setLevelButtons() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7"0§ = null;
         if(!(_loc4_ && this))
         {
            this.§+";§ = true;
         }
         §§push(super.setLevelButtons());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= §1"§.length)
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = §2"@§.getItemByName("LevelButton" + (_loc2_ + 1)) as §7"0§;
               if(_loc5_)
               {
                  §§push(_loc3_ == null);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    (_loc3_.mClip as MovieClip).MouseHitArea.addEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
                                    loop6:
                                    while(true)
                                    {
                                       addr54:
                                       addr68:
                                       while(true)
                                       {
                                          _loc2_++;
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       while(false)
                                       {
                                          while(true)
                                          {
                                             §§push((_loc3_.mClip as MovieClip).currentFrameLabel == "Closed");
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             addr133:
                                             while(true)
                                             {
                                                §§goto(addr70);
                                             }
                                          }
                                          addr70:
                                       }
                                       continue loop0;
                                    }
                                    addr123:
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr54);
                        }
                        addr87:
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr68);
            }
            break;
         }
         return §§pop();
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§7"0§ = null;
         if(!_loc7_)
         {
            if(param2.indexOf("LEVEL_") != -1)
            {
               if(_loc6_ || param2)
               {
                  addr33:
                  if(((_loc4_ = §2"@§.getItemByName("LevelButton" + param2.split("_")[1]) as §7"0§).mClip as MovieClip).currentFrameLabel == "Closed")
                  {
                     if(!(_loc7_ && param1))
                     {
                        return;
                     }
                     addr61:
                     super.uiInteractionHandler(param1,param2,param3);
                  }
                  §§goto(addr61);
               }
               var _loc5_:* = param2;
               if(!_loc7_)
               {
                  §§push("LEVEL_5");
                  if(!(_loc7_ && param1))
                  {
                     §§push(_loc5_);
                     if(!(_loc7_ && param2))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 addr426:
                              }
                           }
                           else
                           {
                              addr275:
                              §§push(1);
                              if(!(_loc6_ || this))
                              {
                                 addr469:
                              }
                           }
                        }
                        else
                        {
                           §§push("LEVEL_6");
                           if(_loc6_)
                           {
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr275);
                                    }
                                    else
                                    {
                                       addr336:
                                       §§push(3);
                                       if(_loc6_ || param3)
                                       {
                                       }
                                       §§goto(addr481);
                                    }
                                 }
                                 else
                                 {
                                    §§push("BRANDED_SHOP");
                                    if(_loc6_ || this)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                addr303:
                                                §§push(2);
                                                if(_loc6_ || param3)
                                                {
                                                   §§goto(addr481);
                                                }
                                                else
                                                {
                                                   §§goto(addr426);
                                                }
                                             }
                                             §§goto(addr481);
                                          }
                                          else
                                          {
                                             §§push("BRANDED_SHOP_OVER");
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(_loc5_);
                                                if(_loc6_ || param3)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§goto(addr336);
                                                      }
                                                      else
                                                      {
                                                         addr461:
                                                         §§push(8);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§goto(addr469);
                                                         }
                                                         else
                                                         {
                                                            addr476:
                                                            §§goto(addr481);
                                                         }
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   else
                                                   {
                                                      §§push("BRANDED_SHOP_OUT");
                                                      if(!_loc7_)
                                                      {
                                                         addr348:
                                                         §§push(_loc5_);
                                                         if(_loc6_)
                                                         {
                                                            addr351:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr398:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr395:
                                                                  §§push(6);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr398);
                                                                  }
                                                               }
                                                               §§goto(addr481);
                                                            }
                                                            else
                                                            {
                                                               §§push("CUTSCENE_1");
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     addr369:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc7_ && param2)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr423:
                                                                           §§push(7);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr426);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("CUTSCENE_2");
                                                                        if(_loc7_)
                                                                        {
                                                                        }
                                                                        addr472:
                                                                        if(§§pop() === _loc5_)
                                                                        {
                                                                           addr473:
                                                                           §§push(9);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr481);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr481:
                                                                           loop2:
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 §8?§(§1"§[4]);
                                                                                 break;
                                                                                 addr225:
                                                                              case 1:
                                                                                 §8?§(§1"§[5]);
                                                                                 break;
                                                                                 addr217:
                                                                              case 2:
                                                                                 §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"level-selection");
                                                                                 addr206:
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr217);
                                                                                 break;
                                                                              case 3:
                                                                                 (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX + 0.05;
                                                                                 (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY + 0.05;
                                                                                 break;
                                                                                 addr195:
                                                                                 addr175:
                                                                              case 4:
                                                                                 (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX - 0.05;
                                                                                 while(true)
                                                                                 {
                                                                                    addr102:
                                                                                    while(true)
                                                                                    {
                                                                                       (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY - 0.05;
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             §§goto(addr195);
                                                                                          }
                                                                                          §§goto(addr175);
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              case 5:
                                                                              case 6:
                                                                              case 7:
                                                                              case 8:
                                                                              case 9:
                                                                                 §6"8§(int(param2.charAt(param2.length - 1)));
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr102);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                 }
                                                                           }
                                                                           return;
                                                                           §§push(10);
                                                                        }
                                                                     }
                                                                     §§goto(addr481);
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                               §§push(_loc5_);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr395);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr473);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("CUTSCENE_3");
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr472);
                                                                  }
                                                                  §§goto(addr473);
                                                               }
                                                               addr443:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§goto(addr461);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr473);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr472);
                                                                  §§push("CUTSCENE_5");
                                                               }
                                                               §§goto(addr473);
                                                            }
                                                         }
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               §§goto(addr423);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr461);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("CUTSCENE_4");
                                                            if(_loc6_ || param2)
                                                            {
                                                               addr435:
                                                               §§push(_loc5_);
                                                               if(_loc6_ || param3)
                                                               {
                                                                  §§goto(addr443);
                                                               }
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                }
                                             }
                                             §§goto(addr472);
                                          }
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr481);
                              }
                              §§goto(addr443);
                           }
                           §§goto(addr348);
                        }
                        §§goto(addr481);
                     }
                     §§goto(addr369);
                  }
                  §§goto(addr435);
               }
               §§goto(addr303);
            }
            §§goto(addr61);
         }
         §§goto(addr33);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§null§();
         }
         return super.run(param1);
      }
      
      private function §6"5§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:Boolean = false;
         var _loc5_:* = 0;
         if(_loc7_ || this)
         {
            if(§1"§)
            {
               loop0:
               do
               {
                  §§push(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(§!!G§.§[E§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        if(_loc8_ && _loc2_)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        do
                        {
                           _loc3_ = 1;
                        }
                        while(!(_loc7_ || this));
                        
                        if(!(_loc8_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc8_ && _loc3_);
               
               var _loc6_:* = §1"§[0];
               if(!_loc8_)
               {
                  §§push(§0=§);
                  if(_loc7_)
                  {
                     §§push(0);
                     if(_loc7_ || _loc1_)
                     {
                        if(§§pop()[§§pop()] === _loc6_)
                        {
                           if(!_loc8_)
                           {
                              §§push(0);
                              if(!(_loc8_ && this))
                              {
                                 addr268:
                                 if(!_loc8_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       loop35:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(1);
                                             if(!_loc8_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc7_ || _loc3_)
                                                {
                                                   break loop4;
                                                }
                                                break loop4;
                                             }
                                             continue;
                                          case 1:
                                             §§push(2);
                                             if(!(_loc8_ && _loc1_))
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc8_)
                                                {
                                                   addr57:
                                                   break loop4;
                                                }
                                                break;
                                             }
                                             continue;
                                          case 2:
                                             §§push(3);
                                             if(!_loc8_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc8_ && _loc1_))
                                                {
                                                   break loop4;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§@g§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(4);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  §§push(4);
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       addr441:
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr445:
                                                                                          §§pop()[§§pop()] = _loc4_;
                                                                                          break loop35;
                                                                                       }
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(true);
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop()[§§pop()] = §§pop();
                                                                                             addr524:
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§@g§);
                                                                                                loop9:
                                                                                                while(!_loc8_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         addr516:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop()[§§pop()] = §§pop();
                                                                                                               addr518:
                                                                                                               §§push(§@g§);
                                                                                                               loop13:
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  loop14:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     addr486:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(3);
                                                                                                                        addr487:
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                           addr488:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              §§pop()[§§pop()] = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 §§push(§@g§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    §§push(3);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       if(_loc8_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          §§push(4);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() >= §§pop());
                                                                                                                                             addr471:
                                                                                                                                             while(!(_loc7_ || _loc1_))
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             §§pop()[§§pop()] = §§pop();
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr521:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr488);
                                                                              }
                                                                              §§goto(addr471);
                                                                           }
                                                                           §§goto(addr445);
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                      §§goto(addr441);
                                                   }
                                                   §§goto(addr449);
                                                }
                                                addr479:
                                             }
                                             loop25:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr371:
                                                while(!(_loc8_ && this))
                                                {
                                                   continue loop25;
                                                }
                                                §§goto(addr506);
                                             }
                                             break;
                                          case 3:
                                             §§push(4);
                                             if(_loc7_ || this)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   if(true)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§goto(addr57);
                                                }
                                                §§goto(addr524);
                                             }
                                       }
                                    }
                                    §§push((AngryBirdsFP11.sUserProgress as §#!$§).§="&§(§1"§[5]));
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr534);
                                 }
                              }
                           }
                           else
                           {
                              addr236:
                              §§push(2);
                              if(_loc8_ && this)
                              {
                              }
                           }
                           §§goto(addr268);
                        }
                        else
                        {
                           §§push(§0=§);
                           if(_loc7_)
                           {
                              §§push(1);
                              if(!(_loc8_ && _loc1_))
                              {
                                 if(§§pop()[§§pop()] === _loc6_)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(1);
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§goto(addr268);
                                       }
                                       else
                                       {
                                          §§goto(addr263);
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 else
                                 {
                                    §§push(§0=§);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(2);
                                       if(_loc7_)
                                       {
                                          if(§§pop()[§§pop()] === _loc6_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§goto(addr236);
                                             }
                                          }
                                          else
                                          {
                                             addr247:
                                             if(§0=§[3] !== _loc6_)
                                             {
                                                §§goto(addr268);
                                                §§push(4);
                                             }
                                          }
                                          §§goto(addr268);
                                       }
                                    }
                                    §§goto(addr247);
                                 }
                                 if(!_loc8_)
                                 {
                                    §§goto(addr263);
                                 }
                              }
                           }
                           §§goto(addr247);
                        }
                     }
                  }
                  §§goto(addr247);
               }
               §§goto(addr236);
               addr144:
            }
            §§goto(addr333);
         }
         §§goto(addr144);
      }
   }
}
