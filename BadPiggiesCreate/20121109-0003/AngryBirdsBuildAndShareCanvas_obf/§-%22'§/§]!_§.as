package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]!_§ extends Popup
   {
      
      private static const §4!P§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!P§ = "EndScreenEffectChannel";
         }
      }
      
      private var §,!c§:§=!r§;
      
      private var §7!B§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §;w§:Array;
      
      private var §1"6§:int = 0;
      
      private var §3A§:int = 0;
      
      private var § X§:Array;
      
      private var §6;§:int = 1;
      
      public function §]!_§(param1:XML, param2:§>!V§, param3:int)
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc16_:MovieClip = null;
         var _loc24_:§=!r§ = null;
         if(!_loc28_)
         {
            this.§;w§ = new Array();
            while(true)
            {
               this.§ X§ = new Array();
               addr38:
               if(_loc28_ && param3)
               {
                  continue;
               }
               if(false)
               {
                  loop4:
                  while(true)
                  {
                     this.§3A§ = param3;
                     while(true)
                     {
                        if(!(_loc28_ && this))
                        {
                           addr58:
                           if(!(_loc28_ && this))
                           {
                              addr65:
                              if(!(_loc27_ || param2))
                              {
                                 break;
                              }
                              §0"#§.§4!m§(§4!P§,8,1);
                              if(_loc28_ && param3)
                              {
                                 continue;
                              }
                              §§goto(addr38);
                           }
                           while(true)
                           {
                              this.§!!N§ = new Vector.<§2U§>();
                              §§goto(addr58);
                           }
                           addr86:
                        }
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                     addr92:
                     while(true)
                     {
                        super(param1,param2);
                        §§goto(addr86);
                        §§goto(addr65);
                     }
                  }
               }
               var _loc4_:Number = (getItemByName("ContainerLevelUp") as §6W§).width;
               var _loc5_:Number = (getItemByName("ContainerLevelUp") as §6W§).height;
               var _loc6_:Number = (getItemByName("ContainerLevelUp") as §6W§).x;
               var _loc7_:Number;
               §§push(_loc7_ = (getItemByName("ContainerLevelUp") as §6W§).y);
               if(_loc27_)
               {
                  §§push(_loc5_);
                  if(_loc27_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_)
                  {
                     addr141:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(_loc6_);
                  if(!_loc28_)
                  {
                     §§push(_loc4_);
                     if(_loc27_ || param2)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc27_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  var _loc10_:Class;
                  var _loc11_:MovieClip = new (_loc10_ = §69§.§ 0§("SurprisePigIcon"))();
                  var _loc12_:MovieClip = new _loc10_();
                  var _loc13_:MovieClip = new _loc10_();
                  if(!(_loc28_ && param3))
                  {
                     addr219:
                     this.§;w§.push(_loc11_);
                  }
                  addr202:
                  addr221:
                  §§push(this.§;w§);
                  if(!(_loc28_ && param1))
                  {
                     §§pop().push(_loc12_);
                     addr214:
                     if(_loc27_)
                     {
                        §§push(this.§;w§);
                        if(_loc27_)
                        {
                           §§pop().push(_loc13_);
                           if(_loc27_)
                           {
                              if(false)
                              {
                                 §§goto(addr202);
                              }
                              var _loc14_:Array = new Array();
                              if(!_loc28_)
                              {
                                 §-^§.addEventListener(Event.ENTER_FRAME,this.update);
                              }
                              var _loc15_:* = Number(1);
                              var _loc25_:int = 0;
                              var _loc26_:* = this.§;w§;
                              addr430:
                              for each(_loc16_ in _loc26_)
                              {
                                 _loc16_.stop();
                                 if(!(_loc28_ && param1))
                                 {
                                    mClip.addChild(_loc16_);
                                    _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
                                    _loc16_.y = _loc8_;
                                    addr395:
                                    if(!(_loc28_ && param3))
                                    {
                                       §§push(_loc15_);
                                       if(!(_loc28_ && param3))
                                       {
                                          if(§§pop() <= this.§3A§)
                                          {
                                             if(_loc27_)
                                             {
                                                this.§ X§[_loc15_] = new Timer(100,1);
                                                addr359:
                                                addr344:
                                                addr343:
                                                if(!(_loc28_ && param2))
                                                {
                                                   addr312:
                                                   §§push(this.§ X§);
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      addr320:
                                                      §§pop()[_loc15_].addEventListener(TimerEvent.TIMER_COMPLETE,this.§&!3§);
                                                      addr275:
                                                      addr326:
                                                      §§push(this.§ X§);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc15_);
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               §§pop()[§§pop()].start();
                                                               addr292:
                                                               if(_loc27_)
                                                               {
                                                                  if(_loc27_ || this)
                                                                  {
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        _loc16_.gotoAndStop("filled");
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           if(_loc27_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr275);
                                                                              }
                                                                              _loc24_ = §7I§.§[E§.§ ";§(_loc16_,{
                                                                                 "scaleX":this.§=9§,
                                                                                 "scaleY":this.§=9§
                                                                              },{
                                                                                 "scaleX":0,
                                                                                 "scaleY":0
                                                                              },0.4,§7I§.§;!C§);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 _loc14_.push(_loc24_);
                                                                                 addr422:
                                                                                 §§push(_loc15_);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                    }
                                                                                    addr429:
                                                                                    _loc15_ = §§pop();
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 §§goto(addr429);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr312);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr395);
                                                addr341:
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr422);
                                       }
                                       §§goto(addr429);
                                    }
                                    addr391:
                                    §§goto(addr391);
                                 }
                                 §§goto(addr341);
                              }
                              if(_loc27_ || this)
                              {
                                 if(_loc14_.length > 0)
                                 {
                                    addr477:
                                    this.§7!B§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc14_);
                                    addr467:
                                    this.§7!B§.onComplete = this.§;s§;
                                    addr464:
                                    if(!_loc28_)
                                    {
                                       addr442:
                                       §§push(this.§7!B§);
                                       if(!_loc28_)
                                       {
                                          §§pop().play();
                                          if(!(_loc28_ && this))
                                          {
                                             if(_loc27_ || this)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr464);
                                                }
                                                var _loc17_:§6W§ = getItemByName("ContainerXP") as §6W§;
                                                if(_loc27_ || param1)
                                                {
                                                   (getItemByName("TextField_Progress_Level") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).oldXpLevel.toString());
                                                   if(_loc27_)
                                                   {
                                                      addr515:
                                                      (getItemByName("TextField_Progress_Level") as §!!]§).setVisibility(true);
                                                   }
                                                   var _loc18_:§@u§;
                                                   var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §@u§).mClip.width;
                                                   var _loc20_:Number = _loc18_.mClip.x;
                                                   var _loc21_:Number = (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
                                                   §§push((AngryBirdsFP11.§>!7§ as §+`§).oldXp / _loc21_);
                                                   if(_loc27_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc22_:* = §§pop();
                                                   §§push((AngryBirdsFP11.§>!7§ as §+`§).newXp / _loc21_);
                                                   if(_loc27_ || param3)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc23_:* = §§pop();
                                                   if(_loc27_)
                                                   {
                                                      §§push(AngryBirdsFP11.§>!7§);
                                                      if(!_loc28_)
                                                      {
                                                         if((§§pop() as §+`§).§&3§)
                                                         {
                                                            addr712:
                                                            _loc22_ = Number((AngryBirdsFP11.§>!7§ as §+`§).oldXp / (AngryBirdsFP11.§>!7§ as §+`§).minXp);
                                                            addr690:
                                                            addr713:
                                                            addr711:
                                                            §§push(1);
                                                            if(_loc27_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc28_)
                                                               {
                                                                  if(_loc27_ || param3)
                                                                  {
                                                                     _loc23_ = §§pop();
                                                                     addr674:
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        addr646:
                                                                        _loc18_.mClip.width = _loc22_;
                                                                        addr651:
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(this.§,!c§);
                                                                           if(_loc27_ || param1)
                                                                           {
                                                                              if(§§pop() != null)
                                                                              {
                                                                                 addr642:
                                                                                 this.§,!c§.stop();
                                                                                 addr640:
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr599:
                                                                                    this.§,!c§ = §7I§.§[E§.§ ";§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§7I§.§;!C§);
                                                                                    addr616:
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(this.§,!c§);
                                                                                             if(_loc27_ || this)
                                                                                             {
                                                                                                §§pop().play();
                                                                                                if(!(_loc27_ || param2))
                                                                                                {
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr642);
                                                                                          }
                                                                                          §§goto(addr690);
                                                                                       }
                                                                                       §§goto(addr640);
                                                                                    }
                                                                                    §§goto(addr642);
                                                                                 }
                                                                                 §§goto(addr651);
                                                                              }
                                                                              §§goto(addr599);
                                                                           }
                                                                           §§goto(addr642);
                                                                        }
                                                                        §§goto(addr674);
                                                                        addr681:
                                                                     }
                                                                     §§goto(addr713);
                                                                  }
                                                                  §§goto(addr711);
                                                               }
                                                               §§goto(addr712);
                                                            }
                                                            addr705:
                                                            §§goto(addr705);
                                                            addr692:
                                                         }
                                                         §§goto(addr646);
                                                      }
                                                      §§goto(addr692);
                                                   }
                                                   §§goto(addr681);
                                                }
                                                §§goto(addr515);
                                             }
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr467);
                                       addr472:
                                    }
                                    addr486:
                                    §§goto(addr486);
                                 }
                                 §§goto(addr442);
                              }
                              §§goto(addr472);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr219);
               }
               §§goto(addr141);
            }
         }
         §§goto(addr92);
      }
      
      protected function §&!3§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §0"#§.§9"2§("Sound_Editor_Star_" + this.§6;§.toString(),§4!P§);
            if(_loc5_)
            {
               addr44:
               var _loc2_:*;
               §§push((_loc2_ = this).§6;§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§6;§ = _loc3_;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function §;s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&D§();
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         if(!(_loc6_ && _loc2_))
         {
            this.§1"6§ = getTimer();
            if(!(_loc6_ && this))
            {
               §§goto(addr55);
            }
            §§goto(addr67);
         }
         addr55:
         §§push(_loc2_);
         if(!(_loc6_ && param1))
         {
            if(§§pop() > 100)
            {
               if(_loc7_)
               {
                  addr67:
                  return;
               }
            }
            §§push(0);
         }
         for each(_loc3_ in this.§!!N§)
         {
            if(_loc7_)
            {
               _loc3_.update(_loc2_);
            }
         }
      }
      
      private function §&V§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§2U§ = null;
         if(_loc5_)
         {
            if(this.§1!"§)
            {
               if(!_loc4_)
               {
                  addr32:
                  this.§1!"§.stop();
               }
               try
               {
                  this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
                  if(!_loc4_)
                  {
                     addr58:
                     var _loc2_:int = 0;
                     if(_loc5_)
                     {
                        var _loc3_:* = this.§!!N§;
                        if(_loc5_)
                        {
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              loop1:
                              while(true)
                              {
                                 §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                                 addr127:
                                 while(true)
                                 {
                                    addr108:
                                    while(true)
                                    {
                                       if(!§-^§.contains(splash))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §-^§.removeChild(splash);
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc5_)
                           {
                              this.§!!N§ = new Vector.<§2U§>();
                              §§goto(addr150);
                           }
                           addr150:
                           return;
                           addr131:
                        }
                        while(true)
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr150);
               }
               catch(e:Error)
               {
               }
            }
            §§goto(addr58);
         }
         §§goto(addr32);
      }
      
      private function §[S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,40,0,§@!3§.§?H§);
            while(true)
            {
               §-^§.addChild(this.§@"#§);
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     this.§!!N§.push(this.§@"#§);
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §&D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1!"§ = new Timer(250);
            while(true)
            {
               this.§7!S§ = 0;
               loop1:
               for(; !(_loc1_ && this); while(_loc2_ || this)
               {
                  this.§1!"§.start();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.close();
         }
         do
         {
            this.§&V§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§!!]§ = null;
         if(_loc8_ || _loc2_)
         {
            §§push(this.§7!S§);
            if(_loc8_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(_loc8_)
                  {
                     §§push(1);
                     if(_loc8_ || _loc3_)
                     {
                        addr53:
                        _loc2_ = §§pop();
                        addr54:
                        §§push(0);
                     }
                     for each(_loc3_ in this.§;w§)
                     {
                        if(_loc8_)
                        {
                           if(_loc3_.currentLabel != "filled")
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              _loc3_.gotoAndStop("empty");
                              if(!(_loc7_ && param1))
                              {
                                 addr85:
                                 (getItemByName("TextField_XPBar") as §!!]§).setVisibility(true);
                              }
                              (_loc4_ = getItemByName("TextField_XPBar") as §!!]§).setVisibility(true);
                              if(!_loc7_)
                              {
                                 _loc4_.setText("+020");
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(-_loc4_.width);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§pop().x = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(-_loc4_.height);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(2);
                                          if(!(_loc7_ && param1))
                                          {
                                             addr198:
                                             §§push(§§pop() / §§pop());
                                             if(!_loc7_)
                                             {
                                                §§push(8);
                                             }
                                             §§pop().y = §§pop();
                                             loop3:
                                             while(true)
                                             {
                                                _loc3_.addChild(_loc4_.mClip);
                                                addr172:
                                                while(true)
                                                {
                                                   §0"#§.§9"2§("Sound_Star_Pig");
                                                   addr157:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr199:
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr198);
                                    }
                                    if(_loc7_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr131);
                                 }
                              }
                              §§goto(addr199);
                           }
                        }
                        §§goto(addr85);
                     }
                     if(_loc7_)
                     {
                     }
                     addr232:
                     var _loc5_:*;
                     §§push((_loc5_ = this).§7!S§);
                     if(_loc8_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc6_:* = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc5_.§7!S§ = _loc6_;
                     }
                  }
                  §§goto(addr54);
               }
               else
               {
                  this.§1!"§.stop();
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr232);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
   }
}
