package §2H§
{
   import § "@§.StateLevelEditorTestPlay;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §8" §.Quest;
   import §>X§.§;!&§;
   import §>X§.§@!I§;
   import §]!+§.§ 1§;
   import §^[§.§'!K§;
   import §^[§.§2!h§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §,5§ extends Popup
   {
      
      private static const §^W§:int = 4000;
      
      protected static const §2!_§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §^W§ = 4000;
            do
            {
               §2!_§ = "ScoreLoopCountChannel";
            }
            while(_loc1_ && §,5§);
            
         }
      }
      
      private var static:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §2j§:§%+§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §7!3§:int = 0;
      
      private var §@t§:§%+§;
      
      private var §4!_§:§3^§;
      
      private var §<"9§:§ 1§;
      
      private var §0!w§:§'s§;
      
      private var §7a§:§="#§;
      
      private var §"q§:§="#§;
      
      private var §?[§:§="#§;
      
      private var §0!#§:§`!T§;
      
      private var §&"§:§`!T§;
      
      private var §-!q§:§`!<§;
      
      private var §#4§:§`!<§;
      
      public var mNewScoreCounter:int;
      
      private var §3!z§:§^J§;
      
      private var §6#§:Timer;
      
      private var §^!9§:§3^§;
      
      private var §9!'§:§`!T§;
      
      private var §9!H§:§`!T§;
      
      private var §2!=§:§`!T§;
      
      private var §@"!§:§`!<§;
      
      private const §3!d§:String = "Name";
      
      private var §=!&§:§2!h§;
      
      private var §@f§:Timer;
      
      public function §,5§(param1:XML, param2:§'s§, param3:Quest)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param3)
         {
            this.§3!z§ = new §^J§();
            loop0:
            while(true)
            {
               super(param1,param2);
               loop1:
               while(true)
               {
                  this.§ !Q§ = new Vector.<§@!I§>();
                  loop2:
                  while(true)
                  {
                     this.§<"9§ = new § 1§(param2 as §'!K§,§`7§.§>"?§.Views.View_QuestMenu[0],param2.container);
                     loop3:
                     while(true)
                     {
                        this.§<"9§.init(param3);
                        loop4:
                        while(true)
                        {
                           param2.container.§;!R§(this.§<"9§);
                           loop5:
                           while(true)
                           {
                              goToFrame(1,false);
                              addr268:
                              while(true)
                              {
                                 this.§2!=§ = getItemByName("Container_Block") as §`!T§;
                                 continue loop0;
                              }
                              addr117:
                              if(_loc10_ && this)
                              {
                                 continue;
                              }
                              this.§7a§ = getItemByName("Button_Stars") as §="#§;
                              loop19:
                              for(; !_loc10_; if(!(_loc11_ || param1))
                              {
                                 continue;
                              },if(false)
                              {
                                 §§goto(addr50);
                              },var _loc4_:BitmapData = StateLevelEditorTestPlay.§%P§(),var _loc5_:Bitmap,(_loc5_ = new Bitmap(_loc4_)).height = 189,if(!(_loc10_ && param1))
                              {
                                 _loc5_.scaleX = _loc5_.scaleY;
                                 while(true)
                                 {
                                    if(_loc5_.width < 189)
                                    {
                                       while(true)
                                       {
                                          _loc5_.width = 189;
                                          addr597:
                                          while(true)
                                          {
                                             _loc5_.scaleY = _loc5_.scaleX;
                                             addr588:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr354:
                                          if(!(_loc11_ || param1))
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             loop45:
                                             while(true)
                                             {
                                                this.§@t§ = getItemByName("MovieClip_MoustachePig") as §%+§;
                                                loop46:
                                                while(true)
                                                {
                                                   if(_loc11_ || this)
                                                   {
                                                      addr378:
                                                      if(_loc11_ || param3)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §&!D§.addEventListener(Event.ENTER_FRAME,this.update);
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc11_ || param1))
                                                            {
                                                               break loop45;
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         break;
                                                      }
                                                      loop39:
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(this.§?[§);
                                                            loop40:
                                                            while(true)
                                                            {
                                                               §§pop().§%!v§ = §9!!§.§%!§;
                                                               addr463:
                                                               loop41:
                                                               while(_loc11_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop40;
                                                                  }
                                                                  addr553:
                                                                  while(true)
                                                                  {
                                                                     this.§@"!§ = getItemByName("TextField_InputLevelName") as §`!<§;
                                                                     break loop41;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§@"!§);
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setText(this.§3!d§);
                                                                     addr531:
                                                                     while(_loc11_)
                                                                     {
                                                                        §§push(this.§@"!§);
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           §§pop().mClip.addEventListener(MouseEvent.CLICK,this.§^T§);
                                                                           addr524:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§@"!§);
                                                                              if(_loc10_ && param1)
                                                                              {
                                                                                 continue loop35;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().mClip.addEventListener(Event.CHANGE,this.§=!<§);
                                                                              while(true)
                                                                              {
                                                                                 goToFrame(1,false);
                                                                                 break loop39;
                                                                              }
                                                                           }
                                                                           continue loop33;
                                                                        }
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                         §§goto(addr378);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  this.§?[§ = getItemByName("Button_Finish") as §="#§;
                                                                  §§goto(addr476);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr597);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr514);
                                                      }
                                                      addr476:
                                                      §§goto(addr531);
                                                   }
                                                   addr396:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr463);
                                                      continue loop46;
                                                   }
                                                   §§goto(addr566);
                                                }
                                                while(true)
                                                {
                                                   getItemByName("MovieClip_Thumbnail").mClip.addChild(_loc5_);
                                                   §§goto(addr574);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc11_ || param1)
                                                {
                                                   this.§2j§ = getItemByName("MovieClip_Glow") as §%+§;
                                                   §§goto(addr396);
                                                }
                                                break;
                                                §§goto(addr347);
                                             }
                                             §§goto(addr430);
                                             addr409:
                                          }
                                          var _loc6_:§="#§;
                                          (_loc6_ = getItemByName("Button_ChallengeFriends") as §="#§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§[P§);
                                          var _loc7_:§="#§;
                                          (_loc7_ = getItemByName("Button_NoThanks") as §="#§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§?h§);
                                          if(!(_loc10_ && this))
                                          {
                                             _loc7_.setVisibility(false);
                                             _loc6_.setVisibility(false);
                                             addr693:
                                          }
                                          this.§@f§ = new Timer(3000,1);
                                          addr659:
                                          this.§@f§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-"#§);
                                          addr689:
                                          if(_loc11_ || param2)
                                          {
                                             if(_loc11_)
                                             {
                                                this.§@f§.start();
                                                if(_loc11_ || param2)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr659);
                                                      }
                                                      var _loc8_:Array = new Array();
                                                      var _loc9_:§3^§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(this.§@t§.mClip,{
                                                         "scaleX":this.§?a§,
                                                         "scaleY":this.§?a§
                                                      },{
                                                         "scaleX":0,
                                                         "scaleY":0
                                                      },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(this.§2j§.mClip,{
                                                         "scaleX":this.§?a§,
                                                         "scaleY":this.§?a§
                                                      },{
                                                         "scaleX":0,
                                                         "scaleY":0
                                                      },0.6,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc6_.mClip,{
                                                         "scaleX":this.§?a§,
                                                         "scaleY":this.§?a§
                                                      },{
                                                         "scaleX":0,
                                                         "scaleY":0
                                                      },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc7_.mClip,{
                                                         "scaleX":this.§?a§,
                                                         "scaleY":this.§?a§
                                                      },{
                                                         "scaleX":0,
                                                         "scaleY":0
                                                      },0.8,§7!E§.§8""§));
                                                      if(_loc11_)
                                                      {
                                                         _loc8_.push(_loc9_);
                                                      }
                                                      addr906:
                                                      if(_loc8_.length > 0)
                                                      {
                                                         addr900:
                                                         this.§!_§();
                                                         this.static = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc8_);
                                                         addr868:
                                                         this.static.onComplete = this.§'!r§;
                                                         addr902:
                                                         addr884:
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.static);
                                                            if(_loc11_)
                                                            {
                                                               §§pop().play();
                                                               addr845:
                                                               this.§#4§.setText(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§).toString());
                                                               addr855:
                                                               addr864:
                                                               if(_loc11_)
                                                               {
                                                                  this.§=!&§.update();
                                                                  §5!U§.§2R§(§2!_§,3,1);
                                                                  addr819:
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 §5!U§.playSound("Sound_Star_Pig");
                                                                                 addr810:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §5!U§.playSound("BadPiggies_LevelCompleted");
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr819);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr810);
                                                                                 }
                                                                                 §§goto(addr855);
                                                                              }
                                                                              §§goto(addr900);
                                                                           }
                                                                           §§goto(addr902);
                                                                        }
                                                                        §§goto(addr900);
                                                                     }
                                                                     §§goto(addr864);
                                                                  }
                                                                  addr844:
                                                                  §§goto(addr844);
                                                               }
                                                               §§goto(addr884);
                                                            }
                                                            §§goto(addr868);
                                                         }
                                                         §§goto(addr906);
                                                      }
                                                      §§goto(addr845);
                                                   }
                                                   §§goto(addr693);
                                                }
                                                §§goto(addr659);
                                             }
                                             §§goto(addr689);
                                          }
                                          addr684:
                                          §§goto(addr684);
                                       }
                                    }
                                    §§goto(addr575);
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                    this.§=!<§();
                                    §§goto(addr409);
                                 }
                              },§§goto(addr574))
                              {
                                 this.§7a§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§7!?§);
                                 loop20:
                                 while(true)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             this.§"q§ = getItemByName("Button_Check") as §="#§;
                                             continue loop20;
                                          }
                                          continue loop19;
                                          addr50:
                                       }
                                       continue loop3;
                                    }
                                    loop17:
                                    while(_loc11_)
                                    {
                                       this.§&"§ = getItemByName("HighscoreContainer") as §`!T§;
                                       while(true)
                                       {
                                          if(_loc11_ || param1)
                                          {
                                             §§goto(addr117);
                                          }
                                          else
                                          {
                                             addr138:
                                             while(true)
                                             {
                                                this.§=!&§ = new §2!h§(param2);
                                                continue loop17;
                                             }
                                             addr138:
                                          }
                                          addr65:
                                          if(!(_loc11_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!_loc10_)
                                          {
                                             this.§"q§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§[K§);
                                             if(_loc11_ || this)
                                             {
                                                continue loop19;
                                             }
                                             continue loop20;
                                          }
                                          addr173:
                                          while(!(_loc10_ && param1))
                                          {
                                             if(_loc10_ && param3)
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc11_)
                                             {
                                                while(!_loc10_)
                                                {
                                                   this.§9!H§ = getItemByName("Container_Publish") as §`!T§;
                                                   while(true)
                                                   {
                                                      this.§9!H§.mClip.gotoAndStop(1);
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop2;
                                                addr244:
                                             }
                                             if(!_loc11_)
                                             {
                                                continue loop0;
                                             }
                                             this.§6#§.start();
                                             §§goto(addr138);
                                          }
                                          while(_loc11_ || this)
                                          {
                                             this.§6#§.addEventListener(TimerEvent.TIMER,this.§82§);
                                             §§goto(addr147);
                                          }
                                          addr147:
                                          §§goto(addr235);
                                       }
                                       continue loop5;
                                    }
                                    addr189:
                                    addr201:
                                    while(_loc11_)
                                    {
                                       this.§6#§ = new Timer(1000,1);
                                       §§goto(addr173);
                                    }
                                    while(true)
                                    {
                                       this.§#4§ = getItemByName("Textfield_HighScore_Small") as §`!<§;
                                       §§goto(addr189);
                                    }
                                 }
                                 while(!_loc10_)
                                 {
                                    this.§-!q§ = this.§0!#§.getItemByName("Textfield_Score") as §`!<§;
                                    §§goto(addr201);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr268);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      protected function §-"#§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?h§(null);
         }
      }
      
      protected function §[P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5!U§.playSound("Sound_Button_Click");
            do
            {
               §4m§.doJsCall("shareLevelBuild");
            }
            while(_loc3_);
            
         }
      }
      
      protected function §?h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §5!U§.playSound("Sound_Button_Click");
         }
         do
         {
            this.§9!'§.setVisibility(false);
            do
            {
               this.§9!H§.setVisibility(true);
            }
            while(!(_loc2_ || this));
            
         }
         while(!_loc2_);
         
      }
      
      protected function §82§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 1;
         if(_loc3_ || this)
         {
            this.mNewScoreCounter = 0;
            loop0:
            while(true)
            {
               this.§3!z§.§&!Y§(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§));
               while(true)
               {
                  §5!U§.playSound("Hiscore_Count",§2!_§,100);
                  addr98:
                  while(true)
                  {
                     this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},_loc2_);
                  }
                  loop5:
                  while(!(_loc4_ && _loc3_))
                  {
                     §§push(this.§^!9§);
                     if(!_loc4_)
                     {
                        §§pop().play();
                        if(_loc4_)
                        {
                           continue;
                        }
                        addr39:
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr98);
                           }
                           return;
                           addr50:
                        }
                        while(true)
                        {
                           §§push(this.§^!9§);
                           §§goto(addr39);
                        }
                        §§goto(addr50);
                     }
                     while(true)
                     {
                        §§pop().onComplete = this.§9!y§;
                        continue loop5;
                        §§goto(addr74);
                     }
                     addr74:
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §9!y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §5!U§.§+!7§(§2!_§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.open(param1);
         }
      }
      
      private function §'!r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4!_§ = §7!E§.§2=§.§<!C§(this.§2j§.mClip,{"rotation":360},{"rotation":0},§^W§ / 1000);
            loop0:
            while(true)
            {
               §§push(this.§4!_§);
               loop1:
               while(true)
               {
                  §§pop().onComplete = this.§'!r§;
                  addr48:
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         if(!(_loc6_ && param1))
         {
            this.§7!3§ = getTimer();
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() > 100)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr52);
                     }
                     else
                     {
                        addr53:
                        §§push(0);
                     }
                  }
                  §§goto(addr53);
               }
               for each(_loc3_ in this.§ !Q§)
               {
                  if(!_loc6_)
                  {
                     _loc3_.update(_loc2_);
                  }
               }
               if(_loc7_ || _loc3_)
               {
                  this.§<"9§.update(_loc2_);
                  while(true)
                  {
                     this.§-!q§.setText(this.mNewScoreCounter.toString());
                     while(_loc7_ || _loc2_)
                     {
                        this.§=!&§.update();
                        if(_loc6_)
                        {
                           continue;
                        }
                        return;
                        addr103:
                     }
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr53);
         }
         addr52:
      }
      
      private function §#!x§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§@!I§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(this.§^K§)
            {
               if(_loc4_)
               {
                  addr36:
                  this.§^K§.stop();
               }
               try
               {
                  this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
                  if(_loc4_ || _loc1_)
                  {
                  }
               }
               catch(e:Error)
               {
               }
               §§goto(addr163);
            }
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§ !Q§;
               if(_loc4_)
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop1:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        loop2:
                        while(true)
                        {
                           addr115:
                           while(true)
                           {
                              if(§&!D§.contains(splash))
                              {
                                 while(!(_loc5_ && this))
                                 {
                                    §&!D§.removeChild(splash);
                                 }
                                 continue loop2;
                                 addr121:
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr145);
               }
               while(true)
               {
                  §§goto(addr88);
               }
            }
            addr145:
            if(_loc4_ || this)
            {
               §§goto(addr163);
            }
            addr163:
            this.§ !Q§ = new Vector.<§@!I§>();
            return;
         }
         §§goto(addr36);
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,80,0,§;!&§.§3!O§);
         }
         while(true)
         {
            §&!D§.addChild(this.§7d§);
            while(_loc3_)
            {
               this.§ !Q§.push(this.§7d§);
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private function §!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^K§ = new Timer(200);
            while(true)
            {
               this.§@!6§ = 0;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
                     do
                     {
                        this.§^K§.start();
                     }
                     while(_loc2_ && this);
                     
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.close();
            loop0:
            while(true)
            {
               §&!D§.removeEventListener(Event.ENTER_FRAME,this.update);
               loop1:
               while(true)
               {
                  §&!D§.container.removeComponent(this.§<"9§);
                  loop2:
                  while(true)
                  {
                     this.§<"9§.hide();
                     loop3:
                     while(!_loc1_)
                     {
                        this.§<"9§ = null;
                        loop4:
                        while(true)
                        {
                           this.§#!x§();
                           loop5:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 this.§=!&§.dispose();
                                 while(!_loc1_)
                                 {
                                    this.§=!&§ = null;
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                             addr39:
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            if(this.§@!6§ == 0)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§0,§(this.§@t§.mClip.parent.parent.x + this.§@t§.mClip.parent.x + this.§@t§.mClip.x,this.§@t§.mClip.parent.parent.y + this.§@t§.mClip.parent.y + this.§@t§.mClip.y);
                  if(!_loc5_)
                  {
                     addr93:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§@!6§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && param1))
                     {
                        _loc2_.§@!6§ = _loc3_;
                     }
                  }
               }
            }
            else
            {
               this.§^K§.stop();
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr93);
               }
            }
            return;
         }
         §§goto(addr93);
      }
      
      private function §[K§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §5!U§.playSound("Sound_Button_Click");
            loop0:
            while(true)
            {
               this.§"q§.visible = false;
               while(true)
               {
                  this.§7a§.visible = true;
                  loop2:
                  while(!_loc3_)
                  {
                     this.§&"§.setVisibility(true);
                     loop3:
                     while(true)
                     {
                        §§push(this.§=!&§);
                        while(true)
                        {
                           §§pop().§=!^§();
                           §§push(this.§=!&§);
                           addr67:
                           continue loop3;
                           if(_loc2_)
                           {
                              §§pop().§&!N§();
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       return;
                                       addr55:
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §7!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §5!U§.playSound("Sound_Button_Click");
            loop0:
            while(true)
            {
               this.§7a§.visible = false;
               loop1:
               while(true)
               {
                  this.§"q§.visible = true;
                  loop2:
                  do
                  {
                     this.§&"§.setVisibility(false);
                     while(_loc2_)
                     {
                        continue loop0;
                        this.§=!&§.§"!U§();
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc3_);
                  
               }
            }
         }
      }
      
      private function §^T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@"!§);
            if(_loc2_)
            {
               if(§§pop().§2! §() == this.§3!d§)
               {
                  if(_loc2_)
                  {
                     addr50:
                     this.§@"!§.setText("");
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §=!<§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.§5!O§())
            {
               §§push(this.§?[§);
               loop0:
               for(; !_loc3_; §§push(this.§?[§),if(!(_loc2_ || _loc3_))
               {
                  continue;
               },§§push(2),if(_loc2_)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     §§goto(addr44);
                  }
                  §§goto(addr87);
               },§§goto(addr86))
               {
                  §§push(§9!!§.§%!§);
                  if(!_loc3_)
                  {
                     §§pop().§%!v§ = §§pop();
                     loop1:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr111:
                           §§push(this.§?[§);
                           while(true)
                           {
                              §§push(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              addr113:
                              while(true)
                              {
                                 §§pop().§%!v§ = §§pop();
                                 addr114:
                                 addr85:
                                 while(true)
                                 {
                                    §§push(this.§?[§);
                                    break loop0;
                                 }
                                 addr86:
                                 §§push(1);
                                 while(true)
                                 {
                                    §§push(false);
                                    addr87:
                                    while(true)
                                    {
                                       §§pop().goToFrame(§§pop(),§§pop());
                                       break loop1;
                                    }
                                    §§goto(addr24);
                                 }
                              }
                           }
                        }
                        break;
                        addr44:
                        §§pop().goToFrame(§§pop(),§§pop());
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        §§goto(addr24);
                     }
                     while(true)
                     {
                        if(_loc3_ && param1)
                        {
                           §§goto(addr114);
                        }
                        addr24:
                        return;
                     }
                  }
                  §§goto(addr113);
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§goto(addr111);
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr62);
      }
      
      private function §5!O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@"!§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_ || this)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    addr110:
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§@"!§);
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().§2! §());
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().length > 3);
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(!_loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      break loop11;
                                                   }
                                                   addr57:
                                                }
                                             }
                                             continue loop8;
                                          }
                                          addr75:
                                          if(!_loc2_)
                                          {
                                             break loop7;
                                          }
                                          continue loop7;
                                          addr44:
                                       }
                                       else
                                       {
                                          addr135:
                                          addr92:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() == null);
                                          if(!_loc2_)
                                          {
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                break;
                                             }
                                             §§push(!§§pop());
                                             continue loop12;
                                          }
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       while(true)
                                       {
                                          §§push(this.§@"!§);
                                          break loop9;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr44);
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr135);
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §"T§() : String
      {
         return this.§@"!§.§2! §();
      }
      
      public function §?D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.mClip.gotoAndStop(2);
         }
      }
   }
}
