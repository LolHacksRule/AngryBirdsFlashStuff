package §2!U§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §8"!§ extends §9![§
   {
      
      public static const §'!q§:String = "ChapterSelectionState";
      
      private static const §`!?§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §8"!§))
         {
            §'!q§ = "ChapterSelectionState";
         }
         do
         {
            §`!?§ = 0.5;
         }
         while(!_loc1_);
         
      }
      
      private var §+R§:Sprite;
      
      private var §>!+§:§^! §;
      
      private var §=Z§:Array;
      
      private var §]!<§:Array;
      
      private var §<!x§:int = 0;
      
      private var §&j§:Number = 0;
      
      private var §@!q§:Number = 0;
      
      private var §'!2§:Dictionary;
      
      private var §6"$§:Dictionary;
      
      private var §!!Z§:§^v§ = null;
      
      private var §#8§:Boolean = false;
      
      private var §3"§:Number = 0;
      
      public function §8"!§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
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
            loop0:
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               while(true)
               {
                  §'!Q§.init(§2!z§.§ _§.Views.View_ChapterSelection[0]);
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§+w§();
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§8K§ = null;
         if(!(_loc7_ && _loc3_))
         {
            super.activate();
            if(!_loc7_)
            {
               §,!s§.§=!I§.§!C§(false);
            }
         }
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§=Z§)
         {
            _loc3_ = LevelManager.§!!A§(_loc1_);
            if(!_loc7_)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  while(true)
                  {
                     _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§;C§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc3_);
                     addr170:
                     while(true)
                     {
                     }
                  }
                  addr155:
               }
               loop3:
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     addr125:
                     while(true)
                     {
                        _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§0q§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc3_);
                        addr150:
                        while(true)
                        {
                        }
                     }
                     addr125:
                  }
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(_loc2_.Textfield_Score != null)
                        {
                           if(_loc6_ || this)
                           {
                              if(_loc7_ && _loc1_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4!`§(_loc3_);
                              }
                              else
                              {
                                 §§goto(addr155);
                              }
                           }
                           while(true)
                           {
                              if(_loc6_ || this)
                              {
                                 continue;
                              }
                              §§goto(addr125);
                           }
                           continue loop4;
                           addr112:
                        }
                        while(true)
                        {
                           _loc1_++;
                           if(!(_loc7_ && _loc2_))
                           {
                              if(_loc6_)
                              {
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           §§goto(addr112);
                        }
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr125);
         }
      }
      
      private function §+w§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§8K§ = null;
         var _loc4_:String = null;
         if(_loc6_ || this)
         {
            this.§>!+§ = §'!Q§.getItemByName("Container_ChapterSelection") as §^! §;
         }
         while(true)
         {
            while(true)
            {
               this.§=Z§ = [];
               do
               {
                  this.§]!<§ = [];
               }
               while(!_loc6_);
               
               if(_loc5_ && _loc2_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:Number = 0;
               if(!_loc5_)
               {
                  this.§+R§ = new Sprite();
                  while(true)
                  {
                     this.§+R§.y = AngryBirdsFP11.§2" § / 2;
                     loop4:
                     while(true)
                     {
                        this.§&j§ = AngryBirdsFP11.§!Z§ / 2;
                        while(true)
                        {
                           this.§+R§.x = this.§&j§;
                           addr90:
                           while(!(_loc5_ && _loc2_))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
         }
      }
      
      private function §<O§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc6_ || _loc2_)
         {
            this.§'!2§ = new Dictionary();
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < this.§=Z§.length)
         {
            _loc1_ = §,!j§.§!!N§("Button_Dot");
            _loc2_ = new _loc1_();
            if(!(_loc5_ && _loc2_))
            {
               if(_loc4_ != this.§<!x§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§!Z§ / 2 + _loc3_ - this.§=Z§.length * _loc2_.width / 2;
                        while(true)
                        {
                           _loc2_.y = (§'!Q§.getItemByName("Button_Next") as §[!i§).y - _loc2_.height / 2;
                           loop4:
                           while(_loc6_)
                           {
                              this.§>!+§.mClip.addChild(_loc2_);
                              loop5:
                              while(true)
                              {
                                 _loc2_.buttonMode = true;
                                 while(true)
                                 {
                                    this.§'!2§[_loc2_] = _loc4_;
                                    addr121:
                                    while(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    addr107:
                                    continue loop4;
                                    loop8:
                                    while(_loc6_ || _loc3_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop() + _loc2_.width));
                                       }
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                          addr62:
                                          if(!(_loc6_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          if(true)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
                                             loop11:
                                             while(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   _loc4_++;
                                                   if(!_loc6_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr62);
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr121);
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           addr210:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_.gotoAndStop("Selected");
                  §§goto(addr210);
               }
            }
            §§goto(addr80);
         }
         if(!_loc5_)
         {
            §§push(this.§=Z§.length * _loc2_.width);
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(!_loc5_)
               {
                  §§goto(addr230);
               }
               §§goto(addr242);
            }
            addr230:
            §§push(§§pop() + _loc2_.width * 1.5);
            if(!(_loc5_ && _loc3_))
            {
               addr242:
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            if(_loc6_ || this)
            {
               (§'!Q§.getItemByName("Button_Next") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
               loop17:
               while(true)
               {
                  (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
                  addr322:
                  while(!(_loc6_ || _loc2_))
                  {
                     continue loop17;
                  }
                  (§'!Q§.getItemByName("Button_Next") as §[!i§).x = (§'!Q§.getItemByName("Button_Next") as §[!i§).x + (_loc3_ + 10);
               }
               addr340:
            }
            while(true)
            {
               (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = (§'!Q§.getItemByName("Button_Prev") as §[!i§).x - (_loc3_ + 10);
               if(!(_loc6_ || this))
               {
                  continue;
               }
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr322);
            }
            return;
         }
         §§goto(addr340);
      }
      
      private function §'!Y§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§8K§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc7_ && param1))
         {
            if(§,!j§.§@!o§(param1))
            {
               addr37:
               _loc4_ = LevelManager.§!!A§(param3);
               (_loc6_ = new (_loc5_ = §,!j§.§!!N§(param1))()).x = param2;
               if(!(_loc7_ && param3))
               {
                  this.§+R§.addChild(_loc6_);
                  while(true)
                  {
                     this.§=Z§.push(_loc6_);
                     while(!_loc7_)
                     {
                        addr78:
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§;C§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc4_);
                        addr100:
                        if(!(_loc7_ && this))
                        {
                           if(!(_loc7_ && this))
                           {
                              addr124:
                              if(!_loc7_)
                              {
                                 if(false)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc6_.Textfield_Score != null)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4!`§(_loc4_);
                                                loop11:
                                                while(true)
                                                {
                                                   addr62:
                                                   addr227:
                                                   while(true)
                                                   {
                                                      if(_loc6_.Textfield_ME_Score == null)
                                                      {
                                                         §§goto(addr241);
                                                      }
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§6"$§[_loc6_] = param3;
                                                      addr193:
                                                      while(true)
                                                      {
                                                         _loc6_.addEventListener(MouseEvent.CLICK,this.§3W§);
                                                         break loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             addr154:
                                             while(true)
                                             {
                                                _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§0q§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc4_);
                                                break loop10;
                                             }
                                          }
                                          while(!_loc7_)
                                          {
                                             if(_loc8_)
                                             {
                                                continue loop9;
                                             }
                                             §§goto(addr193);
                                          }
                                          while(true)
                                          {
                                             if(_loc6_.Textfield_CollectedStars == null)
                                             {
                                                continue loop9;
                                             }
                                             §§goto(addr154);
                                          }
                                          addr178:
                                          addr169:
                                          addr133:
                                       }
                                       §§goto(addr62);
                                    }
                                    while(true)
                                    {
                                       _loc6_.buttonMode = true;
                                       §§goto(addr178);
                                    }
                                    addr186:
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr133);
                     }
                  }
               }
               while(true)
               {
                  §§push(param2);
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop() + _loc6_.width * 1.55);
                     if(!(_loc7_ && param1))
                     {
                        addr225:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     §§goto(addr227);
                  }
                  §§goto(addr225);
               }
            }
            addr241:
            return param2;
         }
         §§goto(addr37);
      }
      
      private function §]!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§#8§)
            {
               if(_loc2_ || param1)
               {
                  this.§>d§(this.§'!2§[param1.target]);
               }
            }
         }
      }
      
      private function §3W§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§#8§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     addr43:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc3_ && _loc2_)
                     {
                     }
                     §§goto(addr76);
                  }
                  _loc2_ = MovieClip(param1.currentTarget);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr76:
                     if(this.§<!x§ != this.§6"$§[_loc2_])
                     {
                        if(_loc4_ || param1)
                        {
                           this.§>d§(this.§6"$§[_loc2_]);
                           if(_loc3_ && _loc3_)
                           {
                              addr123:
                              LevelManager.§`^§ = this.§6"$§[_loc2_];
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr136:
                                 mNextState = §2!=§.§'!q§;
                              }
                           }
                        }
                     }
                     else if(this.§6"$§[_loc2_] < LevelManager.§%!1§())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr123);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr140);
                  }
               }
               addr140:
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr76);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §9![§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr112);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr113:
                  }
               }
               loop1:
               while(true)
               {
                  this.§>R§();
                  while(true)
                  {
                     this.§ Z§();
                     loop3:
                     while(!_loc3_)
                     {
                        while(mNextState.length > 0)
                        {
                           if(_loc4_ || this)
                           {
                              return §9![§.STATE_STATUS_COMPLETED;
                           }
                           if(_loc3_ && param1)
                           {
                              continue loop3;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§goto(addr37);
                           continue loop3;
                        }
                        return §9![§.STATE_STATUS_RUNNING;
                     }
                  }
               }
            }
            addr112:
            return _loc2_;
         }
         §§goto(addr93);
      }
      
      private function § Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§=Z§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop3:
                                    for(; !(_loc3_ && _loc3_); if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    },_loc2_ = §§pop())
                                    {
                                       if(_loc4_ || this)
                                       {
                                          §§push(§§pop() * 0.55);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop5:
                                             while(_loc4_)
                                             {
                                                _loc2_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(§§pop() > 1000)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(1000);
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr193:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            addr192:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr203:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§=Z§);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                               addr170:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=Z§);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     addr137:
                                                                     while(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                                        continue loop6;
                                                                     }
                                                                     continue loop11;
                                                                     addr68:
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr75:
                                                                     §§push(_loc1_);
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                                           addr130:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(this.§=Z§);
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr68);
                                                                           }
                                                                           §§goto(addr75);
                                                                        }
                                                                        addr111:
                                                                     }
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                        while(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(Math.abs(_loc2_)));
                                                                              break loop5;
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                        addr97:
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr193);
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             break loop3;
                                          }
                                          addr260:
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr262);
                                    }
                                 }
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr97);
                  }
                  continue;
               }
               §§push(this.§+R§.x + this.§=Z§[_loc1_].x - AngryBirdsFP11.§!Z§ / 2);
               §§goto(addr260);
            }
            §§goto(addr192);
         }
      }
      
      private function §>R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(this.§]!<§);
               if(_loc4_ || this)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 this.§3"§ = this.§+R§.x;
                                 addr59:
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    loop31:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          _loc2_++;
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr76:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(this.§]!<§);
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() >= §§pop().length)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(this.§]!<§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc1_++;
                                                                                                addr71:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         addr280:
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§]!<§);
                                                                                                            addr282:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop().length)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§]!<§);
                                                                                                                     addr286:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           while(_loc4_)
                                                                                                                           {
                                                                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(-this.§+R§.x);
                                                                                                                                    loop13:
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(800);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop14:
                                                                                                                                          for(; !(_loc3_ && _loc1_); while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§3"§);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                             if(!(_loc4_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             if(_loc3_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr163);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(800);
                                                                                                                                                }
                                                                                                                                                addr367:
                                                                                                                                             }
                                                                                                                                          },§§goto(addr371))
                                                                                                                                          {
                                                                                                                                             §§push(this.§=Z§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   while(_loc4_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(_loc4_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop14;
                                                                                                                                                                     addr192:
                                                                                                                                                                     §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                     if(!(_loc4_ || _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                 addr208:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr358:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    addr359:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop11;
                                                                                                                                                                           addr204:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop26;
                                                                                                                                                                        §§goto(addr192);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop26;
                                                                                                                                                                     addr202:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr378:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3"§);
                                                                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           break loop13;
                                                                                                                                                                        }
                                                                                                                                                                        break loop13;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr377:
                                                                                                                                                                  addr269:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr202);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr377);
                                                                                                                                                               }
                                                                                                                                                               addr356:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr358);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr376:
                                                                                                                                                         }
                                                                                                                                                         addr354:
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr376);
                                                                                                                                                            }
                                                                                                                                                            addr375:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr356);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr269);
                                                                                                                                                   }
                                                                                                                                                   addr351:
                                                                                                                                                   §§goto(addr354);
                                                                                                                                                   §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                   addr241:
                                                                                                                                                }
                                                                                                                                                §§push(this.§=Z§);
                                                                                                                                                addr163:
                                                                                                                                                break;
                                                                                                                                                if(_loc3_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr192);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr372:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr241);
                                                                                                                                                }
                                                                                                                                                §§goto(addr375);
                                                                                                                                             }
                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr351);
                                                                                                                                                §§push(_loc1_);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr372);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr371);
                                                                                                                                          }
                                                                                                                                          addr369:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr369);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr371);
                                                                                                                                    }
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr294:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr315:
                                                                                                                           §§push(_loc2_);
                                                                                                                        }
                                                                                                                        addr316:
                                                                                                                        addr319:
                                                                                                                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_++;
                                                                                                                           addr302:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§goto(addr378);
                                                                                                                           }
                                                                                                                           §§goto(addr316);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr284:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.§]!<§);
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       addr112:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                             continue loop31;
                                                                                          }
                                                                                       }
                                                                                       addr133:
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§goto(addr133);
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                    }
                                                                                    addr125:
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        addr98:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§]!<§);
                                                                     }
                                                                     §§goto(addr125);
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               addr94:
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                }
                                             }
                                             §§goto(addr319);
                                             §§goto(addr140);
                                          }
                                          addr140:
                                          addr117:
                                       }
                                       §§goto(addr302);
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr59);
                  }
                  else
                  {
                     §§push(-this.§+R§.x);
                  }
                  §§goto(addr367);
               }
               §§goto(addr94);
            }
            §§goto(addr76);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            do
            {
               §,!s§.§=!I§.clearLevel();
               do
               {
                  (§'!Q§.getItemByName("Button_Back") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc7_ && param1))
         {
            §§push("BACK");
            if(_loc6_ || this)
            {
               §§push(_loc4_);
               if(_loc6_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc7_ && this)
                        {
                           addr249:
                        }
                     }
                     else
                     {
                        addr279:
                        §§push(2);
                        if(!(_loc7_ && param1))
                        {
                           addr287:
                        }
                        else
                        {
                           addr294:
                        }
                     }
                  }
                  else
                  {
                     §§push("PREV");
                     if(_loc6_ || param2)
                     {
                        addr230:
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§goto(addr249);
                                 }
                                 else
                                 {
                                    §§goto(addr287);
                                 }
                              }
                              else
                              {
                                 addr291:
                                 §§push(3);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr294);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr299);
                           }
                           else
                           {
                              §§push("NEXT");
                              if(_loc6_ || param1)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr279);
                                       }
                                       else
                                       {
                                          §§goto(addr291);
                                       }
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                    }
                                    §§goto(addr291);
                                 }
                                 addr290:
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr291);
                                 }
                                 else
                                 {
                                    addr299:
                                    loop2:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §-!Q§.§#3§("Menu_Back");
                                          loop0:
                                          while(true)
                                          {
                                             addr32:
                                             while(true)
                                             {
                                                mNextState = §&i§.§'!q§;
                                                if(!_loc6_)
                                                {
                                                   this.§>d§(this.§<!x§);
                                                   if(!_loc7_)
                                                   {
                                                      addr98:
                                                      break loop2;
                                                   }
                                                   addr181:
                                                   addr163:
                                                }
                                                else
                                                {
                                                   addr92:
                                                }
                                                continue loop0;
                                             }
                                          }
                                          break;
                                       case 1:
                                          §-!Q§.§#3§("Menu_Confirm");
                                          if(_loc6_ || param2)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr32);
                                             }
                                             else
                                             {
                                                §§push(this.§#8§);
                                                if(!(_loc7_ && param3))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push((_loc4_ = this).§<!x§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc5_:* = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            _loc4_.§<!x§ = _loc5_;
                                                         }
                                                         if(_loc6_ || param3)
                                                         {
                                                            §§goto(addr92);
                                                         }
                                                         else
                                                         {
                                                            AngryBirdsFP11.§'!g§.§]8§();
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr161:
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr181);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            break;
                                                            addr176:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr115:
                                                         §§push((_loc4_ = this).§<!x§);
                                                         if(_loc6_ || param3)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            _loc4_.§<!x§ = _loc5_;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            this.§>d§(this.§<!x§);
                                                            §§goto(addr181);
                                                            addr147:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr161);
                                                         }
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr98);
                                                }
                                                else
                                                {
                                                   addr107:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                }
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr161);
                                       case 2:
                                          §-!Q§.§#3§("Menu_Confirm");
                                          if(!_loc7_)
                                          {
                                             §§goto(addr107);
                                             §§push(this.§#8§);
                                          }
                                          §§goto(addr115);
                                       case 3:
                                          §-!Q§.§#3§("Menu_Confirm");
                                          if(!(_loc7_ && param2))
                                          {
                                             §§goto(addr176);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr299);
                              }
                           }
                           §§goto(addr291);
                        }
                     }
                     §§goto(addr290);
                     §§push(_loc4_);
                  }
                  §§goto(addr299);
               }
               §§goto(addr290);
            }
            §§goto(addr230);
         }
         §§goto(addr291);
      }
      
      private function §>d§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§#8§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               for(; §§pop() <= this.§=Z§.length - 1; if(_loc5_ && _loc2_)
               {
                  continue;
               },if(§§pop() < 0)
               {
                  if(_loc6_)
                  {
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr62);
                     §§push(0);
                  }
                  §§goto(addr63);
               },§§goto(addr25))
               {
                  §§push(param1);
                  if(_loc6_ || _loc2_)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr85:
                     param1 = §§pop();
                     continue loop0;
                  }
                  addr62:
                  addr63:
                  param1 = §§pop();
                  loop3:
                  while(true)
                  {
                     addr25:
                     while(true)
                     {
                        this.§<!x§ = param1;
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               §§push(this.§=Z§);
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
               §§push(§§pop().length - 1);
               if(_loc6_)
               {
                  §§goto(addr85);
                  §§push(int(§§pop()));
               }
               else
               {
                  addr112:
                  var _loc2_:* = §§pop();
                  §§push(this.§+R§.x - _loc2_);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:*;
                  §§push(_loc4_ = Number(Math.abs(_loc3_)));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(400);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc6_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && _loc3_))
                           {
                              addr164:
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || this)
                                 {
                                    §§push(§`!?§);
                                    if(_loc6_ || this)
                                    {
                                       addr183:
                                       §§push(§§pop() * §§pop());
                                       if(_loc6_)
                                       {
                                          addr186:
                                          §§push(Number(§§pop()));
                                          if(!_loc5_)
                                          {
                                             addr190:
                                             §§push(_loc4_ = §§pop());
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr198:
                                                if(§§pop() > 1)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr209:
                                                      _loc4_ = Number(1);
                                                      if(!_loc5_)
                                                      {
                                                         addr287:
                                                         §§push(this.§!!Z§);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(this.§!!Z§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().stop();
                                                                     addr301:
                                                                     addr248:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     loop9:
                                                                     while(_loc6_ || param1)
                                                                     {
                                                                        §§pop().onComplete = this.§<T§;
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§!!Z§);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§!!Z§ = §`!G§.§[U§.§-]§(this.§+R§,{"x":_loc2_},null,_loc4_,§`!G§.§-!%§);
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr248);
                                                                     §§push(this.§!!Z§);
                                                                  }
                                                                  break;
                                                                  addr237:
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr212:
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr287);
                                             }
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr164);
               }
            }
            addr100:
            §§push(-§§pop()[param1].x);
            if(_loc6_)
            {
               §§push(§§pop() + this.§&j§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr112);
         }
         while(false)
         {
            §§goto(addr33);
         }
         §§goto(addr100);
         §§push(this.§=Z§);
      }
      
      private function §<T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§]!<§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           this.§#8§ = false;
                           addr60:
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr111:
                              this.§]!<§[_loc1_].gotoAndStop("Selected");
                              addr108:
                           }
                        }
                        else
                        {
                           addr101:
                        }
                        addr70:
                        _loc1_++;
                     }
                     continue;
                  }
                  §§goto(addr60);
               }
               else
               {
                  addr105:
                  if(_loc1_ == this.§<!x§)
                  {
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(this.§]!<§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr101);
                        }
                        else
                        {
                           §§goto(addr111);
                        }
                     }
                     else
                     {
                        §§goto(addr111);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr105);
         }
      }
   }
}
