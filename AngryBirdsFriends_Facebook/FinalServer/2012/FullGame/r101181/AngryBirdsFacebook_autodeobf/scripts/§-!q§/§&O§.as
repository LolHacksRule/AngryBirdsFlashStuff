package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §7-§.§,!C§;
   import §[!K§.§-k§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §&O§ extends §-k§
   {
      
      public static var §3!w§:Boolean = false;
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const § !f§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!w§ = false;
            do
            {
               STATE_NAME = "TournamentState";
               do
               {
                  § !f§ = 4;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private var §@H§:Vector.<§^!D§>;
      
      private var §<!Y§:Boolean = false;
      
      public function §&O§(param1:Boolean = false, param2:String = "TournamentState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§^!D§ = null;
         if(!_loc4_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            addr36:
            addr63:
            addr74:
            while(true)
            {
               §6w§ = new §7!A§(this);
               continue loop0;
            }
            var _loc1_:Array = §,!C§.§;"§.§-&§;
            if(!(_loc4_ && _loc1_))
            {
               this.§@H§ = new Vector.<§^!D§>(_loc1_.length,true);
            }
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = §6w§.getItemByName("LevelButton" + (_loc2_ + 1)) as §^!D§;
               if(!_loc4_)
               {
                  this.§@H§[_loc2_] = _loc3_;
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
            if(!_loc4_)
            {
               (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop("CONTEST_EMPTY");
            }
            return;
         }
      }
      
      override protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarBrandedOwn";
      }
      
      override protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarBrandedEnemy";
      }
      
      override protected function requestTournamentInfo() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.requestTournamentInfo();
         }
      }
      
      private function §[a§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§^!D§ = null;
         var _loc6_:* = 0;
         var _loc7_:§[<§ = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:* = null;
         if(!_loc13_)
         {
            if(this.§<!Y§)
            {
               addr52:
               _loc1_ = §,!C§.§;"§.§-&§;
               if(!(_loc13_ && _loc3_))
               {
                  _loc2_ = false;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_ = 0;
                     if(!_loc14_)
                     {
                        break;
                     }
                     loop2:
                     while(_loc3_ < this.§@H§.length)
                     {
                        _loc4_ = _loc1_[_loc3_];
                        if(!_loc14_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop1;
                        }
                        _loc5_ = §6w§.getItemByName("LevelButton" + (_loc3_ + 1)) as §^!D§;
                        if(_loc14_)
                        {
                           §§push(§,!C§.§;"§);
                           loop3:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc13_ && _loc2_))
                              {
                                 if(!§§pop().isLevelOpen(§§pop()))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§,!C§.§;"§);
                                       if(!_loc13_)
                                       {
                                          addr173:
                                          §§push(_loc4_);
                                          while(true)
                                          {
                                             §§push(§§pop().secondsToUnlock(§§pop()));
                                             if(!(_loc13_ && this))
                                             {
                                                §§push(getTimer() - §]u§);
                                                if(_loc14_)
                                                {
                                                   §§push(§§pop() / 1000);
                                                }
                                                §§push(int(§§pop() - §§pop()));
                                                if(!(_loc13_ && _loc1_))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc13_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr202:
                                                      §§push(0);
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(§,!C§.§;"§);
                                                      break loop4;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      _loc5_.mClip.gotoAndStop("Open");
                                                      addr210:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         _loc5_.setEnabled(true);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            do
                                                            {
                                                               §§push(§,!C§.§;"§);
                                                               if(_loc13_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               continue loop3;
                                                            }
                                                            while(false);
                                                            
                                                            §§push((_loc7_ = AngryBirdsFP11.sUserProgress as §[<§).§4!N§(_loc4_));
                                                            if(_loc14_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc14_)
                                                               {
                                                                  addr225:
                                                                  §§push(§§pop());
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc13_ && _loc1_))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(3);
                                                                                       addr440:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          addr441:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_.mClip.LevelSelection_Crown.gotoAndStop(_loc8_);
                                                                                                   addr447:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr442:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc5_.mClip.LevelSelection_Crown.gotoAndStop(4);
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr437:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.§<U§(_loc4_));
                                                                                                if(_loc13_ && _loc2_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr439:
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                                  §§goto(addr440);
                                                               }
                                                               §§goto(addr439);
                                                            }
                                                            §§goto(addr225);
                                                            addr139:
                                                            while(true)
                                                            {
                                                               if(_loc14_ || _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr210:
                                                   }
                                                   §§goto(addr210);
                                                }
                                             }
                                             §§goto(addr202);
                                          }
                                          addr173:
                                       }
                                       break;
                                    }
                                    §§push((_loc11_ = §§pop().§52§(_loc6_))[0] as String);
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(_loc12_ = §§pop());
                                       if(!_loc13_)
                                       {
                                          addr472:
                                          §§push(§§pop().replace(" Left",""));
                                       }
                                       _loc12_ = §§pop();
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          (_loc5_.mClip.Movieclip_UnlockBanner as MovieClip).visible = true;
                                       }
                                       while(true)
                                       {
                                          _loc5_.setEnabled(true);
                                          loop11:
                                          while(true)
                                          {
                                             addr498:
                                             while(true)
                                             {
                                                (_loc5_.mClip as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§&h§);
                                                continue loop11;
                                             }
                                          }
                                          if(!(_loc14_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          (_loc5_.mClip.Textfield_LockTime.text as TextField).text = _loc12_;
                                          if(!_loc13_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr498);
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr508);
                                       }
                                    }
                                    §§goto(addr472);
                                 }
                                 break;
                              }
                              §§goto(addr173);
                           }
                           _loc3_++;
                           continue;
                        }
                        §§goto(addr210);
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         if(!(_loc10_ && this))
         {
            super.injectData();
         }
         var _loc1_:* = true;
         var _loc2_:§[<§ = AngryBirdsFP11.sUserProgress as §[<§;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < § !f§)
               {
                  §§push(§92§[_loc3_]);
                  if(_loc10_ && this)
                  {
                     break;
                  }
                  _loc6_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.§<U§(_loc6_));
                     if(!(_loc10_ && this))
                     {
                        §§push(int(§§pop()));
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     _loc7_ = §§pop();
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(_loc2_.getStarsForLevel(_loc6_,_loc7_)));
                           if(_loc9_)
                           {
                              §§push(_loc8_ = §§pop());
                           }
                           if(§§pop() >= 1)
                           {
                              _loc3_++;
                              if(!_loc10_)
                              {
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr122);
                           }
                           break;
                        }
                        §§push(false);
                        if(_loc9_)
                        {
                           _loc1_ = §§pop();
                           if(_loc9_)
                           {
                              if(_loc9_)
                              {
                                 continue loop2;
                              }
                              continue;
                           }
                           §§goto(addr122);
                        }
                        break;
                     }
                     §§goto(addr123);
                  }
                  continue;
               }
               if(!(_loc10_ && _loc3_))
               {
                  addr122:
                  addr123:
                  if(_loc1_)
                  {
                     addr124:
                     §§push("CONTEST_ENTER");
                     if(!_loc9_)
                     {
                     }
                  }
                  else
                  {
                     §§push("CONTEST_INFO");
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr124);
               §§goto(addr122);
            }
            var _loc4_:* = §§pop();
            if(!_loc10_)
            {
               (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop(_loc4_);
               loop5:
               while(true)
               {
                  addr168:
                  while(true)
                  {
                     (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setActiveStatus(_loc1_);
                     continue loop5;
                  }
               }
               addr185:
            }
            while(true)
            {
               (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setVisibility(_loc1_);
               if(!(_loc9_ || _loc2_))
               {
                  continue;
               }
               if(!(_loc10_ && _loc3_))
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr185);
               }
               §§goto(addr168);
            }
            var _loc5_:Boolean;
            §§push(_loc5_ = Boolean(§,!C§.§;"§.§!!M§));
            if(!(_loc10_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc10_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        addr213:
                        §§pop();
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(§3!w§);
                           if(!_loc9_)
                           {
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr275);
                     }
                  }
               }
               addr274:
               if(§§pop())
               {
                  do
                  {
                     (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop("CONTEST_ALREADY_ENTERED");
                     do
                     {
                        (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setActiveStatus(false);
                        do
                        {
                           (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setVisibility(false);
                        }
                        while(!_loc9_);
                        
                     }
                     while(!(_loc9_ || _loc3_));
                     
                  }
                  while(!(_loc9_ || _loc3_));
                  
                  addr275:
               }
               return;
            }
            §§goto(addr213);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^!D§ = null;
         if(_loc4_)
         {
            §92§ = §,!C§.§;"§.§-&§;
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < §92§.length)
         {
            _loc2_ = §6w§.getItemByName("LevelButton" + (_loc1_ + 1)) as §^!D§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr118:
                           while(true)
                           {
                              addr70:
                              while(true)
                              {
                                 §§push((_loc2_.mClip as MovieClip).currentFrameLabel == "Closed");
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr117:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr84:
                           while(true)
                           {
                              (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§&h§);
                              addr103:
                              while(true)
                              {
                              }
                           }
                           addr84:
                        }
                        while(true)
                        {
                           _loc1_++;
                           if(!_loc3_)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr103);
                        }
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr118);
                     }
                     continue loop0;
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr84);
         }
         return super.deActivate();
      }
      
      private function §&h§(param1:MouseEvent) : void
      {
      }
      
      override protected function setLevelButtons() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§<!Y§ = true;
         }
         return super.setLevelButtons();
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§^!D§ = null;
         if(_loc6_ || this)
         {
            if(param2.indexOf("LEVEL_") != -1)
            {
               if(!_loc7_)
               {
                  if(((_loc4_ = §6w§.getItemByName("LevelButton" + param2.split("_")[1]) as §^!D§).mClip as MovieClip).currentFrameLabel == "Closed")
                  {
                     if(_loc6_)
                     {
                        §%?§.§ ]§("lockedlevel");
                        if(!_loc6_)
                        {
                           addr61:
                           super.uiInteractionHandler(param1,param2,param3);
                           var _loc5_:* = param2;
                           if(_loc6_)
                           {
                              §§push("LEVEL_5");
                              if(_loc6_)
                              {
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          addr150:
                                          §§push(0);
                                          if(!(_loc6_ || param2))
                                          {
                                             addr219:
                                          }
                                       }
                                       else
                                       {
                                          addr223:
                                          §§push(3);
                                          if(!(_loc7_ && param3))
                                          {
                                             addr231:
                                          }
                                       }
                                       §§goto(addr236);
                                    }
                                    else
                                    {
                                       §§push("LEVEL_6");
                                       if(_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_ || param2)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(1);
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      §§goto(addr231);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr236);
                                             }
                                             else
                                             {
                                                §§push("ENTER_COMPETITION");
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr190);
                                                }
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr221);
                                    }
                                 }
                                 §§goto(addr198);
                              }
                              addr190:
                              §§push(_loc5_);
                              if(!(_loc7_ && param1))
                              {
                                 addr198:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(2);
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr219);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr223);
                                    }
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    addr221:
                                    §§push("LOTUS_LINK");
                                    §§push(_loc5_);
                                 }
                                 §§goto(addr223);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr223);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr236:
                              switch(§§pop())
                              {
                                 case 0:
                                    §8"'§(§92§[4]);
                                    break;
                                    addr128:
                                 case 1:
                                    §8"'§(§92§[5]);
                                    addr89:
                                    break;
                                    addr120:
                                 case 2:
                                    §%?§.§"!#§();
                                    addr94:
                                    if(_loc6_ || param3)
                                    {
                                       break;
                                    }
                                    §§goto(addr128);
                                    break;
                                 case 3:
                                    navigateToURL(new URLRequest("http://www.facebook.com/LotusF1Team"),"_blank");
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr120);
                                          }
                                          §§goto(addr89);
                                       }
                                       else
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                              }
                              return;
                           }
                           §§goto(addr150);
                           addr66:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr66);
            }
         }
         §§goto(addr61);
      }
      
      override public function run(param1:Number) : int
      {
         return super.run(param1);
      }
   }
}
