package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §05§.§?s§;
   import §;" §.Quest;
   import §;b§.StateLevelEditorTestPlay;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import §@y§.§>!D§;
   import §]" §.§?"-§;
   import §^!k§.§#!S§;
   import §^!k§.§return§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §1d§ extends Popup
   {
      
      private static const §&" §:int = 4000;
      
      protected static const §]!9§:String = "ScoreLoopCountChannel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&" § = 4000;
            do
            {
               §]!9§ = "ScoreLoopCountChannel";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §4@§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §7^§:§@u§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §1"6§:int = 0;
      
      private var §]y§:§@u§;
      
      private var §'";§:§=!r§;
      
      private var §3?§:§?"-§;
      
      private var §#]§:§>!V§;
      
      private var §"D§:§9"8§;
      
      private var §[k§:§9"8§;
      
      private var §"7§:§9"8§;
      
      private var §[3§:§6W§;
      
      private var §]!C§:§6W§;
      
      private var §#3§:§!!]§;
      
      private var §&!H§:§!!]§;
      
      public var mNewScoreCounter:int;
      
      private var §4!?§:§9!=§;
      
      private var §3R§:Timer;
      
      private var §1!8§:§=!r§;
      
      private var §1;§:§6W§;
      
      private var §61§:§6W§;
      
      private var §]"=§:§6W§;
      
      private var §#!B§:§!!]§;
      
      private const §;!D§:String = "Name";
      
      private var §;!a§:§#!S§;
      
      private var §catch§:Timer;
      
      public function §1d§(param1:XML, param2:§>!V§, param3:Quest)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || this)
         {
            this.§4!?§ = new §9!=§();
            while(true)
            {
               super(param1,param2);
            }
            addr312:
         }
         loop1:
         while(true)
         {
            this.§!!N§ = new Vector.<§2U§>();
            loop2:
            while(true)
            {
               this.§3?§ = new §?"-§(param2 as §return§,§]!M§.§"!V§.Views.View_QuestMenu[0],param2.container);
               loop3:
               for(; _loc11_; while(_loc11_ || param3)
               {
                  this.§#3§ = this.§[3§.getItemByName("Textfield_Score") as §!!]§;
                  §§goto(addr203);
               })
               {
                  this.§3?§.init(param3);
                  loop4:
                  while(true)
                  {
                     param2.container.§#i§(this.§3?§);
                     addr268:
                     while(true)
                     {
                        goToFrame(1,false);
                        while(true)
                        {
                           this.§]"=§ = getItemByName("Container_Block") as §6W§;
                           while(true)
                           {
                              this.§1;§ = getItemByName("Container_LevelEnd") as §6W§;
                              addr246:
                              while(true)
                              {
                                 this.§61§ = getItemByName("Container_Publish") as §6W§;
                                 addr237:
                                 while(true)
                                 {
                                    this.§61§.mClip.gotoAndStop(1);
                                    addr228:
                                    while(true)
                                    {
                                       this.§[3§ = getItemByName("MovieClip_Score") as §6W§;
                                       continue loop3;
                                    }
                                 }
                              }
                              addr54:
                              if(!(_loc10_ && param2))
                              {
                                 continue loop2;
                              }
                           }
                           addr186:
                           if(!(_loc11_ || param3))
                           {
                              continue;
                           }
                           this.§3R§ = new Timer(1000,1);
                           while(true)
                           {
                              this.§3R§.addEventListener(TimerEvent.TIMER,this.§9">§);
                              while(!_loc10_)
                              {
                                 this.§3R§.start();
                                 while(true)
                                 {
                                    this.§;!a§ = new §#!S§(param2);
                                    addr151:
                                    while(true)
                                    {
                                       this.§]!C§ = getItemByName("HighscoreContainer") as §6W§;
                                       continue loop1;
                                    }
                                 }
                                 if(!(_loc11_ || param3))
                                 {
                                    continue;
                                 }
                                 if(!_loc10_)
                                 {
                                    if(_loc11_)
                                    {
                                       §§goto(addr54);
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr237);
                              }
                              addr184:
                              while(!_loc10_)
                              {
                                 §§goto(addr186);
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                     addr91:
                     if(!(_loc11_ || param2))
                     {
                        continue;
                     }
                     this.§[k§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8'§);
                     if(!(_loc10_ && param2))
                     {
                        if(!_loc11_)
                        {
                           loop20:
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                    addr70:
                                 }
                                 while(true)
                                 {
                                    this.§[k§ = getItemByName("Button_Check") as §9"8§;
                                    addr78:
                                    while(true)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(_loc11_)
                                             {
                                                addr84:
                                                if(_loc11_ || param3)
                                                {
                                                   §§goto(addr91);
                                                }
                                                else
                                                {
                                                   while(!_loc10_)
                                                   {
                                                      this.§&!H§ = getItemByName("Textfield_HighScore_Small") as §!!]§;
                                                      §§goto(addr84);
                                                   }
                                                   §§goto(addr268);
                                                   addr203:
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr151);
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              addr121:
                              while(!(_loc10_ && param2))
                              {
                                 this.§"D§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§6Y§);
                                 continue loop20;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        §§goto(addr43);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr312);
            }
         }
      }
      
      protected function §>u§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`"'§(null);
         }
      }
      
      protected function §;!A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §0"#§.§9"2§("Sound_Button_Click");
         }
         do
         {
            §?s§.doJsCall("shareLevelBuild");
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function §`"'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0"#§.§9"2§("Sound_Button_Click");
            while(true)
            {
               this.§1;§.setVisibility(false);
               while(!_loc2_)
               {
                  this.§61§.setVisibility(true);
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function §9">§(param1:TimerEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 1;
         if(_loc3_ || param1)
         {
            this.mNewScoreCounter = 0;
            while(true)
            {
               this.§4!?§.§2">§(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
               loop1:
               while(true)
               {
                  §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
                  addr108:
                  while(true)
                  {
                     this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},_loc2_);
                     continue loop1;
                  }
               }
               addr51:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               return;
               addr68:
            }
         }
         while(true)
         {
            §§push(this.§1!8§);
            if(_loc3_ || _loc2_)
            {
               §§pop().play();
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc3_)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr108);
               }
               §§goto(addr75);
            }
            §§goto(addr72);
         }
         §§goto(addr68);
      }
      
      private function §`!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0"#§.§<"0§(§]!9§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.open(param1);
         }
      }
      
      private function §?!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'";§ = §7I§.§[E§.§ ";§(this.§7^§.mClip,{"rotation":360},{"rotation":0},§&" § / 1000);
         }
         loop0:
         do
         {
            §§push(this.§'";§);
            while(true)
            {
               §§pop().onComplete = this.§?!-§;
               while(true)
               {
                  §§push(this.§'";§);
                  if(!(_loc1_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().play();
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         if(_loc6_ || this)
         {
            this.§1"6§ = getTimer();
            if(_loc6_ || param1)
            {
               addr44:
               §§push(_loc2_);
               if(_loc6_ || param1)
               {
                  if(§§pop() > 100)
                  {
                     if(_loc6_ || param1)
                     {
                        §§goto(addr71);
                     }
                  }
                  §§push(0);
               }
               for each(_loc3_ in this.§!!N§)
               {
                  if(!_loc7_)
                  {
                     _loc3_.update(_loc2_);
                  }
               }
               if(!_loc7_)
               {
                  this.§3?§.update(_loc2_);
               }
               while(true)
               {
                  this.§#3§.setText(this.mNewScoreCounter.toString());
                  while(_loc6_)
                  {
                     this.§;!a§.update();
                     if(_loc6_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            addr71:
            return;
         }
         §§goto(addr44);
      }
      
      private function §&V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§2U§ = null;
         if(!_loc5_)
         {
            if(this.§1!"§)
            {
               if(_loc4_)
               {
                  this.§1!"§.stop();
                  try
                  {
                     addr34:
                     this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
                     if(!_loc5_)
                     {
                        addr57:
                        var _loc2_:int = 0;
                        if(_loc4_)
                        {
                           var _loc3_:* = this.§!!N§;
                           if(!_loc5_)
                           {
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 }
                              }
                              if(_loc4_)
                              {
                                 this.§!!N§ = new Vector.<§2U§>();
                                 §§goto(addr139);
                              }
                              addr139:
                              return;
                              addr117:
                              addr120:
                           }
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 if(§-^§.contains(splash))
                                 {
                                    while(_loc4_)
                                    {
                                       §-^§.removeChild(splash);
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop2;
                                    addr101:
                                 }
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[1].clean();
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr117);
                                          }
                                          else
                                          {
                                             §§goto(addr101);
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    break;
                                 }
                                 §§goto(addr111);
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr139);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr34);
            }
            §§goto(addr57);
         }
         §§goto(addr34);
      }
      
      private function §[S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,80,0,§@!3§.§?H§);
         }
         do
         {
            §-^§.addChild(this.§@"#§);
            do
            {
               this.§!!N§.push(this.§@"#§);
            }
            while(_loc3_);
            
         }
         while(_loc3_ && _loc3_);
         
      }
      
      private function §&D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!"§ = new Timer(200);
         }
         while(true)
         {
            this.§7!S§ = 0;
            while(!_loc2_)
            {
               this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
               do
               {
                  this.§1!"§.start();
               }
               while(_loc2_);
               
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.close();
            while(true)
            {
               §-^§.removeEventListener(Event.ENTER_FRAME,this.update);
               while(!(_loc2_ && this))
               {
                  this.§;!a§.dispose();
                  loop6:
                  for(; _loc1_; this.§;!a§ = null,if(!_loc1_)
                  {
                     continue;
                  },if(!_loc2_)
                  {
                     return;
                  },loop3:
                  while(_loc1_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        this.§3?§ = null;
                        §§goto(addr76);
                     }
                     else
                     {
                        while(true)
                        {
                           §-^§.container.removeComponent(this.§3?§);
                           break loop3;
                        }
                        addr115:
                     }
                  },while(true)
                  {
                     this.§3?§.hide();
                     §§goto(addr81);
                  },addr81:)
                  {
                     addr43:
                     if(_loc1_ || _loc1_)
                     {
                        continue;
                     }
                     addr76:
                     while(true)
                     {
                        this.§&V§();
                        break loop6;
                        §§goto(addr43);
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.§7!S§ == 0)
            {
               if(!_loc4_)
               {
                  this.§[S§(this.§]y§.mClip.parent.parent.x + this.§]y§.mClip.parent.x + this.§]y§.mClip.x,this.§]y§.mClip.parent.parent.y + this.§]y§.mClip.parent.y + this.§]y§.mClip.y);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr114);
               }
               addr84:
               var _loc2_:*;
               §§push((_loc2_ = this).§7!S§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§7!S§ = _loc3_;
               }
            }
            else
            {
               this.§1!"§.stop();
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr84);
               }
            }
            addr114:
            return;
         }
         §§goto(addr84);
      }
      
      private function §8'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0"#§.§9"2§("Sound_Button_Click");
            loop0:
            while(true)
            {
               this.§[k§.visible = false;
               while(true)
               {
                  this.§"D§.visible = true;
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§]!C§.setVisibility(true);
                     loop3:
                     do
                     {
                        §§push(this.§;!a§);
                        while(true)
                        {
                           §§pop().§5!Q§();
                           while(true)
                           {
                              §§push(this.§;!a§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§pop().§0!n§();
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(_loc2_);
                     
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §6Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §0"#§.§9"2§("Sound_Button_Click");
            loop0:
            while(true)
            {
               this.§"D§.visible = false;
               addr93:
               while(true)
               {
                  this.§[k§.visible = true;
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §`+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§#!B§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop().§3!f§() == this.§;!D§)
               {
                  if(_loc3_)
                  {
                     addr56:
                     this.§#!B§.setText("");
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      private function §!"?§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§#"2§())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr114:
                  this.§"7§.§-!2§ = §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT;
                  addr112:
               }
               addr115:
               §§push(this.§"7§);
            }
            else
            {
               §§push(this.§"7§);
               loop0:
               while(true)
               {
                  §§push(§>!D§.§&!j§);
                  if(_loc3_)
                  {
                     §§pop().§-!2§ = §§pop();
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                     addr20:
                     return;
                     addr80:
                     addr89:
                  }
                  break;
               }
               §§goto(addr114);
            }
            §§goto(addr87);
            §§push(1);
         }
         §§goto(addr82);
      }
      
      private function §#"2§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§#!B§);
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§#!B§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop().§3!f§());
                                    addr102:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(!_loc2_)
                                       {
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop())
                                                {
                                                   addr117:
                                                   while(!(_loc2_ && _loc1_))
                                                   {
                                                      §§pop();
                                                   }
                                                   continue loop1;
                                                   addr117:
                                                }
                                                else
                                                {
                                                   addr65:
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(true);
                                                      }
                                                      else
                                                      {
                                                         addr90:
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            while(!(_loc2_ && _loc1_))
                                                            {
                                                               continue loop6;
                                                               §§goto(addr90);
                                                            }
                                                            continue loop5;
                                                            addr125:
                                                         }
                                                         while(true)
                                                         {
                                                            addr24:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(!_loc2_)
                                                               {
                                                                  break loop10;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(!_loc1_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop2;
                                                      addr85:
                                                   }
                                                   §§goto(addr24);
                                                }
                                                return §§pop();
                                                §§goto(addr125);
                                             }
                                          }
                                          addr107:
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §3"8§() : String
      {
         return this.§#!B§.§3!f§();
      }
      
      public function §2g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.mClip.gotoAndStop(2);
         }
      }
   }
}
