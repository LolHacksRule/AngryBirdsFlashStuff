package §#!2§
{
   import §"!2§.§+,§;
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §&[§.§-o§;
   import §'!%§.CachedFacebookFriends;
   import §-!>§.§4!T§;
   import §6!'§.VersusComponent;
   import §9!!§.§85§;
   import §9!!§.GoogleAnalyticsTracker;
   import §9!H§.§7k§;
   import §9c§.StateLevelEndEagle;
   import §9c§.StateLevelEndRio;
   import §9c§.StateLevelLoadClassic;
   import §9c§.StatePlay;
   import §9v§.§4!c§;
   import §9v§.FacebookTutorialPopupManager;
   import §9v§.SyncingPopup;
   import §<!G§.§9h§;
   import §>!<§.UIEventListenerRovio;
   import §?A§.LevelMain;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §@Q§.FacebookLeveLMain;
   import §[!>§.StateBase;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class StateFacebookPlay extends StatePlay
   {
      
      private static const FPS_MEASURE_TIME_START:Number = -5000.0;
      
      private static const FPS_MEASURE_TIME_MIN:Number = 10000.0;
      
      public static const SCORE_SPEED:int = 50;
      
      public static var sPlaySessionToken:String;
      
      {
         var FPS_MEASURE_TIME_START:Boolean = true;
         var FPS_MEASURE_TIME_MIN:Boolean = false;
         if(FPS_MEASURE_TIME_START || FPS_MEASURE_TIME_START)
         {
         }
         while(true)
         {
            FPS_MEASURE_TIME_START = -5 * 1000;
            loop1:
            while(true)
            {
               while(true)
               {
                  FPS_MEASURE_TIME_MIN = 10 * 1000;
                  continue loop1;
                  addr54:
                  if(!(FPS_MEASURE_TIME_MIN && FPS_MEASURE_TIME_START))
                  {
                     addr61:
                     if(FPS_MEASURE_TIME_START)
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(FPS_MEASURE_TIME_MIN && StateFacebookPlay)
                        {
                           addr64:
                           while(FPS_MEASURE_TIME_START || FPS_MEASURE_TIME_MIN)
                           {
                              SCORE_SPEED = 50;
                              continue loop5;
                           }
                           continue loop1;
                           addr64:
                        }
                        §§goto(addr54);
                     }
                  }
               }
            }
            if(!(FPS_MEASURE_TIME_START || FPS_MEASURE_TIME_MIN))
            {
               continue;
            }
            §§goto(addr64);
         }
      }
      
      private var §6!8§:Number = -5000.0;
      
      private var § !J§:int = 0;
      
      private var §3%§:Number = 0;
      
      private var §5w§:Number = 0;
      
      private var §5!e§:Number;
      
      protected var §]!?§:CachedFacebookFriends;
      
      private var §@!'§:VersusComponent;
      
      private var §-H§:Boolean = false;
      
      private var §7p§:Boolean = false;
      
      private var §1!#§:SyncingPopup;
      
      public function StateFacebookPlay(initState:Boolean = true, name:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            while(true)
            {
            }
            addr82:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               super(initState,name);
               while(!(_loc3_ && name))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue loop1;
                  }
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  §§goto(addr82);
               }
            }
         }
      }
      
      override protected function getGameLogicController(levelMain:LevelMain) : §7k§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!(_loc3_ || _loc3_))
            {
            }
         }
         return new §-o§(levelMain);
      }
      
      protected function §;!@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         do
         {
            this.§]!?§ = AngryBirdsUltraBook.sHighScoreListManager.§-!O§(LevelManager.§'!7§(LevelManager.§!=§).name,LevelManager.§!=§);
            while(_loc1_)
            {
            }
         }
         while(!(_loc2_ || this));
         
      }
      
      protected function §>!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               (§4!T§.§%!K§ as AngryBirdsUltraBook).§1!-§(LevelManager.§!=§,this.§]!?§);
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            if(_loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.levelStarted();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §85§.§,!=§(GoogleAnalyticsTracker.§^=§,LevelManager.§!=§);
                     addr216:
                     while(true)
                     {
                        addr204:
                        while(true)
                        {
                           this.§;!@§();
                           while(true)
                           {
                              addr175:
                              while(_loc1_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  loop14:
                  for(; !(_loc2_ && this); if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr63))
                  {
                     loop15:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr110:
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 §-!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
                                 loop16:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop15;
                                          }
                                          §§goto(addr204);
                                       }
                                       break;
                                    }
                                    addr134:
                                    addr49:
                                    while(true)
                                    {
                                       this.§7p§ = false;
                                       continue loop14;
                                    }
                                    while(true)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          continue loop14;
                                       }
                                       continue loop16;
                                       addr63:
                                       if(_loc1_)
                                       {
                                          addr36:
                                          if(_loc1_ || this)
                                          {
                                             return;
                                          }
                                          continue loop15;
                                       }
                                    }
                                    continue loop14;
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    addr144:
                                    addr165:
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       this.§-H§ = false;
                                       while(!_loc2_)
                                       {
                                          §§goto(addr134);
                                          continue loop15;
                                       }
                                    }
                                    while(_loc1_)
                                    {
                                       this.§@!'§.levelStarted(this.§]!?§,LevelManager.§!=§);
                                       continue loop10;
                                       §§goto(addr144);
                                    }
                                    §§goto(addr216);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr165);
                              §§goto(addr110);
                           }
                           addr172:
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr175);
                  }
               }
            }
         }
         while(true)
         {
            this.§>!'§();
            §§goto(addr172);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               super.activate();
            }
            addr212:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               this.§@!'§.activate();
               loop3:
               for(; !(_loc1_ && this); if(!(_loc2_ || _loc1_))
               {
                  continue;
               },if(_loc2_)
               {
                  FacebookTutorialPopupManager.§9!X§(§^,§);
                  §§goto(addr63);
               },§§goto(addr212))
               {
                  loop4:
                  while(true)
                  {
                     if(this.§-H§)
                     {
                        while(true)
                        {
                           addr186:
                           while(true)
                           {
                              §-!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
                              addr180:
                              while(true)
                              {
                                 addr159:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr185:
                     }
                     loop9:
                     while(true)
                     {
                        §^,§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              this.§5!e§ = 2500;
                              while(!(_loc1_ && _loc2_))
                              {
                                 loop13:
                                 while(!_loc1_)
                                 {
                                    (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_PLAY);
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          while(!_loc1_)
                                          {
                                             this.§^0§();
                                             loop16:
                                             while(true)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop16;
                                                   addr63:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop9;
                                             }
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break loop14;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop13;
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr186);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               §"=§ = true;
               loop1:
               for(; _loc1_; while(_loc1_ || _loc2_)
               {
                  while(_loc1_ || _loc2_)
                  {
                     loop7:
                     for(; _loc1_ || _loc2_; if(_loc1_ || _loc2_)
                     {
                        §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
                        do
                        {
                           loop11:
                           while(true)
                           {
                              §,;§();
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop11;
                              }
                              addr146:
                              while(true)
                              {
                                 §^,§.init(§3!5§.§4@§.Views.View_FacebookLevelPlay[0]);
                                 break loop7;
                              }
                           }
                        }
                        while(_loc2_ && _loc1_);
                        
                        if(_loc2_)
                        {
                           §§goto(addr84);
                        }
                        return;
                     })
                     {
                        this.§@!'§ = new VersusComponent(§^,§);
                        loop8:
                        while(_loc1_)
                        {
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop7;
                              }
                              continue loop8;
                           }
                           continue loop7;
                        }
                        §§goto(addr163);
                     }
                  }
               })
               {
                  while(true)
                  {
                     §^,§ = new §-!H§(this);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr146);
         }
      }
      
      private function §>!H§(userId:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var object:Object = null;
         if(_loc6_ || object)
         {
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         loop4:
         for each(object in this.§]!?§.data)
         {
            if(_loc6_)
            {
               while(true)
               {
                  if(object.u == userId)
                  {
                     loop6:
                     while(_loc6_)
                     {
                        do
                        {
                           if(object.a)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        while(_loc5_);
                        
                     }
                     continue;
                  }
                  continue loop4;
               }
            }
            return object.a;
         }
         if(!_loc6_)
         {
         }
         return null;
      }
      
      private function §4!+§(amt:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_)
         {
         }
         var subString:String = null;
         if(_loc7_ || this)
         {
            while(true)
            {
               addr61:
               while(true)
               {
               }
            }
            addr63:
         }
         loop2:
         while(true)
         {
            addr44:
            addr64:
            while(true)
            {
               continue loop2;
            }
            addr71:
            var result:* = amt.toString();
            if(_loc8_)
            {
            }
            var subStrings:Array = [];
            if(_loc7_ || this)
            {
            }
            loop5:
            while(true)
            {
               loop6:
               for(§§push(result); §§pop().length % 3 > 0; if(!(_loc7_ || amt))
               {
                  continue;
               },§§goto(addr206),§§push(§§pop().slice(result.length % 3)))
               {
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        subStrings.push(result.substr(0,result.length % 3));
                        while(_loc7_)
                        {
                           while(true)
                           {
                              if(_loc7_ || subStrings)
                              {
                                 §§push(result);
                                 if(!(_loc8_ && subStrings))
                                 {
                                    continue loop6;
                                 }
                                 continue;
                              }
                              continue loop8;
                           }
                           continue loop6;
                        }
                        continue loop5;
                     }
                  }
                  break;
               }
               addr82:
               §§push(result);
               if(_loc7_)
               {
                  if(§§pop().length <= 0)
                  {
                     if(_loc7_)
                     {
                        if(!(_loc8_ && result))
                        {
                           if(_loc7_ || subStrings)
                           {
                              if(!_loc8_)
                              {
                                 if(_loc7_ || result)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr117);
                                    }
                                    var _loc5_:int = 0;
                                    if(!(_loc8_ && result))
                                    {
                                       var _loc6_:* = subStrings;
                                       if(_loc7_ || subStrings)
                                       {
                                          addr328:
                                          if(§§hasnext(_loc6_,_loc5_))
                                          {
                                             addr326:
                                             subString = §§nextvalue(_loc5_,_loc6_);
                                             addr299:
                                             addr327:
                                             addr319:
                                             §§push(result);
                                             if(!(_loc8_ && amt))
                                             {
                                                if(_loc7_)
                                                {
                                                   addr315:
                                                   result = §§pop() + (subString + ",");
                                                   if(!(_loc8_ && subStrings))
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(_loc7_ || amt)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   addr316:
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr315);
                                          }
                                          addr331:
                                          if(!_loc7_)
                                          {
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr331);
                                 }
                                 addr161:
                              }
                              §§push(result);
                              if(!(_loc8_ && result))
                              {
                                 §§push(3);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop().substr(§§pop()));
                                    if(!(_loc8_ && amt))
                                    {
                                       result = §§pop();
                                       addr149:
                                       addr117:
                                       if(_loc7_ || result)
                                       {
                                          §§goto(addr82);
                                       }
                                       §§goto(addr366);
                                    }
                                 }
                                 §§goto(addr371);
                              }
                              §§goto(addr378);
                           }
                           addr366:
                           §§push(result);
                           if(_loc8_ && result)
                           {
                              addr378:
                              result = §§pop();
                              addr379:
                              if(!(_loc8_ && result))
                              {
                                 if(_loc7_ || amt)
                                 {
                                    §§goto(addr366);
                                 }
                                 §§goto(addr379);
                                 addr386:
                              }
                              §§push(result);
                              if(_loc7_)
                              {
                                 addr371:
                                 §§push(§§pop().substr(0,result.length - 1));
                              }
                              §§goto(addr378);
                              addr388:
                           }
                           return §§pop();
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr386);
                  }
                  if(_loc7_ || result)
                  {
                     subStrings.push(result.substr(0,3));
                     §§goto(addr161);
                  }
                  §§goto(addr117);
               }
               §§goto(addr371);
            }
         }
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               super.keyUp(e);
               do
               {
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(AngryBirdsFP11.DEBUG_MODE_ENABLED);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     continue;
                  }
               }
               while(if(!_loc3_)
               {
               }, _loc4_ && e);
               
               §§goto(addr34);
            }
         }
         var _loc2_:* = e.keyCode;
         if(_loc3_)
         {
            if(_loc3_)
            {
               addr120:
               if(Keyboard.M !== _loc2_)
               {
                  if(false)
                  {
                     §§goto(addr138);
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr143:
                  switch(§§pop())
                  {
                     case 0:
                        if(false)
                        {
                           addr34:
                           return;
                        }
                        break;
                  }
                  return;
               }
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc4_ && this)
                  {
                  }
               }
               else
               {
                  addr138:
                  §§push(1);
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr138);
         }
         §§goto(addr120);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || deltaTime)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        §§push(FacebookTutorialPopupManager.isOpen);
                        if(_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(!(_loc4_ && deltaTime))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.§@!'§.run(deltaTime));
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                 }
                                 if(!_loc4_)
                                 {
                                    while(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    return StateBase.STATE_STATUS_RUNNING;
                                    addr72:
                                 }
                                 continue loop0;
                              }
                              addr68:
                              continue;
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     var vsComponentRunResults:* = §§pop();
                     if(_loc5_ || deltaTime)
                     {
                        this.§9x§(deltaTime);
                        addr491:
                        addr492:
                        if(!§4!T§.§1t§.objects.mSardineCanAdded)
                        {
                           this.§3!L§(deltaTime);
                           addr494:
                           addr484:
                           addr493:
                        }
                        addr515:
                        addr513:
                        if(mNextState == StateLevelEndRio.STATE_NAME)
                        {
                           addr465:
                           if(_loc5_)
                           {
                              if(!(_loc4_ && deltaTime))
                              {
                                 addr451:
                                 §§push(this.§-H§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(!§§pop());
                                 }
                                 addr475:
                                 if(_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          §-!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
                                          this.§-H§ = true;
                                          addr428:
                                          if(_loc5_ || this)
                                          {
                                             addr411:
                                             if(_loc5_)
                                             {
                                                addr402:
                                                §§push(Boolean(vsComponentRunResults));
                                                if(!Boolean(vsComponentRunResults))
                                                {
                                                   addr405:
                                                   §§pop();
                                                   if(_loc5_)
                                                   {
                                                      addr396:
                                                      if(this.§7p§)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§5!e§);
                                                         if(_loc5_ || deltaTime)
                                                         {
                                                            §§push(§§pop() - deltaTime);
                                                         }
                                                         §§pop().§5!e§ = §§pop();
                                                         addr397:
                                                         addr398:
                                                         if(_loc5_ || this)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr359:
                                                               if(!(_loc4_ && superReturn))
                                                               {
                                                                  addr329:
                                                                  §§push(this.§5!e§ < 0);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && vsComponentRunResults))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr341:
                                                                           §§push(Boolean(§§pop()));
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 addr352:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr355:
                                                                                       §§pop();
                                                                                       addr356:
                                                                                       §§push(this.§7p§);
                                                                                       if(_loc5_ || vsComponentRunResults)
                                                                                       {
                                                                                          addr301:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr307:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr309:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr314:
                                                                                                            if(!(_loc4_ && deltaTime))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr515);
                                                                                                               }
                                                                                                               return StateBase.STATE_STATUS_COMPLETED;
                                                                                                            }
                                                                                                            §§goto(addr397);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                   addr517:
                                                                                                   §§push(super.run(deltaTime));
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   var superReturn:* = §§pop();
                                                                                                   if(_loc5_ || deltaTime)
                                                                                                   {
                                                                                                   }
                                                                                                   return StateBase.STATE_STATUS_RUNNING;
                                                                                                   addr259:
                                                                                                }
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr396);
                                                                                    }
                                                                                    §§goto(addr307);
                                                                                 }
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr494);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr396);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§goto(addr465);
                                          addr456:
                                          addr457:
                                          addr439:
                                       }
                                       §§goto(addr402);
                                    }
                                    §§goto(addr491);
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr513);
                           }
                           §§goto(addr484);
                        }
                        if(mNextState == StateLevelEndEagle.STATE_NAME)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr274);
                              }
                              §§goto(addr456);
                           }
                           §§goto(addr359);
                        }
                        addr163:
                        addr507:
                        §§push(Boolean(mNextState));
                        if(_loc5_ || vsComponentRunResults)
                        {
                           if(!_loc4_)
                           {
                              if(_loc5_ || vsComponentRunResults)
                              {
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc4_ && superReturn))
                                                   {
                                                      if(!(_loc4_ && vsComponentRunResults))
                                                      {
                                                         addr214:
                                                         if(_loc5_ || this)
                                                         {
                                                            if(_loc5_ || superReturn)
                                                            {
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  §§goto(addr428);
                                                               }
                                                               return StateBase.STATE_STATUS_COMPLETED;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         if(_loc5_ || vsComponentRunResults)
                                                         {
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr439);
                                             }
                                             §§goto(addr309);
                                          }
                                          addr274:
                                          if(_loc4_ && deltaTime)
                                          {
                                             §§goto(addr494);
                                          }
                                          return StateBase.STATE_STATUS_COMPLETED;
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr517);
                                 }
                                 §§goto(addr402);
                              }
                              §§goto(addr329);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr428);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §"9§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || e)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7p§ = true;
                  while(true)
                  {
                     continue loop1;
                     addr81:
                     loop4:
                     while(!(_loc3_ && e))
                     {
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop4;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               loop1:
               while(_loc5_ || currentLevel)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop4:
                        while(_loc5_ || score)
                        {
                           loop5:
                           while(true)
                           {
                              super.levelCompleted();
                              while(!_loc4_)
                              {
                                 if(_loc5_ || powerupsUsed)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && component)
         {
         }
         if(_loc5_ && this)
         {
         }
         while(true)
         {
            while(_loc6_)
            {
               if(!(_loc6_ || eventName))
               {
                  continue;
               }
               var _loc4_:* = eventName;
               if(!_loc5_)
               {
                  §§push("showTutorial");
                  if(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && eventIndex))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr489:
                                 §§push(5);
                                 if(_loc6_ || this)
                                 {
                                 }
                              }
                              §§goto(addr573);
                           }
                           else
                           {
                              §§push("PAUSE");
                              if(!(_loc5_ && eventIndex))
                              {
                                 if(!(_loc5_ && component))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(1);
                                             if(_loc5_ && eventIndex)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr427:
                                             §§push(3);
                                             if(_loc5_ && component)
                                             {
                                             }
                                          }
                                          §§goto(addr573);
                                          §§goto(addr573);
                                       }
                                       else
                                       {
                                          §§push("RESTART_LEVEL");
                                          if(_loc6_)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                addr380:
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || eventIndex)
                                                      {
                                                         §§push(2);
                                                         if(!(_loc6_ || eventName))
                                                         {
                                                            addr466:
                                                         }
                                                         §§goto(addr573);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr489);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("CLOSE_TUTORIAL");
                                                      if(!(_loc5_ && component))
                                                      {
                                                         addr408:
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && component))
                                                                  {
                                                                     §§goto(addr427);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr525:
                                                                     §§push(6);
                                                                     if(_loc6_ || component)
                                                                     {
                                                                        §§goto(addr533);
                                                                     }
                                                                     §§goto(addr573);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("RESTART_LEVEL");
                                                                  if(!(_loc5_ && eventIndex))
                                                                  {
                                                                     addr444:
                                                                     if(_loc5_ && eventName)
                                                                     {
                                                                     }
                                                                     addr554:
                                                                     addr553:
                                                                     if(§§pop() === _loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr557:
                                                                           §§push(7);
                                                                           if(!_loc6_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(true)
                                                                     {
                                                                        addr573:
                                                                        loop8:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              FacebookTutorialPopupManager.§>!f§(§^,§,"ALL",true);
                                                                              FacebookTutorialPopupManager.§9!X§(§^,§,true);
                                                                              addr249:
                                                                              break;
                                                                              addr258:
                                                                              addr249:
                                                                              addr271:
                                                                              addr261:
                                                                              addr276:
                                                                           case 1:
                                                                              addr239:
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 mNextState = §]!I§();
                                                                                 break;
                                                                                 addr234:
                                                                                 addr228:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr258);
                                                                              }
                                                                              break;
                                                                           case 2:
                                                                              addr223:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 StateLevelLoadClassic.§3`§();
                                                                                 mNextState = StateLevelLoadClassic.STATE_NAME;
                                                                                 addr218:
                                                                                 if(_loc6_ || eventIndex)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr218:
                                                                                 addr212:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr239);
                                                                              }
                                                                              §§goto(addr249);
                                                                           case 3:
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    FacebookTutorialPopupManager.§^6§();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    addr178:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr218);
                                                                                 }
                                                                              }
                                                                              §§goto(addr249);
                                                                           case 4:
                                                                              break;
                                                                              addr162:
                                                                           case 5:
                                                                              addr155:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 FacebookTutorialPopupManager.§^6§();
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    addr142:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr223);
                                                                              break;
                                                                           case 6:
                                                                              addr123:
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_ || eventIndex)
                                                                                    {
                                                                                       §-!,§.doUserZoom(true);
                                                                                       addr107:
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr86:
                                                                                                if(!(_loc5_ && component))
                                                                                                {
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr261);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr155);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr212);
                                                                                       }
                                                                                       §§goto(addr142);
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr178);
                                                                                 }
                                                                              }
                                                                              §§goto(addr165);
                                                                           case 7:
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ && eventName))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §-!,§.doUserZoom(false);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr59:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr162);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr123);
                                                                                    }
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 §§goto(addr86);
                                                                              }
                                                                              §§goto(addr249);
                                                                        }
                                                                        return;
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr573);
                                                                     §§goto(addr573);
                                                                     addr552:
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!(_loc5_ && eventIndex))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(4);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr466);
                                                                           }
                                                                        }
                                                                        §§goto(addr573);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("CLOSE_TUTORIAL_POWERUP");
                                                                        if(!(_loc5_ && component))
                                                                        {
                                                                           addr475:
                                                                           if(_loc6_ || eventName)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr486:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr525);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("ZOOM_IN");
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr501:
                                                                                       if(_loc6_ || component)
                                                                                       {
                                                                                          addr509:
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc5_ && component))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_ || eventName)
                                                                                                {
                                                                                                   §§goto(addr525);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr563);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("ZOOM_OUT");
                                                                                                if(_loc6_ || eventIndex)
                                                                                                {
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr563);
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 §§goto(addr573);
                                                                              }
                                                                              §§goto(addr554);
                                                                           }
                                                                           §§goto(addr509);
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr573);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr475);
                                                   }
                                                   §§goto(addr573);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr475);
                                          }
                                          §§goto(addr408);
                                       }
                                    }
                                    §§goto(addr554);
                                 }
                              }
                              §§goto(addr444);
                           }
                        }
                        §§goto(addr444);
                     }
                     §§goto(addr380);
                  }
                  §§goto(addr444);
               }
               §§goto(addr557);
            }
         }
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         do
         {
            super.initActivation();
            while(true)
            {
               while(_loc2_ || _loc2_)
               {
                  this.§@!'§.§,!a§ = false;
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      override protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
      }
      
      override public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
      }
      
      override protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
      }
      
      override protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || this)
         {
         }
      }
      
      override protected function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
      }
      
      override protected function updateCurrentScore(deltaTime:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc6_ || deltaTime)
         {
            loop0:
            while(true)
            {
               addr72:
               while(true)
               {
                  while(true)
                  {
                     addr57:
                     while(_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §3!L§(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || deltaTime)
         {
            loop0:
            while(true)
            {
               loop1:
               while((§^,§.getItemByName("MovieClip_Boom") as §+,§).§8!-§() == "End")
               {
                  while(true)
                  {
                     addr131:
                     loop3:
                     while(true)
                     {
                        §^,§.getItemByName("MovieClip_Boom").setVisibility(false);
                        loop4:
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              while(_loc3_)
                              {
                                 (§^,§.getItemByName("MovieClip_Boom") as §+,§).§"r§("Start");
                                 continue loop4;
                                 if(!(_loc2_ && deltaTime))
                                 {
                                    break loop1;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr87);
                  }
               }
               return;
            }
         }
         §§goto(addr131);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               super.deActivate();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§@!'§.deActivate();
                     addr159:
                     while(true)
                     {
                        addr153:
                        while(true)
                        {
                           §-!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
                           addr150:
                           while(true)
                           {
                           }
                           addr81:
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               this.§+!j§();
               §§goto(addr105);
            }
         }
         §§goto(addr139);
      }
      
      private function §+!j§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var fps:int = 0;
         var currentLevel:String = null;
         var isFullScreen:Boolean = false;
         if(!(_loc4_ && currentLevel))
         {
            while(this.§6!8§ > FPS_MEASURE_TIME_MIN)
            {
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addr184:
                        while(true)
                        {
                           addr181:
                           while(true)
                           {
                              fps = Math.round(1000 / this.§6!8§ * this.§ !J§);
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr147);
      }
      
      private function §9x§(deltaTime:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(!(_loc5_ && _loc3_))
         {
            if(_loc4_)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§6!8§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + deltaTime);
                  }
                  §§pop().§6!8§ = §§pop();
                  if(_loc4_)
                  {
                     while(_loc4_ || _loc2_)
                     {
                        continue loop0;
                     }
                     addr138:
                     return;
                     addr64:
                     addr165:
                  }
                  break;
               }
               while(true)
               {
                  §§push(this.§5w§);
                  if(_loc4_)
                  {
                     §§push(§4!T§.§8_§());
                     if(_loc4_ || deltaTime)
                     {
                        §§goto(addr193);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr252);
                  §§goto(addr264);
               }
               §§goto(addr138);
            }
            §§goto(addr245);
         }
         §§goto(addr266);
      }
      
      private function §^0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               this.§6!8§ = FPS_MEASURE_TIME_START;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§ !J§ = 0;
                     addr106:
                     loop5:
                     while(_loc2_ || _loc2_)
                     {
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              this.§5w§ = §4!T§.§8_§();
                              while(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr106);
                                       }
                                       return;
                                       addr60:
                                    }
                                    while(true)
                                    {
                                       this.§3%§ = §4!T§.§7"§();
                                       continue loop5;
                                    }
                                    §§goto(addr60);
                                    continue loop5;
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §@&§(tween:§9h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               addr89:
               while(tween)
               {
                  if(!(_loc2_ && tween))
                  {
                     addr68:
                     break;
                  }
               }
               return;
               while(true)
               {
                  if(!(_loc2_ && tween))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr85);
      }
   }
}
