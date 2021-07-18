package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §"!+§.§2!U§;
   import §"!+§.§6!7§;
   import §"!+§.§=w§;
   import §%!$§.§=m§;
   import §&! §.§%!Q§;
   import §'!"§.§?!6§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§,F§;
   import §+a§.§8!I§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §9N§.§;c§;
   import §9N§.§^_§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §?w§.§null§;
   import §@,§.§"j§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   
   public class StatePlay extends §#W§ implements §=w§
   {
      
      public static const §`O§:String = "StatePlay";
      
      private static const §4!A§:Number = -10000.0;
      
      private static const §]&§:Number = 15000.0;
      
      private static const §'!-§:int = 0;
      
      private static const §[Q§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`O§ = "StatePlay";
            loop0:
            while(true)
            {
               §4!A§ = -10 * 1000;
               addr90:
               while(true)
               {
                  §]&§ = 15 * 1000;
                  addr37:
                  if(_loc2_ || StatePlay)
                  {
                     return;
                     addr54:
                  }
               }
               while(true)
               {
                  if(_loc2_ || _loc1_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr73);
      }
      
      private var §>z§:Boolean = true;
      
      private var §5s§:Boolean = false;
      
      private var §6!-§:Number = -10000.0;
      
      private var §2!W§:int = 0;
      
      private var §6B§:Boolean;
      
      private var callObject:Object;
      
      private var §5@§:Boolean = false;
      
      private var §`!X§:Number;
      
      private var § @§:Number;
      
      private var §=,§:Boolean = true;
      
      private var §@r§:Boolean = false;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         do
         {
            §"c§ = new §,!N§(this);
            do
            {
               §"c§.init(§@]§.§3!6§.Views.View_LevelPlay[0]);
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      override protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,Y§.addCallback("navigationAttempt",this.§7@§);
         }
      }
      
      private function §7@§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var url:String = param1;
         loop0:
         while(true)
         {
            §;!=§.§`S§ = url;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§,l§.§,?§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().§6!T§() == null);
                     if(_loc5_ || param1)
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr92:
                                 while(true)
                                 {
                                    §§push(§,l§.§,?§);
                                    if(_loc4_ && param1)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().§6!T§() == StatePlay.§`O§);
                                    if(!_loc4_)
                                    {
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                              addr91:
                           }
                           while(§§pop())
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              addr67:
                              if(_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(false)
                                 {
                                    continue loop2;
                                 }
                                 try
                                 {
                                    §"c§.container.setObjectToFront(§]u§.sCheetosPopups.container);
                                    break;
                                 }
                                 catch(e:Error)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr91);
                  }
               }
            }
         }
      }
      
      private function navigationConfirmed() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §,Y§.§[[§("navigationConfirmed",§;!=§.§`S§);
            if(_loc3_ || _loc3_)
            {
               §]u§.sCheetosPopups.hidePopup();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.levelStarted();
            while(true)
            {
               §[&§.§[]§();
               addr127:
               while(true)
               {
                  this.§+E§();
                  addr123:
                  while(true)
                  {
                     §=m§.§,w§();
                  }
               }
            }
            addr130:
         }
         loop3:
         while(true)
         {
            §%!Q§.§4$§(§%!Q§.§@"§,§[!!§.§7!F§);
            loop4:
            while(true)
            {
               if(!_loc2_)
               {
                  continue loop3;
               }
               this.§6B§ = false;
               loop5:
               while(true)
               {
                  §=m§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
                  loop6:
                  while(!_loc1_)
                  {
                     §;!=§.§"!'§(§[!!§.§7!F§).numberOfBirdsShot = §[&§.§&!'§.slingshot.§8c§();
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop5;
                        }
                        continue loop6;
                        addr73:
                        this.§`!X§ = new Date().time;
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr123);
                     }
                     continue loop4;
                  }
                  §§goto(addr127);
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(!_loc1_)
                     {
                        §§push(§0Z§.§4J§);
                        while(true)
                        {
                           §§pop().start();
                           addr161:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr156:
                  }
                  loop2:
                  while(true)
                  {
                     this.§>O§();
                     loop3:
                     while(true)
                     {
                        §"c§.setText(§6!7§.getText("Text_Highscore").toUpperCase(),"TextField_Highscore_txt");
                        loop4:
                        for(; !(_loc1_ && this); if(!(_loc1_ && this))
                        {
                           this.§;z§();
                           for(; _loc2_; this.§7M§(),do
                           {
                              this.§=,§ = true;
                           }
                           while(!(_loc2_ || this));
                           ,if(_loc1_)
                           {
                              continue;
                           },if(_loc2_)
                           {
                              §§goto(addr39);
                           },§§goto(addr63))
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr156);
                           }
                           continue loop3;
                        })
                        {
                           §"c§.setText(§6!7§.getText("Text_Score").toUpperCase(),"TextField_Score_txt");
                           while(true)
                           {
                              §"c§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                              loop6:
                              while(!(_loc1_ && this))
                              {
                                 §"c§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                                 do
                                 {
                                    this.§5@§ = false;
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                    continue loop4;
                                 }
                                 while(_loc1_ && this);
                                 
                                 return;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               §§goto(addr160);
            }
         }
         §§goto(addr161);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §,Y§.§!9§("navigationAttempt",this.§7@§);
            while(true)
            {
               super.deActivate();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§]D§();
                     do
                     {
                        this.§7M§();
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §]D§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§5s§);
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(§0Z§.§=2§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     break;
                     addr98:
                  }
                  §%!Q§.§4$§(§%!Q§.§6!?§,_loc1_.toString(),_loc1_);
                  if(!(_loc3_ || this))
                  {
                     break loop0;
                  }
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },§%!Q§.§4$§(§%!Q§.§"!O§,_loc1_.toString(),_loc1_))
            {
               if(_loc3_)
               {
                  if(this.§6!-§ <= §]&§)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     addr133:
                     this.§5s§ = true;
                  }
                  while(true)
                  {
                     _loc1_ = Math.round(1000 / this.§6!-§ * this.§2!W§);
                     continue loop0;
                     addr72:
                     if(!(_loc2_ && _loc2_))
                     {
                        break loop0;
                     }
                  }
               }
               §§goto(addr133);
            }
            return;
         }
         §§goto(addr98);
      }
      
      private function §?!E§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§6!-§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§6!-§ = §§pop();
            if(_loc5_)
            {
               if(this.§6!-§ > 0)
               {
                  if(_loc5_)
                  {
                     addr50:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§2!W§);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§2!W§ = _loc3_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      private function §7M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6!-§ = §4!A§;
         }
         do
         {
            this.§2!W§ = 0;
         }
         while(_loc2_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§=,§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     while(true)
                     {
                        §,F§.§ C§(§"c§);
                     }
                     addr109:
                  }
                  while(true)
                  {
                     addr82:
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     §[&§.§[]§();
                     loop6:
                     while(true)
                     {
                        addr20:
                        while(true)
                        {
                           §§push(§[&§.§5!T§);
                           if(_loc4_ && _loc3_)
                           {
                              continue loop0;
                           }
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    continue loop6;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§@r§);
                                    continue loop0;
                                 }
                                 addr67:
                              }
                              break;
                           }
                           addr95:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr97:
                                 return 0;
                              }
                           }
                           §§goto(addr67);
                           continue loop6;
                        }
                        §§push(super.run(param1));
                        if(!_loc4_)
                        {
                           addr118:
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop() == §[4§.STATE_STATUS_RUNNING)
                              {
                                 addr142:
                                 this.§?!E§(param1);
                                 if(_loc5_)
                                 {
                                    this.§>O§();
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr142);
                                          }
                                          var _loc3_:§+!M§ = §"c§.getItemByName("Button_LaunchCheetos") as §+!M§;
                                          if(!_loc4_)
                                          {
                                             addr392:
                                             §§push(§[&§.§&!'§.slingshot.mSlingShotState == §;c§.§?!S§);
                                             if(§[&§.§&!'§.slingshot.mSlingShotState == §;c§.§?!S§)
                                             {
                                                addr398:
                                                §§pop();
                                                addr399:
                                                §§push(!this.§6B§);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr376:
                                                      if(§§pop())
                                                      {
                                                         addr377:
                                                         §§pop();
                                                         addr336:
                                                         addr378:
                                                         §§push(§;!=§.credits >= §[Q§);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr357:
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§pop();
                                                                           addr365:
                                                                           §§push((§[&§.§&!'§ as §!&§).§`!P§());
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 addr309:
                                                                                 §§push(!§§pop());
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr316:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr318:
                                                                                       _loc3_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             addr265:
                                                                                             if(mNextState.length > 0)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      return §[4§.STATE_STATUS_COMPLETED;
                                                                                                   }
                                                                                                   addr292:
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                addr284:
                                                                                             }
                                                                                             §§push(§[&§.§&!'§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop().slingshot);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().mSlingShotState);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§;c§.§<b§);
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr237:
                                                                                                                           §§push(§[&§.§&!'§);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 addr247:
                                                                                                                                 §§push(§§pop().slingshot);
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    (§§pop() as §null§).§9!N§();
                                                                                                                                    §§goto(addr257);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr392);
                                                                                                                           }
                                                                                                                           §§goto(addr365);
                                                                                                                        }
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                     §§goto(addr284);
                                                                                                                  }
                                                                                                                  §§goto(addr257);
                                                                                                               }
                                                                                                               addr257:
                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               return §[4§.STATE_STATUS_RUNNING;
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr336);
                                                                                                      }
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr247);
                                                                                             }
                                                                                             §§goto(addr237);
                                                                                          }
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    _loc3_.setComponentState(§<d§.§%^§);
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr376);
                                          }
                                          §§goto(addr237);
                                       }
                                       addr161:
                                       return _loc2_;
                                       addr160:
                                    }
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr160);
                           }
                        }
                        §§goto(addr161);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr109);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§[!!§.§7!F§);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:Object = §;!=§.§"!'§(§[!!§.§7!F§);
         var _loc3_:int = §4b§.getScore();
         §§push(§[!!§.§``§(_loc1_,_loc3_));
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = new Date().time;
         if(_loc7_)
         {
            _loc2_.userId = §;!=§.§`!;§.name;
            loop0:
            while(true)
            {
               _loc2_.levelId = _loc1_;
               loop1:
               while(true)
               {
                  _loc2_.score = _loc3_;
                  while(true)
                  {
                     _loc2_.stars = _loc4_;
                     addr212:
                     addr162:
                     while(true)
                     {
                        _loc2_.blocks = §^_§.§%!5§();
                        continue loop1;
                     }
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        _loc2_.sessionId = §4!E§.§0E§();
                        loop9:
                        while(true)
                        {
                           _loc2_.userLevelId = §;!=§.userLevelId;
                           addr139:
                           loop10:
                           while(!(_loc8_ && _loc2_))
                           {
                              while(true)
                              {
                                 _loc2_.security = §4!E§.§-!X§(_loc2_);
                                 for(; !_loc8_; this.callObject = {
                                    "type":§4!E§.§'!<§,
                                    "sessionID":_loc2_.sessionId,
                                    "userID":_loc2_.userId,
                                    "levelID":_loc2_.levelId,
                                    "score":_loc2_.score,
                                    "blocks":_loc2_.blocks,
                                    "security":_loc2_.security,
                                    "time":_loc2_.time,
                                    "gameplay":_loc2_.gameplay,
                                    "numberOfBirdsShot":_loc2_.numberOfBirdsShot,
                                    "userLevelID":_loc2_.userLevelId
                                 },if(_loc7_ || _loc1_)
                                 {
                                    continue loop10;
                                 })
                                 {
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr212);
                                 }
                                 addr160:
                                 addr182:
                                 while(!_loc8_)
                                 {
                                    §§goto(addr162);
                                 }
                                 addr194:
                                 while(_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    _loc2_.time = _loc5_ - this.§`!X§;
                                    §§goto(addr160);
                                 }
                                 while(true)
                                 {
                                    _loc2_.numberOfBirdsShot = (_loc2_.numberOfBirdsShot as Number) - §[&§.§&!'§.slingshot.§8c§();
                                    §§goto(addr182);
                                 }
                              }
                              if(_loc7_ || _loc3_)
                              {
                                 continue loop9;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      override public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr62:
                           while(_loc5_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop7:
                                 for(; !(_loc4_ && _loc3_); while(true)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                    addr28:
                                    §§pop().§§slot[1] = param1;
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr37);
                                 },continue loop5)
                                 {
                                    do
                                    {
                                       §§push(§§newactivation());
                                       while(!_loc4_)
                                       {
                                          §§pop().§§slot[5] = 0;
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                    while(false);
                                    
                                    try
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && this))
                                       {
                                          §§pop().§§slot[2] = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                if(§§pop().§§slot[2].error)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         var _loc3_:* = §§pop().§§slot[2].error.code;
                                                         if(_loc5_)
                                                         {
                                                            if(§@!B§ === _loc3_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr258:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr255:
                                                                  §§push(1);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr258);
                                                                  }
                                                               }
                                                               addr263:
                                                               if(!_loc4_)
                                                               {
                                                                  loop11:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§,l§.§,?§);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(§6l§.§`O§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§3C§(§§pop());
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 addr695:
                                                                                 if(false)
                                                                                 {
                                                                                    addr697:
                                                                                 }
                                                                                 addr883:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr272:
                                                                                 if(this.callObject.type != null)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       _loc3_ = this.callObject.type;
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§push(§4!E§.§'!<§);
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop() === _loc3_)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc5_ || param1))
                                                                                                   {
                                                                                                      addr948:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr937:
                                                                                                   §§push(1);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§4!E§.§9p§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   addr933:
                                                                                                   if(§§pop() === _loc3_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr937);
                                                                                                      }
                                                                                                      addr954:
                                                                                                      switch(§§pop())
                                                                                                      {
                                                                                                         case 0:
                                                                                                            try
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr289:
                                                                                                                  if(§§pop().§§slot[2].hasWonPrize)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        §;!=§.hasWonPrize = returnObject.hasWonPrize;
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr345:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(§§pop().§§slot[2].userPrizeId)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §;!=§.userPrizeId = returnObject.userPrizeId;
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       addr326:
                                                                                                                                       §,Y§.§[[§("levelComplete",§[!!§.§7!F§,true);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §;!=§.§%j§(§[!!§.§?I§());
                                                                                                                                          if(_loc5_ || this)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr326);
                                                                                                                                             }
                                                                                                                                             addr402:
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr483:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr486:
                                                                                                                                             if(§§pop().§§slot[2].credits >= §'!-§)
                                                                                                                                             {
                                                                                                                                                this.§`K§();
                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                {
                                                                                                                                                   addr433:
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr435);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§,l§.§,?§);
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr516:
                                                                                                                                                   §§push(§6l§.§`O§);
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr525:
                                                                                                                                                      §§pop().§3C§(§§pop());
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr435:
                                                                                                                                                         §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr552:
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr760:
                                                                                                                                                         §§goto(addr697);
                                                                                                                                                         addr528:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr579:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop().§§slot[2].userLevelID)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr592:
                                                                                                                                                                  §;!=§.userLevelId = returnObject.userLevelID;
                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     try
                                                                                                                                                                     {
                                                                                                                                                                        addr604:
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§§slot[5] = int(returnObject.credits as int);
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr621:
                                                                                                                                                                              §;!=§.credits = credits;
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr646:
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr654:
                                                                                                                                                                                    §§push(§§pop().§§slot[2] == null);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(!(_loc4_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr673:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr874:
                                                                                                                                                                                                      addr877:
                                                                                                                                                                                                      addr875:
                                                                                                                                                                                                      addr870:
                                                                                                                                                                                                      addr878:
                                                                                                                                                                                                      §§push(Boolean(returnObject.spotPrize != null));
                                                                                                                                                                                                      if(Boolean(returnObject.spotPrize != null))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr879:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§goto(addr995);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr865:
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr868:
                                                                                                                                                                                                               if(returnObject.credits >= §'!-§)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§5@§ = ((§[&§.§&!'§ as §!&§).§ !4§ as §?!6§).§"k§();
                                                                                                                                                                                                                     §§push(§,F§.§,t§);
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr808:
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr816:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr817:
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       §§push(this.§5@§);
                                                                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr776:
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr782:
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr784:
                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr868);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §]u§.sCheetosPopups.showPopup(§8!I§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr794:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr995);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr883);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr874);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr808);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr865);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr817);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr776);
                                                                                                                                                                                                                                       addr827:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr875);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr874);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr782);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr874);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr868);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr808);
                                                                                                                                                                                                                     addr853:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr991);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr746:
                                                                                                                                                                                                               if(returnObject.credits >= §'!-§)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr784);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  ((§[&§.§&!'§ as §!&§).§ !4§ as §?!6§).§"!0§();
                                                                                                                                                                                                                  §§goto(addr760);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr714:
                                                                                                                                                                                                                           if(§§pop().§§slot[2].credits < §'!-§)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§,l§.§,?§);
                                                                                                                                                                                                                                    break loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr853);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr991);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr883);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr870);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr856);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr746);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr879);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr868);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr878);
                                                                                                                                                                                                      addr676:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr695);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr874);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr776);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr673);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr856);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr784);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr654);
                                                                                                                                                                     }
                                                                                                                                                                     catch(e:Error)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = e;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr646);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr676);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr784);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr604);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr714);
                                                                                                                                                         addr561:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr695);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§3C§(§§pop());
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §]u§.sCheetosPopups.showPopup(§8!I§.NO_CREDIT,"NO_CREDIT");
                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr827);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr695);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr750);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr879);
                                                                                                                                                         addr741:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr760);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr991);
                                                                                                                                                }
                                                                                                                                                break loop11;
                                                                                                                                             }
                                                                                                                                             §§goto(addr750);
                                                                                                                                             §§goto(addr552);
                                                                                                                                          }
                                                                                                                                          §§goto(addr874);
                                                                                                                                          addr335:
                                                                                                                                       }
                                                                                                                                       §§goto(addr592);
                                                                                                                                    }
                                                                                                                                    §§goto(addr879);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §;!=§.userPrizeId = null;
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr326);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr991);
                                                                                                                           }
                                                                                                                           §§goto(addr874);
                                                                                                                        }
                                                                                                                        §§goto(addr335);
                                                                                                                     }
                                                                                                                     §§goto(addr784);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §;!=§.hasWonPrize = false;
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr345);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr551:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(§§pop().§§slot[2].security)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                    {
                                                                                                                                       addr530:
                                                                                                                                       §§push(§4!E§.§2!>§(returnObject.userID,returnObject.credits,this.§ @§));
                                                                                                                                       if(!(_loc4_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                       §§pop().§§slot[4] = §§pop();
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr551);
                                                                                                                                       }
                                                                                                                                       §§goto(addr621);
                                                                                                                                    }
                                                                                                                                    if(§§pop().§§slot[4].toUpperCase() == returnObject.security.toUpperCase())
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr483);
                                                                                                                                       }
                                                                                                                                       §§goto(addr874);
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                 }
                                                                                                                                 §§goto(addr486);
                                                                                                                              }
                                                                                                                              §§goto(addr760);
                                                                                                                           }
                                                                                                                           §§goto(addr552);
                                                                                                                        }
                                                                                                                        §§goto(addr654);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr654);
                                                                                                               }
                                                                                                               §§goto(addr746);
                                                                                                            }
                                                                                                            catch(e:Error)
                                                                                                            {
                                                                                                               §<p§(e);
                                                                                                            }
                                                                                                            §§goto(addr402);
                                                                                                         case 1:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§pop().§§slot[3] = §;!=§.§"!'§(§[!!§.§7!F§);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr530);
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§goto(addr483);
                                                                                                            }
                                                                                                            §§goto(addr868);
                                                                                                         case 2:
                                                                                                            try
                                                                                                            {
                                                                                                               §,Y§.§[[§("levelStart",§[!!§.§7!F§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr561);
                                                                                                               }
                                                                                                            }
                                                                                                            catch(e:Error)
                                                                                                            {
                                                                                                               _loc3_ = e;
                                                                                                               §<p§(e);
                                                                                                               §§goto(addr579);
                                                                                                            }
                                                                                                            §§goto(addr750);
                                                                                                      }
                                                                                                      this.§@r§ = false;
                                                                                                      addr953:
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr991:
                                                                                                         super.onComplete(e);
                                                                                                         addr995:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr856:
                                                                                                            §§push(Boolean(returnObject.spotPrize));
                                                                                                            addr882:
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr879);
                                                                                                      addr953:
                                                                                                      addr962:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr943:
                                                                                                      if(§4!E§.§1!Q§ !== _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr953);
                                                                                                         §§push(3);
                                                                                                      }
                                                                                                      §§goto(addr953);
                                                                                                   }
                                                                                                   §§push(2);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr948);
                                                                                                   }
                                                                                                   §§goto(addr953);
                                                                                                }
                                                                                                §§goto(addr943);
                                                                                             }
                                                                                             §§goto(addr953);
                                                                                          }
                                                                                          §§goto(addr933);
                                                                                       }
                                                                                       §§goto(addr937);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                              }
                                                                              §§goto(addr962);
                                                                           }
                                                                           §§goto(addr525);
                                                                        }
                                                                        break;
                                                                     case 1:
                                                                        §§push(§,l§.§,?§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§6l§.§`O§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§3C§(§§pop());
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr143:
                                                                                 §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Popup_Session_Expired"));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr435);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr741);
                                                                              }
                                                                              §§goto(addr879);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr516);
                                                                        }
                                                                        §§goto(addr516);
                                                                     default:
                                                                        §§push(this);
                                                                        §§push(returnObject.error.message + " Code:");
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() + returnObject.error.code);
                                                                        }
                                                                        §§pop().§<p§(§§pop());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr143);
                                                                           }
                                                                           addr269:
                                                                           return;
                                                                        }
                                                                        §§goto(addr868);
                                                                        §§goto(addr879);
                                                                  }
                                                                  §§goto(addr516);
                                                                  §§push(§6l§.§`O§);
                                                               }
                                                               §§goto(addr954);
                                                            }
                                                            else
                                                            {
                                                               if(§0?§ === _loc3_)
                                                               {
                                                                  §§goto(addr255);
                                                               }
                                                               else
                                                               {
                                                                  §§push(2);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                   §§goto(addr794);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr879);
                                       }
                                       §§goto(addr714);
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    §§goto(addr954);
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           continue loop0;
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr28);
                              }
                              §§goto(addr62);
                           }
                           §§goto(addr41);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      override public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      override public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@r§ = false;
            while(true)
            {
               §,l§.§,?§.§3C§(§6l§.§`O§);
               while(!_loc3_)
               {
                  §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §<p§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §,l§.§,?§.§3C§(§6l§.§`O§);
         }
         do
         {
            §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
         }
         while(_loc2_);
         
      }
      
      override public function getVictoryState() : String
      {
         return §^!§.§`O§;
      }
      
      override public function getLoserState() : String
      {
         return §<K§.§`O§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.keyDown(param1);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr729:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr724:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[3] = param3;
                              addr714:
                              addr605:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc7_)
                                 {
                                    if(!(§§pop().§§slot[3] is §+!M§))
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    addr709:
                                    addr709:
                                    §§push(§§newactivation());
                                 }
                                 continue loop6;
                              }
                              addr789:
                              var _loc5_:* = eventName;
                              if(_loc7_)
                              {
                                 if("CLOSE_TUTORIAL" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(0);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§goto(addr938);
                                       }
                                       addr884:
                                       §§goto(addr938);
                                    }
                                    addr890:
                                    §§push(8);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr938);
                                    }
                                    addr907:
                                    §§goto(addr938);
                                 }
                                 if("PAUSE" === _loc5_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                          §§goto(addr938);
                                       }
                                       addr916:
                                       §§goto(addr938);
                                    }
                                    addr881:
                                    §§push(7);
                                    if(_loc7_)
                                    {
                                       §§goto(addr884);
                                    }
                                    §§goto(addr938);
                                 }
                                 if("RESTART_LEVEL" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(2);
                                       if(_loc7_ || param3)
                                       {
                                          §§goto(addr938);
                                       }
                                       §§goto(addr884);
                                    }
                                    addr913:
                                    §§push(10);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr916);
                                    }
                                    §§goto(addr938);
                                 }
                                 if("CONTINUE" === _loc5_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(3);
                                       if(_loc7_ || param2)
                                       {
                                          §§goto(addr938);
                                       }
                                       addr861:
                                       §§goto(addr938);
                                    }
                                    addr867:
                                    §§push(6);
                                    if(_loc7_ || param3)
                                    {
                                       §§goto(addr938);
                                    }
                                    §§goto(addr907);
                                 }
                                 if("LAUNCH_CHEETOS" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(4);
                                       if(_loc6_)
                                       {
                                       }
                                       §§goto(addr938);
                                    }
                                    addr899:
                                    §§push(9);
                                    if(!(_loc6_ && this))
                                    {
                                       §§goto(addr907);
                                    }
                                    §§goto(addr938);
                                 }
                                 if("ZOOM_IN" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(5);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr861);
                                       }
                                       §§goto(addr938);
                                    }
                                    §§goto(addr867);
                                 }
                                 if("ZOOM_OUT" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr867);
                                    }
                                    §§goto(addr890);
                                 }
                                 if("BUTTON_NO" === _loc5_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr881);
                                    }
                                    §§goto(addr890);
                                 }
                                 if("BUTTON_YES" === _loc5_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr890);
                                    }
                                    §§goto(addr913);
                                 }
                                 if("CHECKBOX_CHANGE" === _loc5_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr899);
                                    }
                                    §§goto(addr920);
                                 }
                                 if("CREDIT_REDEEM" === _loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr913);
                                    }
                                    §§goto(addr920);
                                 }
                                 if("CONFIRM_LEAVE" === _loc5_)
                                 {
                                    addr920:
                                    §§push(11);
                                    if(_loc7_)
                                    {
                                       §§goto(addr899);
                                    }
                                    §§goto(addr938);
                                 }
                                 addr938:
                                 switch(§§pop())
                                 {
                                    case 9:
                                       §§push(§§newactivation());
                                       if(_loc7_ || param2)
                                       {
                                          §§pop().§§slot[4] = component as §<d§;
                                          if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
                                          {
                                             addr243:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr263:
                                                   §,l§.§,?§.§#! § = !§,l§.§,?§.§#! §;
                                                   addr259:
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr206:
                                                         addr205:
                                                         §§push(§,l§.§,?§.§#! §);
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr789);
                                                                  }
                                                                  addr189:
                                                                  §§pop().§§slot[4].setComponentState(§<d§.§^#§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr730:
                                                                           break;
                                                                           addr132:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr402:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr349:
                                                                        if(_loc7_)
                                                                        {
                                                                           this.§;X§();
                                                                           addr353:
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    sCheetosPopups.hidePopup();
                                                                                    addr330:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr274:
                                                                                          break;
                                                                                       }
                                                                                       this.§5@§ = false;
                                                                                       addr550:
                                                                                       break;
                                                                                       addr589:
                                                                                       addr569:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr450:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr491:
                                                                                 }
                                                                                 addr424:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                              addr423:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr416:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr547:
                                                                           this.§;!F§();
                                                                           break;
                                                                           addr512:
                                                                           addr549:
                                                                        }
                                                                     }
                                                                     addr340:
                                                                     break;
                                                                  }
                                                                  addr742:
                                                                  sCheetosPopups.hidePopup();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr746:
                                                                     break;
                                                                     addr746:
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc7_ || param1)
                                                               {
                                                                  addr232:
                                                                  checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  addr230:
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr132);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr746);
                                                            }
                                                            addr603:
                                                            §§pop();
                                                            addr582:
                                                            §§push(this.§5@§);
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr581:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr583:
                                                               §]u§.sCheetosPopups.showPopup(§8!I§.SPOT_PRIZE_AVAILABLE,"SPOT_PRIZE_AVAILABLE");
                                                               §§goto(addr589);
                                                            }
                                                            §§goto(addr550);
                                                            addr604:
                                                         }
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr541:
                                                               if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                                                               {
                                                                  §§goto(addr547);
                                                               }
                                                               §§goto(addr512);
                                                            }
                                                            else
                                                            {
                                                               this.§;!F§();
                                                               addr517:
                                                               if(_loc6_ && param2)
                                                               {
                                                                  §§goto(addr583);
                                                               }
                                                            }
                                                            §§goto(addr547);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr582);
                                                         }
                                                      }
                                                      §§goto(addr569);
                                                   }
                                                   break;
                                                }
                                                addr320:
                                                if(!_loc6_)
                                                {
                                                   this.§;!F§();
                                                   addr324:
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr274);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr541);
                                                   }
                                                }
                                                §§goto(addr549);
                                             }
                                             §§goto(addr324);
                                          }
                                          addr291:
                                          §§push(§,l§.§,?§);
                                          §§push(§,l§.§,?§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop().§+d§);
                                             if(_loc7_ || this)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr157:
                                                   §§push(!§§pop());
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§pop().§+d§ = §§pop();
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr63:
                                                            §§push(§,l§.§,?§);
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_ || param3)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop().§+d§);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_ || param3)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr789);
                                                                                    }
                                                                                    addr106:
                                                                                    §§push(§§pop().§§slot[4]);
                                                                                    if(!(_loc6_ && param3))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr117:
                                                                                          §§push(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().setComponentState(§§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§goto(addr730);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr353);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr230);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr189);
                                                                                    }
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              addr771:
                                                                              break;
                                                                              addr771:
                                                                           }
                                                                           §§push(§§newactivation());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && param3))
                                                                              {
                                                                                 §§push(§§pop().§§slot[4]);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§<d§.§^#§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§pop().setComponentState(§§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr63);
                                                                                                   }
                                                                                                   §§goto(addr730);
                                                                                                }
                                                                                                addr301:
                                                                                                this.navigationConfirmed();
                                                                                                if(_loc7_ || param3)
                                                                                                {
                                                                                                   §§goto(addr274);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr746);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr243);
                                                                                          }
                                                                                          §§goto(addr771);
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr117);
                                                                                 }
                                                                                 §§goto(addr106);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr789);
                                                                        }
                                                                        addr461:
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!§]u§.sCheetosPopups.showPopup(§8!I§.§0H§))
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       this.§;X§();
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr771);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr491);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§;X§();
                                                                              §§goto(addr450);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr601:
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr603);
                                                                           }
                                                                           §§goto(addr581);
                                                                        }
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         addr400:
                                                         sCheetosPopups.hidePopup();
                                                         §§goto(addr402);
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr789);
                                    case 1:
                                       mNextState = § !#§.§`O§;
                                       if(!(_loc6_ && param2))
                                       {
                                          break;
                                       }
                                       §§goto(addr746);
                                       break;
                                    case 0:
                                       §,F§.§%_§();
                                       if(_loc7_ || param3)
                                       {
                                          §§push(§,F§.§,t§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr601);
                                             §§push(!§§pop());
                                          }
                                          §§goto(addr603);
                                       }
                                       else
                                       {
                                          §§goto(addr742);
                                       }
                                    case 2:
                                       addr530:
                                       §§goto(addr206);
                                    case 3:
                                       sCheetosPopups.hidePopup();
                                       §§push((§[&§.§&!'§ as §!&§).§`!P§());
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             break;
                                          }
                                          §§goto(addr604);
                                       }
                                       break;
                                    case 4:
                                       §§push(§[&§.§&!'§);
                                       if(_loc7_)
                                       {
                                          §§goto(addr461);
                                          §§push((§§pop() as §!&§).§`!P§());
                                       }
                                       else
                                       {
                                          §§goto(addr530);
                                       }
                                       §§goto(addr603);
                                    case 5:
                                       §4b§.doUserZoom(true);
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             break;
                                          }
                                          §§goto(addr517);
                                       }
                                       break;
                                    case 6:
                                       §4b§.doUserZoom(false);
                                       §§goto(addr423);
                                    case 7:
                                       if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
                                       {
                                          if(_loc7_)
                                          {
                                             sCheetosPopups.hidePopup();
                                             §§goto(addr416);
                                          }
                                          else
                                          {
                                             §§goto(addr771);
                                          }
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                                       {
                                          §§goto(addr400);
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.CONFIRM_LEAVE)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             sCheetosPopups.hidePopup();
                                             if(!(_loc7_ || this))
                                             {
                                                §§goto(addr746);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr340);
                                    case 8:
                                       if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§0H§)
                                       {
                                          §§goto(addr349);
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                                       {
                                          §§goto(addr320);
                                       }
                                       else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.CONFIRM_LEAVE)
                                       {
                                          §§goto(addr301);
                                       }
                                       §§goto(addr274);
                                    default:
                                       break;
                                    case 10:
                                       try
                                       {
                                          §,Y§.§[[§("addCredits");
                                          if(!(_loc6_ && param1))
                                          {
                                             §§goto(addr742);
                                          }
                                          §§goto(addr746);
                                       }
                                       catch(e:Error)
                                       {
                                       }
                                       §§goto(addr746);
                                    case 11:
                                       try
                                       {
                                          this.navigationConfirmed();
                                          if(_loc7_ || param3)
                                          {
                                             §§goto(addr771);
                                          }
                                          break;
                                       }
                                       catch(e:Error)
                                       {
                                       }
                                       §§goto(addr771);
                                 }
                                 return;
                                 §§push(12);
                              }
                              §§goto(addr899);
                           }
                        }
                        if(_loc7_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §;X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6B§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push((§[&§.§&!'§ as §!&§).§`!P§());
                     addr75:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              §[&§.§[]§();
                           }
                           this.§47§();
                           addr95:
                        }
                        else
                        {
                           this.§`K§();
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_ || this)
                              {
                                 addr20:
                                 return;
                                 addr53:
                              }
                              §§goto(addr95);
                           }
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr20);
            }
            §§goto(addr75);
         }
         §§goto(addr53);
      }
      
      private function §`K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6B§ = true;
            loop0:
            while(true)
            {
               §§push(§[&§.§&!'§);
               loop1:
               while(true)
               {
                  (§§pop() as §!&§).§@!,§();
                  loop2:
                  while(true)
                  {
                     §§push(§[&§.§&!'§);
                     loop3:
                     while(_loc1_)
                     {
                        (§§pop().slingshot as §null§).§`K§();
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              §§push(§[&§.§&!'§);
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop3;
                              }
                              §§pop().camera.goToBirdView();
                              loop5:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §,F§.§ C§(§"c§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              §§goto(addr69);
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §;!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0"§.§!7§();
         }
         do
         {
            mNextState = §0"§.§`O§;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private function §>O§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §4b§.getScore();
         if(!_loc4_)
         {
            §"c§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         §§push(§,l§.§3!,§.§=!V§(§[!!§.§7!F§));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            §"c§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      private function §+E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@r§ = true;
            while(true)
            {
               this.callObject = {
                  "type":§4!E§.§1!Q§,
                  "sessionID":§4!E§.§0E§(),
                  "userID":§;!=§.§`!;§.name,
                  "levelId":§[!!§.§7!F§
               };
               while(_loc2_ || this)
               {
                  new §4!E§(this.callObject,§,l§.§1!Q§,this,§4!E§.§;4§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §47§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ @§ = new Date().time;
            while(true)
            {
               this.callObject = {
                  "type":§4!E§.§9p§,
                  "sessionID":§4!E§.§0E§(),
                  "userID":§;!=§.§`!;§.name,
                  "purchaseTime":this.§ @§
               };
               while(_loc1_ || _loc2_)
               {
                  new §4!E§(this.callObject,§,l§.§9p§,this,§4!E§.§;4§);
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §;z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_LaunchCheetos") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc3_)
         {
            if(!(§[&§.§&!'§ as §!&§).§`!P§())
            {
               _loc2_.visible = false;
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     addr79:
                     _loc2_.visible = true;
                     addr82:
                  }
                  return;
               }
               §§goto(addr82);
            }
         }
         §§goto(addr79);
      }
   }
}
