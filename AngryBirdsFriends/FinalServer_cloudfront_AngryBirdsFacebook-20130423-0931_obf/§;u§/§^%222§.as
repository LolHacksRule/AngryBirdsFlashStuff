package §;u§
{
   import § "!§.§-"$§;
   import §"a§.§!"J§;
   import §%!I§.§]!M§;
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §0D§.§3!R§;
   import §0D§.§3j§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§!"P§;
   import §=!>§.§2!Z§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^"2§ extends §+d§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "ChapterSelectionState";
         }
      }
      
      private var mChapterTween0:§6!K§ = null;
      
      private var mChapterTween1:§6!K§ = null;
      
      private var mChapterTween2:§6!K§ = null;
      
      private var mChapterTween3:§6!K§ = null;
      
      private var §;D§:§6!K§ = null;
      
      private var §!!_§:§6!K§ = null;
      
      private var §]!f§:§6!K§ = null;
      
      private var §&!X§:§6!K§ = null;
      
      private var §!!c§:§-"$§;
      
      public function §^"2§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §2"@§ = new §`_§(this);
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            §2"@§.init(§ "<§.§%I§.Views.View_ChapterFacebookSelection[0]);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:String = null;
         var _loc9_:§3j§ = null;
         if(_loc11_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§?l§.§ "G§);
               while(true)
               {
                  (§§pop() as §%"S§).§96§.§<!J§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(§?l§.§ "G§);
                     if(!_loc11_)
                     {
                        break;
                     }
                     (§§pop() as §%"S§).§!n§("");
                     loop3:
                     while(true)
                     {
                        §§push(§!"J§.§1&§);
                        if(!(_loc10_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(!_loc10_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 addr44:
                                 if(_loc11_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr96:
                           }
                           while(true)
                           {
                              §§push(§?l§.§'h§);
                              while(true)
                              {
                                 §§pop().§#"[§(false);
                                 while(true)
                                 {
                                    §§push(§?l§.§'h§);
                                    if(!(_loc11_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§pop().clearLevel();
                                    if(!(_loc11_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr44);
                                 }
                              }
                           }
                           continue;
                           addr60:
                        }
                        else
                        {
                           addr95:
                        }
                        §§pop().start();
                        §§goto(addr96);
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §&!Z§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc4_ || _loc2_)
         {
            if(_loc2_.currentFrame == _loc2_.totalFrames)
            {
               if(!_loc3_)
               {
                  this.§8",§();
               }
            }
         }
      }
      
      private function § !g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0!Y§ = §2"@§.getItemByName("Container_NewChapterSelection") as §0!Y§;
         var _loc2_:§^n§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §^n§;
         if(!_loc5_)
         {
            _loc2_.mClip.gotoAndPlay(0);
            loop0:
            while(true)
            {
               addr51:
               while(true)
               {
                  _loc2_.mClip.addEventListener(Event.ENTER_FRAME,this.§&!Z§);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr51);
         }
         var _loc3_:§7"0§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §7"0§;
         if(!_loc5_)
         {
            _loc3_.visible = false;
         }
      }
      
      private function §8",§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0!Y§ = §2"@§.getItemByName("Container_NewChapterSelection") as §0!Y§;
         var _loc2_:§^n§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §^n§;
         if(_loc5_)
         {
            _loc2_.mClip.stop();
            loop0:
            while(true)
            {
               addr67:
               while(true)
               {
                  _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§&!Z§);
                  addr75:
                  while(_loc5_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc2_.visible = false;
            if(_loc5_ || _loc1_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr67);
            }
            §§goto(addr75);
         }
         var _loc3_:§7"0§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §7"0§;
         if(_loc5_)
         {
            _loc3_.visible = true;
         }
      }
      
      private function §1f§(param1:§3j§, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§!>§ = null;
         if(!(_loc6_ && param1))
         {
            if(param1.§^"1§ != null)
            {
               if(_loc7_)
               {
                  _loc3_ = 0;
                  addr40:
                  loop0:
                  while(_loc3_ < param1.§^"1§.length)
                  {
                     _loc4_ = param1.§^"1§[_loc3_];
                     if(_loc6_)
                     {
                        break;
                     }
                     if(!(_loc5_ = §2"@§.getItemByName(_loc4_)))
                     {
                        throw new Error("Tournament teaser graphic id was not found!");
                     }
                     if(!_loc6_)
                     {
                        _loc5_.setVisibility(true);
                        if(!_loc6_)
                        {
                           if(!param2)
                           {
                              if(_loc7_ || param2)
                              {
                                 addr114:
                                 _loc5_.setEnabled(true);
                              }
                              loop1:
                              while(true)
                              {
                                 addr98:
                                 loop2:
                                 while(true)
                                 {
                                    do
                                    {
                                       _loc3_++;
                                    }
                                    while(_loc6_);
                                    
                                    if(!(_loc6_ && param2))
                                    {
                                       while(false)
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                       addr96:
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr40);
            }
            return;
         }
         §§goto(addr40);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         if(!_loc3_)
         {
            _loc1_.§3%§(§;!e§.§^a§);
         }
      }
      
      protected function §8T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§3!R§.§&"5§.§0h§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push("Your Rank: ");
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() + _loc1_);
            if(!(_loc4_ && _loc3_))
            {
               addr50:
               §§push(§§pop() + §!"P§.§>!9§(_loc1_));
            }
            var _loc2_:String = §§pop();
            if(!_loc4_)
            {
               if(_loc1_ == §3!R§.§%!B§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_ = "Join the fun!";
                  }
                  while(true)
                  {
                     §§goto(addr73);
                  }
               }
               addr73:
               §§goto(addr85);
            }
            addr85:
            while(true)
            {
               §2"@§.setText(_loc2_,"Textfield_TournamentRank");
               if(_loc3_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               this.§0`§();
               while(true)
               {
                  §2"@§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
                  loop2:
                  for(; !(_loc1_ && _loc2_); while(_loc2_)
                  {
                     §2"@§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
                     §§goto(addr147);
                     §§goto(addr67);
                  })
                  {
                     §2"@§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
                     while(true)
                     {
                        §2"@§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
                        continue loop2;
                        addr94:
                        if(_loc2_ || this)
                        {
                           loop10:
                           while(true)
                           {
                              §2"@§.getItemByName("Container_Tournament").mClip.scaleX = 1;
                              addr60:
                              loop11:
                              while(_loc2_ || _loc1_)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §2"@§.getItemByName("Container_Tournament").mClip.scaleY = 1;
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    addr38:
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr45:
                                       if(!(_loc1_ && this))
                                       {
                                          break loop10;
                                       }
                                       addr147:
                                       addr109:
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          §2"@§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
                                          §§goto(addr45);
                                       }
                                       while(true)
                                       {
                                          §2"@§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
                                          break loop11;
                                          §§goto(addr109);
                                       }
                                       addr109:
                                    }
                                    while(_loc2_)
                                    {
                                       §§goto(addr94);
                                       §§goto(addr38);
                                    }
                                    while(true)
                                    {
                                       §2"@§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
                                       §§goto(addr109);
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           return;
                           addr101:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §0`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mChapterTween0);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     addr208:
                     this.mChapterTween0.stop();
                  }
                  while(true)
                  {
                     this.mChapterTween0 = null;
                     addr192:
                     addr119:
                     while(true)
                     {
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.mChapterTween3 = null;
                     loop7:
                     while(true)
                     {
                        addr41:
                        while(true)
                        {
                           §§push(this.§;D§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(§§pop() == null)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(this.§;D§);
                              }
                              addr53:
                           }
                           while(true)
                           {
                              §§pop().stop();
                              continue loop7;
                              §§goto(addr53);
                           }
                           continue loop7;
                        }
                        addr19:
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.mChapterTween1);
                  if(_loc1_)
                  {
                     if(§§pop() != null)
                     {
                        §§goto(addr167);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr169);
                  §§goto(addr192);
               }
            }
            §§goto(addr208);
         }
         §§goto(addr192);
      }
      
      private function §7u§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§3-§ = null;
         if(_loc10_)
         {
            if(param3 == "")
            {
               §§goto(addr25);
            }
            else
            {
               _loc4_ = LevelManager.§2R§(param3);
            }
            §§goto(addr38);
         }
         addr25:
         _loc4_ = LevelManager.§1!m§(param1);
         if(_loc10_)
         {
            addr38:
            if(_loc4_ == null)
            {
               if(!(_loc9_ && param3))
               {
                  §§goto(addr48);
               }
            }
            else if(param2 == "")
            {
               if(!_loc9_)
               {
                  §§push(param1);
                  if(_loc10_ || param2)
                  {
                     param2 = §§pop() + "";
                     addr82:
                     §§push(AngryBirdsFP11.sUserProgress.§[!a§(_loc4_));
                     if(!_loc9_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(AngryBirdsFP11.sUserProgress.§3W§(_loc4_));
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(AngryBirdsFP11.sUserProgress.§]L§(_loc4_));
                  if(_loc10_ || param1)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(AngryBirdsFP11.sUserProgress.§="'§(_loc4_));
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc9_ && param2))
                  {
                     §2"@§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
                  }
                  do
                  {
                     §2"@§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
                  }
                  while(!(_loc10_ || param3));
                  
                  return;
               }
            }
            §§goto(addr82);
         }
         addr48:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && this))
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() != §+d§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || param1)
                  {
                     §§goto(addr49);
                  }
               }
               else
               {
                  §2"@§.setText(§3!R§.§&"5§.§^!y§()[0],"Textfield_TimeLeft");
               }
               §§push(§2!Z§.§&9§());
               if(!(_loc5_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  §2"@§.getItemByName("Container_Sale").visible = _loc3_;
                  loop0:
                  do
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §2"@§.setText(§2!Z§.§2"I§(),"Sale_Countdown");
                           addr135:
                           while(true)
                           {
                           }
                        }
                        addr130:
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(_loc4_ || _loc3_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§goto(addr130);
                     }
                     return §+d§.STATE_STATUS_RUNNING;
                  }
                  while(_loc5_);
                  
                  return §+d§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr135);
            }
            §§goto(addr49);
         }
         addr49:
         return _loc2_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:int;
         §§push(_loc4_ = param2.indexOf("EASTER_EGG_"));
         if(_loc7_)
         {
            if(§§pop() != -1)
            {
               if(!_loc8_)
               {
                  addr37:
                  _loc5_ = int(param2.substr("EASTER_EGG_".length));
                  if(!_loc8_)
                  {
                     §§push(LevelManager);
                     §§push("1000-");
                     if(_loc7_ || param3)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§,!m§(§§pop());
                     addr40:
                  }
                  loop0:
                  while(true)
                  {
                     mNextState = StateCutScene.STATE_NAME;
                     loop1:
                     while(true)
                     {
                        addr1385:
                        while(true)
                        {
                           super.uiInteractionHandler(param1,param2,param3);
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        var _loc6_:* = param2;
                        if(!(_loc8_ && this))
                        {
                           §§push("AVATAREDITOR");
                           if(!(_loc8_ && param3))
                           {
                              §§push(_loc6_);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          addr1961:
                                       }
                                    }
                                    else
                                    {
                                       addr1657:
                                       §§push(9);
                                       if(!_loc7_)
                                       {
                                          addr2020:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push("showCredits");
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc8_ && param1))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(1);
                                                if(_loc7_)
                                                {
                                                   §§goto(addr2083);
                                                }
                                                addr1637:
                                                addr2083:
                                                loop59:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §9"6§.§<h§();
                                                      break;
                                                      addr1383:
                                                   case 1:
                                                      mNextState = §&"[§.STATE_NAME;
                                                      break;
                                                      addr1377:
                                                   case 2:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      LevelManager.§,m§ = 2;
                                                      mNextState = §9"@§.STATE_NAME;
                                                      addr1362:
                                                      break;
                                                      addr1362:
                                                      addr1369:
                                                      addr1357:
                                                   case 3:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      LevelManager.§,m§ = 5;
                                                      mNextState = §9"@§.STATE_NAME;
                                                      addr1339:
                                                      break;
                                                      addr1339:
                                                      addr1344:
                                                      addr1351:
                                                   case 4:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      LevelManager.§,m§ = 0;
                                                      mNextState = §9"@§.STATE_NAME;
                                                      addr1321:
                                                      break;
                                                      addr1326:
                                                      addr1321:
                                                      addr1333:
                                                   case 5:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      LevelManager.§,m§ = 1;
                                                      mNextState = §9"@§.STATE_NAME;
                                                      addr1301:
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr1326);
                                                      break;
                                                      addr1308:
                                                      addr1315:
                                                   case 6:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      LevelManager.§,m§ = 3;
                                                      mNextState = §4"Y§.STATE_NAME;
                                                      addr1281:
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr1321);
                                                      break;
                                                      addr1288:
                                                      addr1295:
                                                   case 7:
                                                      if(§2!Z§.§25§ != null)
                                                      {
                                                         addr1270:
                                                         if(_loc7_)
                                                         {
                                                            §@"M§.§3"C§("Menu_Confirm");
                                                            §9"6§.§;!w§();
                                                            addr1275:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1362);
                                                         }
                                                      }
                                                      break;
                                                   case 8:
                                                      addr1253:
                                                      addr1254:
                                                      if(this.mChapterTween0 != null)
                                                      {
                                                         addr1257:
                                                         this.mChapterTween0.stop();
                                                         addr1255:
                                                      }
                                                      this.mChapterTween0 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter0").mClip,{
                                                         "scaleX":1.2,
                                                         "scaleY":1.2
                                                      },null,0.2);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.mChapterTween0);
                                                               while(true)
                                                               {
                                                                  §§pop().play();
                                                                  continue loop3;
                                                               }
                                                               addr1210:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1377);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1333);
                                                         }
                                                      }
                                                      break;
                                                   case 9:
                                                      §§push(this.mChapterTween0);
                                                      loop4:
                                                      while(_loc7_ || param2)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(null);
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  addr1194:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.mChapterTween0);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§pop().stop();
                                                                        addr1197:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ || param3))
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr1275);
                                                                           }
                                                                        }
                                                                        addr1170:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mChapterTween0);
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§pop().play();
                                                                              break loop59;
                                                                              addr1150:
                                                                           }
                                                                           §§goto(addr1253);
                                                                        }
                                                                     }
                                                                     §§goto(addr1211);
                                                                  }
                                                                  addr1194:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.mChapterTween0 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter0").mClip,{
                                                                     "scaleX":1,
                                                                     "scaleY":1
                                                                  },null,0.5,§0W§.§8!s§);
                                                                  §§goto(addr1170);
                                                               }
                                                            }
                                                            §§goto(addr1254);
                                                         }
                                                         §§goto(addr1257);
                                                      }
                                                      §§goto(addr1210);
                                                   case 10:
                                                      §§push(this.mChapterTween1);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         addr1126:
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(this.mChapterTween1);
                                                                     while(true)
                                                                     {
                                                                        §§pop().stop();
                                                                        addr1132:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr1369);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1131:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1194);
                                                                  }
                                                               }
                                                               addr1127:
                                                            }
                                                            while(true)
                                                            {
                                                               this.mChapterTween1 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter1").mClip,{
                                                                  "scaleX":1.2,
                                                                  "scaleY":1.2
                                                               },null,0.2);
                                                               addr1119:
                                                               while(true)
                                                               {
                                                                  §§push(this.mChapterTween1);
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§pop().play();
                                                      break;
                                                      addr1101:
                                                   case 11:
                                                      §§push(this.mChapterTween1);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§push(null);
                                                         if(_loc7_ || this)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               addr1087:
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(this.mChapterTween1);
                                                                  loop16:
                                                                  while(_loc7_)
                                                                  {
                                                                     §§pop().stop();
                                                                     addr1094:
                                                                     while(true)
                                                                     {
                                                                        this.mChapterTween1 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter1").mClip,{
                                                                           "scaleX":1,
                                                                           "scaleY":1
                                                                        },null,0.5,§0W§.§8!s§);
                                                                        addr1058:
                                                                        while(!(_loc8_ && this))
                                                                        {
                                                                           §§push(this.mChapterTween1);
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              §§pop().play();
                                                                              break loop59;
                                                                              addr1028:
                                                                           }
                                                                           §§goto(addr1098);
                                                                        }
                                                                        break;
                                                                        §§goto(addr1094);
                                                                     }
                                                                     §§goto(addr1119);
                                                                  }
                                                                  §§goto(addr1131);
                                                                  addr1091:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1344);
                                                               }
                                                               §§goto(addr1339);
                                                            }
                                                            §§goto(addr1029);
                                                         }
                                                         §§goto(addr1126);
                                                      }
                                                      §§goto(addr1091);
                                                   case 12:
                                                      addr1009:
                                                      addr1010:
                                                      if(this.mChapterTween2 != null)
                                                      {
                                                         addr1013:
                                                         this.mChapterTween2.stop();
                                                         addr1011:
                                                      }
                                                      this.mChapterTween2 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter2").mClip,{
                                                         "scaleX":1.2,
                                                         "scaleY":1.2
                                                      },null,0.2);
                                                      addr982:
                                                      this.mChapterTween2.play();
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr1357);
                                                      break;
                                                      addr1003:
                                                   case 13:
                                                      §§push(this.mChapterTween2);
                                                      loop17:
                                                      while(_loc7_ || param3)
                                                      {
                                                         §§push(null);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               addr966:
                                                               while(true)
                                                               {
                                                                  §§push(this.mChapterTween2);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§pop().stop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr1281);
                                                                           }
                                                                        }
                                                                        addr976:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1009);
                                                                     }
                                                                     addr944:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mChapterTween2);
                                                                        if(!(_loc7_ || this))
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§pop().play();
                                                                           addr915:
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break loop59;
                                                                              }
                                                                              §§goto(addr1170);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1132);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1013);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1321);
                                                               }
                                                               addr966:
                                                            }
                                                            while(true)
                                                            {
                                                               this.mChapterTween2 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter2").mClip,{
                                                                  "scaleX":1,
                                                                  "scaleY":1
                                                               },null,0.5,§0W§.§8!s§);
                                                               §§goto(addr944);
                                                            }
                                                         }
                                                         §§goto(addr1010);
                                                      }
                                                      §§goto(addr982);
                                                   case 14:
                                                      addr880:
                                                      if(this.mChapterTween3 != null)
                                                      {
                                                         addr882:
                                                         if(!_loc8_)
                                                         {
                                                            addr886:
                                                            this.mChapterTween3.stop();
                                                            if(_loc7_ || this)
                                                            {
                                                               addr850:
                                                               this.mChapterTween3 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter3").mClip,{
                                                                  "scaleX":1.2,
                                                                  "scaleY":1.2
                                                               },null,0.2);
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr841:
                                                                  this.mChapterTween3.play();
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr976);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1301);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1288);
                                                            }
                                                            §§goto(addr1281);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1270);
                                                         }
                                                      }
                                                      §§goto(addr850);
                                                   case 15:
                                                      §§push(this.mChapterTween3);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || param3)
                                                            {
                                                               §§push(null);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     addr829:
                                                                     §§push(this.mChapterTween3);
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           §§pop().stop();
                                                                           addr837:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr837:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr880);
                                                                        }
                                                                     }
                                                                     addr829:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.mChapterTween3 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter3").mClip,{
                                                                        "scaleX":1,
                                                                        "scaleY":1
                                                                     },null,0.5,§0W§.§8!s§);
                                                                     addr801:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mChapterTween3);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§pop().play();
                                                                           break loop59;
                                                                           addr781:
                                                                        }
                                                                        §§goto(addr829);
                                                                     }
                                                                     §§goto(addr837);
                                                                  }
                                                               }
                                                               §§goto(addr880);
                                                            }
                                                            §§goto(addr886);
                                                         }
                                                         §§goto(addr841);
                                                      }
                                                      §§goto(addr829);
                                                   case 16:
                                                      addr757:
                                                      if(this.§!!_§ != null)
                                                      {
                                                         addr759:
                                                         §§push(this.§!!_§);
                                                         while(true)
                                                         {
                                                            §§pop().stop();
                                                            addr762:
                                                            while(true)
                                                            {
                                                               if(_loc8_ && param2)
                                                               {
                                                                  §§goto(addr1028);
                                                               }
                                                            }
                                                         }
                                                         addr761:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§!!_§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                                                            "scaleX":1.2,
                                                            "scaleY":1.2
                                                         },null,0.2);
                                                         addr744:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(this.§!!_§);
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop().play();
                                                                     addr717:
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop59;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr801);
                                                                     }
                                                                     §§goto(addr1003);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr761);
                                                                  }
                                                               }
                                                               addr714:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1308);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1301);
                                                   case 17:
                                                      §§push(this.§!!_§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(null);
                                                         if(_loc7_ || param1)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               addr703:
                                                               if(_loc7_)
                                                               {
                                                                  §§push(this.§!!_§);
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§pop().stop();
                                                                     addr708:
                                                                     while(_loc7_)
                                                                     {
                                                                        addr710:
                                                                        while(true)
                                                                        {
                                                                           this.§!!_§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },null,0.5,§0W§.§8!s§);
                                                                           addr684:
                                                                           while(_loc7_)
                                                                           {
                                                                              §§push(this.§!!_§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop30;
                                                                              }
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    §§pop().play();
                                                                                    addr662:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       break loop59;
                                                                                    }
                                                                                    §§goto(addr1257);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr757);
                                                                                 }
                                                                              }
                                                                              §§goto(addr714);
                                                                           }
                                                                           break;
                                                                           §§goto(addr710);
                                                                        }
                                                                        §§goto(addr915);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr850);
                                                                  addr707:
                                                               }
                                                               §§goto(addr886);
                                                            }
                                                            §§goto(addr665);
                                                         }
                                                         §§goto(addr757);
                                                      }
                                                      §§goto(addr707);
                                                   case 18:
                                                      addr628:
                                                      if(this.§;D§ != null)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               addr640:
                                                               this.§;D§.stop();
                                                               addr597:
                                                               this.§;D§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Tournament").mClip,{
                                                                  "scaleX":1.2,
                                                                  "scaleY":1.2
                                                               },null,0.2);
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  addr595:
                                                                  this.§;D§.play();
                                                                  break;
                                                                  addr596:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1087);
                                                               }
                                                               addr641:
                                                            }
                                                            §§goto(addr1255);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr597);
                                                   case 19:
                                                      §§push(this.§;D§);
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(null);
                                                               if(_loc7_ || param3)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     loop31:
                                                                     for(; _loc7_; while(true)
                                                                     {
                                                                        if(!(_loc7_ || this))
                                                                        {
                                                                           continue loop31;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop59;
                                                                        }
                                                                        §§goto(addr684);
                                                                     })
                                                                     {
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           §§push(this.§;D§);
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§pop().stop();
                                                                                 loop54:
                                                                                 while(true)
                                                                                 {
                                                                                    addr518:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§;D§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Tournament").mClip,{
                                                                                          "scaleX":1,
                                                                                          "scaleY":1
                                                                                       },null,0.5,§0W§.§8!s§);
                                                                                       addr537:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_ || param3)
                                                                                          {
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                §§push(this.§;D§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop().play();
                                                                                                   continue loop31;
                                                                                                }
                                                                                                continue loop35;
                                                                                             }
                                                                                             §§goto(addr1295);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                       }
                                                                                       continue loop54;
                                                                                    }
                                                                                    §§goto(addr1281);
                                                                                 }
                                                                                 addr591:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr640);
                                                                              }
                                                                              §§goto(addr1321);
                                                                           }
                                                                           §§goto(addr1339);
                                                                           addr583:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1009);
                                                                        }
                                                                        §§goto(addr1362);
                                                                     }
                                                                     §§goto(addr762);
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr628);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr628);
                                                            }
                                                            §§goto(addr628);
                                                         }
                                                         §§goto(addr595);
                                                      }
                                                      §§goto(addr583);
                                                   case 20:
                                                      addr470:
                                                      if(this.§]!f§ != null)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr486:
                                                                     this.§]!f§.stop();
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           addr444:
                                                                           this.§]!f§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Sale_Container").mClip,{
                                                                              "scaleX":1.2,
                                                                              "scaleY":1.2
                                                                           },null,0.2);
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(this.§]!f§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    continue loop40;
                                                                                 }
                                                                                 addr435:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1315);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr966);
                                                                        }
                                                                        §§goto(addr1321);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr537);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1383);
                                                                  }
                                                               }
                                                               §§goto(addr1197);
                                                            }
                                                            §§goto(addr1013);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr444);
                                                   case 21:
                                                      §§push(this.§]!f§);
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(null);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  addr399:
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this.§]!f§);
                                                                           loop44:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop().stop();
                                                                                    while(!(_loc8_ && param1))
                                                                                    {
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          addr431:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]!f§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Sale_Container").mClip,{
                                                                                                "scaleX":1,
                                                                                                "scaleY":1
                                                                                             },null,0.5,§0W§.§8!s§);
                                                                                             addr371:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(this.§]!f§);
                                                                                                      if(_loc8_ && param1)
                                                                                                      {
                                                                                                         continue loop44;
                                                                                                      }
                                                                                                      §§pop().play();
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         break loop59;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr703);
                                                                                                   }
                                                                                                   §§goto(addr781);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr431);
                                                                                          }
                                                                                          §§goto(addr886);
                                                                                          addr352:
                                                                                       }
                                                                                       §§goto(addr944);
                                                                                    }
                                                                                    §§goto(addr508);
                                                                                    addr417:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr486);
                                                                                 }
                                                                                 §§goto(addr966);
                                                                              }
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr537);
                                                                           addr412:
                                                                        }
                                                                        §§goto(addr837);
                                                                     }
                                                                     §§goto(addr640);
                                                                  }
                                                                  §§goto(addr436);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr470);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr470);
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                      §§goto(addr412);
                                                   case 22:
                                                   case 23:
                                                      LevelManager.§,m§ = 4;
                                                      addr321:
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               mNextState = §]!M§.STATE_NAME;
                                                               addr300:
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr717);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr371);
                                                               }
                                                            }
                                                            §§goto(addr1011);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr829);
                                                         }
                                                      }
                                                      §§goto(addr349);
                                                   case 24:
                                                      §9"6§.§6"C§();
                                                      addr285:
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr841);
                                                      }
                                                      §§goto(addr1275);
                                                   case 25:
                                                      §@"M§.§3"C§("Menu_Confirm");
                                                      addr264:
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     LevelManager.§,m§ = 6;
                                                                     mNextState = §5<§.STATE_NAME;
                                                                     addr250:
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr744);
                                                                     addr257:
                                                                  }
                                                                  §§goto(addr1127);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1058);
                                                               }
                                                            }
                                                            §§goto(addr882);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr708);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr1339);
                                                   case 26:
                                                      addr216:
                                                      if(this.§&!X§ != null)
                                                      {
                                                         addr220:
                                                         this.§&!X§.stop();
                                                         addr218:
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     addr179:
                                                                     this.§&!X§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterWonderland").mClip,{
                                                                        "scaleX":1.2,
                                                                        "scaleY":1.2
                                                                     },null,0.2);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           addr164:
                                                                           this.§&!X§.play();
                                                                           addr165:
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr591);
                                                                                 }
                                                                                 §§goto(addr1150);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr417);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr285);
                                                                           }
                                                                           §§goto(addr841);
                                                                        }
                                                                        §§goto(addr662);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr250);
                                                                     }
                                                                  }
                                                                  §§goto(addr759);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr399);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr179);
                                                   case 27:
                                                      §§push(this.§&!X§);
                                                      loop55:
                                                      while(_loc7_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(null);
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(this.§&!X§);
                                                                        loop56:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stop();
                                                                           addr151:
                                                                           loop57:
                                                                           while(!(_loc8_ && param2))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr88:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§&!X§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterWonderland").mClip,{
                                                                                       "scaleX":1,
                                                                                       "scaleY":1
                                                                                    },null,0.5,§0W§.§8!s§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc8_ && this)
                                                                                       {
                                                                                          continue loop57;
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             continue loop56;
                                                                                          }
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr179);
                                                                                       }
                                                                                    }
                                                                                    break loop59;
                                                                                 }
                                                                                 continue loop55;
                                                                                 addr88:
                                                                              }
                                                                              §§goto(addr257);
                                                                              §§goto(addr250);
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  §§goto(addr151);
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr164);
                                                }
                                                return;
                                             }
                                             addr1588:
                                             §§push(6);
                                             if(_loc8_)
                                             {
                                                addr1729:
                                             }
                                             §§goto(addr2083);
                                          }
                                          else
                                          {
                                             §§push("CHAPTER2");
                                             if(_loc7_ || param2)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc8_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(2);
                                                         if(_loc8_)
                                                         {
                                                            addr1711:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr1846:
                                                         §§push(17);
                                                         if(_loc8_ && param3)
                                                         {
                                                            addr2078:
                                                         }
                                                      }
                                                      §§goto(addr2083);
                                                   }
                                                   else
                                                   {
                                                      §§push("CHAPTER3");
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr1513:
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(3);
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     addr1979:
                                                                  }
                                                               }
                                                               §§goto(addr2083);
                                                            }
                                                            else
                                                            {
                                                               §§push("CHAPTER0");
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§push(4);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr2007:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1616:
                                                                           §§push(7);
                                                                           if(!(_loc7_ || param1))
                                                                           {
                                                                              addr2071:
                                                                           }
                                                                        }
                                                                        §§goto(addr2083);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("CHAPTER1");
                                                                        if(_loc7_)
                                                                        {
                                                                           addr1559:
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr1562:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(5);
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       §§goto(addr2083);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr2007);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1772:
                                                                                    §§push(14);
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       addr1900:
                                                                                    }
                                                                                    §§goto(addr2083);
                                                                                 }
                                                                                 §§goto(addr2083);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("CHAPTERGE");
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§goto(addr1588);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr1953:
                                                                                             §§push(21);
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                §§goto(addr1961);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr2078);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr2083);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("SALE");
                                                                                          if(_loc7_ || param3)
                                                                                          {
                                                                                             addr1600:
                                                                                             §§push(_loc6_);
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                addr1608:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr1616);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1657);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push("CHAPTER0OVER");
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(8);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§goto(addr1637);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1711);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr1726:
                                                                                                               §§push(12);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§goto(addr1729);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1808:
                                                                                                                  §§goto(addr2083);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr2083);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push("CHAPTER0OUT");
                                                                                                            if(_loc7_ || param3)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr1649:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && param3))
                                                                                                                     {
                                                                                                                        §§goto(addr1657);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1703:
                                                                                                                        §§push(11);
                                                                                                                        if(_loc7_ || param3)
                                                                                                                        {
                                                                                                                           §§goto(addr1711);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1729);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr2083);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push("CHAPTER1OVER");
                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr1672:
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(10);
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr2083);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1711);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1805:
                                                                                                                                 §§push(15);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1808);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr2020);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2083);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push("CHAPTER1OUT");
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!(_loc8_ && param3))
                                                                                                                                 {
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1703);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1892:
                                                                                                                                          §§push(19);
                                                                                                                                          if(_loc7_ || param3)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1900);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr2007);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2083);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push("CHAPTER2OVER");
                                                                                                                                       if(!(_loc8_ && param3))
                                                                                                                                       {
                                                                                                                                          addr1720:
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             addr1723:
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1726);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr1971:
                                                                                                                                                   §§push(22);
                                                                                                                                                   if(_loc7_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1979);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2071);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2083);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push("CHAPTER2OUT");
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr1733:
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr1736:
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(13);
                                                                                                                                                            if(!(_loc8_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr2083);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1900);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1971);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2083);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push("CHAPTER3OVER");
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr1756:
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(_loc7_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1772);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1999:
                                                                                                                                                                     §§push(23);
                                                                                                                                                                     if(_loc7_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr2007);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr2078);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2083);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push("CHAPTER3OUT");
                                                                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(_loc7_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        addr1797:
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1805);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1823:
                                                                                                                                                                              §§push(16);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1877:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2083);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push("CHAPTERGEOVER");
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!(_loc8_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1823);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1846);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("CHAPTERGEOUT");
                                                                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1835:
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1838:
                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1846);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2075:
                                                                                                                                                                                                §§push(27);
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr2078);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2083);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push("TOURNAMENTOVER");
                                                                                                                                                                                             if(_loc7_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1863:
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(18);
                                                                                                                                                                                                         if(_loc7_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1877);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2035:
                                                                                                                                                                                                         §§push(25);
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr2071);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push("TOURNAMENTOUT");
                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1884:
                                                                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc8_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1892);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1971);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push("SALEOVER");
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr2011:
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr2014:
                                                                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(24);
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2020);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2078);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr2063:
                                                                                                                                                                                                                        §§push(26);
                                                                                                                                                                                                                        if(!(_loc8_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2071);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2083);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2083);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("CHAPTERWONDERLAND");
                                                                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr2029:
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2032:
                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2035);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2063);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("CHAPTERWONDERLANDOVER");
                                                                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr2042:
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr2060:
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2063);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2075);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2074:
                                                                                                                                                                                                                                       if("CHAPTERWONDERLANDOUT" === _loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2075);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2083);
                                                                                                                                                                                                                                          §§push(28);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2083);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2075);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2074);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2083);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2074);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2060);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2083);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2074);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(20);
                                                                                                                                                                                                               if(_loc7_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2083);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1979);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr2075);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2083);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push("SALEOUT");
                                                                                                                                                                                                            if(!(_loc8_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1937:
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               if(_loc8_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2032);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1988:
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1996:
                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1999);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr2075);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("STAR_WARS_PROMO");
                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr2011);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2042);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2075);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2014);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1953);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr2035);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push("TOURNAMENT");
                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1965:
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1968:
                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1971);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1999);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("CHRISTMASTEASER");
                                                                                                                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1988);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2011);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2083);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2060);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2029);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2083);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2032);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2011);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2075);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2060);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2042);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2083);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2014);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1965);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2083);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2074);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1835);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1797);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1937);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2014);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2029);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr2014);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1988);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1996);
                                                                                                                              }
                                                                                                                              §§goto(addr1720);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1838);
                                                                                                                     }
                                                                                                                     §§goto(addr1720);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1968);
                                                                                                            }
                                                                                                            §§goto(addr2074);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1672);
                                                                                                   }
                                                                                                   §§goto(addr1733);
                                                                                                }
                                                                                                §§goto(addr2083);
                                                                                             }
                                                                                             §§goto(addr1736);
                                                                                          }
                                                                                          §§goto(addr1965);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1608);
                                                                                 }
                                                                                 §§goto(addr1600);
                                                                              }
                                                                           }
                                                                           §§goto(addr1996);
                                                                        }
                                                                        §§goto(addr2074);
                                                                     }
                                                                  }
                                                                  §§goto(addr1723);
                                                               }
                                                               §§goto(addr1863);
                                                            }
                                                         }
                                                         §§goto(addr1562);
                                                      }
                                                      §§goto(addr1559);
                                                   }
                                                }
                                                §§goto(addr2014);
                                             }
                                             §§goto(addr1756);
                                          }
                                       }
                                       §§goto(addr1884);
                                    }
                                    §§goto(addr1513);
                                 }
                                 §§goto(addr2083);
                              }
                              §§goto(addr1649);
                           }
                           §§goto(addr1937);
                        }
                        §§goto(addr2035);
                     }
                  }
               }
               §§goto(addr40);
            }
            §§goto(addr1385);
         }
         §§goto(addr37);
      }
   }
}
