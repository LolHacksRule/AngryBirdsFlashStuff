package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §2u§ extends §'B§
   {
      
      public static const §%!Q§:String = "ChapterSelectionState";
      
      private static const §#!4§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!Q§ = "ChapterSelectionState";
         }
         do
         {
            §#!4§ = 0.5;
         }
         while(!_loc2_);
         
      }
      
      private var §>o§:Sprite;
      
      private var §7"%§:§6W§;
      
      private var §6!E§:Array;
      
      private var §82§:Array;
      
      private var §9u§:int = 0;
      
      private var §7!"§:Number = 0;
      
      private var §5!R§:Number = 0;
      
      private var §,"8§:Dictionary;
      
      private var §6!=§:Dictionary;
      
      private var § ![§:§=!r§ = null;
      
      private var §3";§:Boolean = false;
      
      private var §1j§:Number = 0;
      
      public function §2u§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         loop0:
         do
         {
            §`!v§ = new §>!V§(this);
            while(true)
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_ChapterSelection[0]);
               while(!(_loc1_ && this))
               {
                  this.§+!C§();
                  if(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§3!l§ = null;
         if(!_loc6_)
         {
            super.activate();
            if(_loc7_)
            {
               §'_§.§=M§.§'"@§(false);
            }
         }
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§6!E§)
         {
            _loc3_ = §`!r§.§]-§(_loc1_);
            if(_loc7_ || this)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>!7§.§3k§(_loc3_) + "/" + AngryBirdsFP11.§>!7§.§?!Y§(_loc3_);
                     addr166:
                     while(true)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc6_ && _loc1_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           loop6:
                           do
                           {
                              if(_loc2_.Textfield_Score != null)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc7_ || _loc1_)
                                    {
                                       _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§>!7§.§[!i§(_loc3_);
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop7;
                                          }
                                          addr61:
                                          while(true)
                                          {
                                             _loc1_++;
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>!7§.§ 8§(_loc3_) + "/" + AngryBirdsFP11.§>!7§.§7!z§(_loc3_);
                                       break loop7;
                                    }
                                 }
                                 continue loop4;
                              }
                              §§goto(addr61);
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                     §§goto(addr166);
                  }
               }
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     §§goto(addr114);
                  }
                  §§goto(addr86);
                  §§goto(addr166);
               }
            }
            §§goto(addr166);
         }
      }
      
      private function §+!C§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3!l§ = null;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            this.§7"%§ = §`!v§.getItemByName("Container_ChapterSelection") as §6W§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§6!E§ = [];
                  do
                  {
                     this.§82§ = [];
                  }
                  while(_loc6_);
                  
                  if(!(_loc5_ || this))
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:Number = 0;
                  if(!(_loc6_ && this))
                  {
                     this.§>o§ = new Sprite();
                     loop4:
                     while(true)
                     {
                        this.§>o§.y = AngryBirdsFP11.§+#§ / 2;
                        addr142:
                        while(true)
                        {
                           this.§7!"§ = AngryBirdsFP11.§6j§ / 2;
                           continue loop4;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr92);
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      private function §0!w§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = Number(0);
         if(_loc5_ || _loc1_)
         {
            this.§,"8§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!E§.length)
         {
            _loc1_ = §69§.§ 0§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc5_ || _loc3_)
            {
               if(_loc4_ != this.§9u§)
               {
                  _loc2_.gotoAndStop("UnSelected");
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.x = AngryBirdsFP11.§6j§ / 2 + _loc3_ - this.§6!E§.length * _loc2_.width / 2;
                        while(true)
                        {
                           _loc2_.y = (§`!v§.getItemByName("Button_Next") as §9"8§).y - _loc2_.height / 2;
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 this.§7"%§.mClip.addChild(_loc2_);
                                 continue;
                              }
                           }
                           addr209:
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
                  §§goto(addr209);
               }
            }
            §§goto(addr129);
         }
         if(_loc5_ || this)
         {
            §§push(this.§6!E§.length * _loc2_.width);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() / 2);
               if(!_loc6_)
               {
                  addr239:
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc5_ || _loc2_)
                  {
                     addr251:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc5_ || _loc1_)
                  {
                     (§`!v§.getItemByName("Button_Next") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
                  }
                  loop14:
                  while(true)
                  {
                     (§`!v§.getItemByName("Button_Prev") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
                     while(true)
                     {
                        (§`!v§.getItemByName("Button_Next") as §9"8§).x = (§`!v§.getItemByName("Button_Next") as §9"8§).x + (_loc3_ + 10);
                        loop16:
                        while(!(_loc6_ && _loc1_))
                        {
                           continue loop14;
                           while(true)
                           {
                              (§`!v§.getItemByName("Button_Prev") as §9"8§).x = (§`!v§.getItemByName("Button_Prev") as §9"8§).x - (_loc3_ + 10);
                              if(!(_loc6_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop16;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr251);
            }
            §§goto(addr239);
         }
         §§goto(addr321);
      }
      
      private function §[!D§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§3!l§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(!(_loc8_ && param2))
         {
            if(§69§.§?"5§(param1))
            {
               addr36:
               _loc4_ = §`!r§.§]-§(param3);
               (_loc6_ = new (_loc5_ = §69§.§ 0§(param1))()).x = param2;
               if(!(_loc8_ && this))
               {
                  this.§>o§.addChild(_loc6_);
                  loop0:
                  while(true)
                  {
                     this.§6!E§.push(_loc6_);
                     while(true)
                     {
                        §§push(param2);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + _loc6_.width * 1.55);
                           if(!_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        while(!(_loc8_ && param3))
                        {
                           this.§6!=§[_loc6_] = param3;
                           while(!_loc8_)
                           {
                              _loc6_.addEventListener(MouseEvent.CLICK,this.§=!B§);
                              while(_loc7_ || param2)
                              {
                                 _loc6_.buttonMode = true;
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc6_.Textfield_CollectedStars != null)
                                    {
                                       continue;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_.Textfield_Score != null)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§>!7§.§[!i§(_loc4_);
                                             addr119:
                                             addr163:
                                             while(true)
                                             {
                                                if(_loc8_ && param2)
                                                {
                                                   continue loop5;
                                                }
                                                addr66:
                                                if(_loc7_)
                                                {
                                                   _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>!7§.§3k§(_loc4_) + "/" + AngryBirdsFP11.§>!7§.§?!Y§(_loc4_);
                                                }
                                                if(_loc8_ && param2)
                                                {
                                                   continue;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      return param2;
                                                   }
                                                   addr235:
                                                   addr235:
                                                   continue loop8;
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                       while(_loc6_.Textfield_ME_Score != null)
                                       {
                                          §§goto(addr66);
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                                 if(_loc8_ && param3)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>!7§.§ 8§(_loc4_) + "/" + AngryBirdsFP11.§>!7§.§7!z§(_loc4_);
                                 §§goto(addr163);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr235);
         }
         §§goto(addr36);
      }
      
      private function §[!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.§3";§)
            {
               if(!(_loc3_ && this))
               {
                  addr53:
                  this.§%!&§(this.§,"8§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §=!B§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§3";§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     if(!(param1.currentTarget is MovieClip))
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        addr41:
                        _loc2_ = MovieClip(param1.currentTarget);
                        if(_loc4_)
                        {
                           addr51:
                           if(this.§9u§ != this.§6!=§[_loc2_])
                           {
                              if(_loc4_ || param1)
                              {
                                 this.§%!&§(this.§6!=§[_loc2_]);
                                 if(_loc3_ && _loc3_)
                                 {
                                    addr126:
                                    mNextState = §1!i§.§%!Q§;
                                    §§goto(addr130);
                                 }
                                 addr130:
                                 return;
                              }
                              addr103:
                              §`!r§.§^0§ = this.§6!=§[_loc2_];
                              if(_loc3_ && this)
                              {
                              }
                              §§goto(addr126);
                           }
                           else if(this.§6!=§[_loc2_] < §`!r§.§1!o§())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr103);
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr41);
               }
               §§goto(addr126);
            }
         }
         §§goto(addr38);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr96);
                  }
                  else
                  {
                     while(true)
                     {
                        addr51:
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr58);
                     }
                     addr97:
                  }
               }
               while(true)
               {
                  this.§1!d§();
                  addr71:
                  loop2:
                  while(true)
                  {
                     this.§6+§();
                     while(mNextState.length > 0)
                     {
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr51);
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return §'B§.STATE_STATUS_RUNNING;
                  }
                  addr58:
                  return §'B§.STATE_STATUS_COMPLETED;
                  §§goto(addr97);
               }
            }
            addr96:
            return _loc2_;
         }
         §§goto(addr71);
      }
      
      private function §6+§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(§§pop() >= this.§6!E§.length)
               {
                  if(_loc4_ || this)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc4_ || _loc1_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(this.§6!E§);
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc4_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      _loc1_++;
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     if(§§pop() > 1000)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(1000);
                                                                           addr180:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr181:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    addr188:
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr211:
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                continue loop17;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                addr226:
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc4_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() * 0.55);
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr262:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc2_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       addr156:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6!E§);
                                                                                          addr159:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             addr160:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                                                                addr167:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§6!E§);
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      addr148:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                                                                         addr155:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6!E§);
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr191:
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr179:
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      continue loop0;
                                                      addr56:
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr226);
                                             }
                                             addr94:
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr56);
               }
               else
               {
                  §§push(this.§>o§.x + this.§6!E§[_loc1_].x - AngryBirdsFP11.§6j§ / 2);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr261);
            }
            §§goto(addr180);
         }
      }
      
      private function §1!d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  §§push(this.§82§);
                  if(_loc4_ || _loc1_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.§1j§ = this.§>o§.x;
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(this.§1j§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr183:
                                          §§push(-§§pop());
                                          §§push(this.§6!E§);
                                          if(_loc4_ || this)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() > §§pop()[§§pop()].x);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop3:
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(0);
                                                                  loop4:
                                                                  while(!(_loc3_ && this))
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr100:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§push(this.§82§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       loop40:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(this.§82§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr140:
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr369:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr370:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop32:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           break loop4;
                                                                                                                           addr331:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                              addr348:
                                                                                                                              _loc2_++;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc1_++;
                                                                                                               addr67:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr143:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr136);
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            addr136:
                                                                                                            addr65:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                         }
                                                                                                         addr338:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                         addr328:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-this.§>o§.x);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(800);
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr261:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        loop2:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§6!E§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    addr278:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               break loop2;
                                                                                                                                                            }
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr396:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr398:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§1j§);
                                                                                                                                                                           addr352:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              addr353:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§6!E§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                       addr363:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr362:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(800);
                                                                                                                                                                                       addr378:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          addr379:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§6!E§);
                                                                                                                                                                                             addr391:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                addr392:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr377:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr397:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr367:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop29;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr368);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop29;
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr397);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr367);
                                                                                                                                                   }
                                                                                                                                                   addr291:
                                                                                                                                                }
                                                                                                                                                §§goto(addr396);
                                                                                                                                             }
                                                                                                                                             §§goto(addr291);
                                                                                                                                          }
                                                                                                                                          §§goto(addr392);
                                                                                                                                       }
                                                                                                                                       §§goto(addr363);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr277:
                                                                                                                              }
                                                                                                                              §§goto(addr352);
                                                                                                                           }
                                                                                                                           §§goto(addr353);
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                        addr261:
                                                                                                                     }
                                                                                                                     §§goto(addr378);
                                                                                                                  }
                                                                                                                  §§goto(addr379);
                                                                                                               }
                                                                                                               §§goto(addr261);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr325:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                         addr162:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               _loc2_++;
                                                                                                               §§goto(addr143);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr159:
                                                                                                   }
                                                                                                   while(!(_loc4_ || this))
                                                                                                   {
                                                                                                      §§goto(addr398);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                                addr337:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr159);
                                                                                                      §§push(_loc2_);
                                                                                                   }
                                                                                                   addr324:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr156:
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                          §§goto(addr162);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§82§);
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 addr320:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                    §§push(this.§82§);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr320);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr324);
                                                               }
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr391);
                                             }
                                             §§goto(addr362);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr328);
                              }
                           }
                           §§goto(addr67);
                        }
                        break;
                     }
                     §§push(-this.§>o§.x);
                     §§goto(addr377);
                  }
                  §§goto(addr104);
               }
               §§goto(addr369);
            }
            §§goto(addr100);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            while(true)
            {
               §'_§.§=M§.clearLevel();
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            (§`!v§.getItemByName("Button_Back") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc7_)
         {
            if("BACK" !== _loc4_)
            {
               if("PREV" === _loc4_)
               {
                  if(_loc7_ || param1)
                  {
                     §§push(1);
                     if(!_loc7_)
                     {
                     }
                  }
                  else
                  {
                     addr238:
                     §§push(2);
                     if(!(_loc6_ && param3))
                     {
                        §§goto(addr246);
                     }
                  }
               }
               else
               {
                  if("NEXT" === _loc4_)
                  {
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr238);
                     }
                     else
                     {
                        §§goto(addr250);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr250);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr250);
               }
               addr268:
               loop1:
               switch(§§pop())
               {
                  case 0:
                     §0"#§.§9"2§("Menu_Back");
                     if(!_loc6_)
                     {
                        addr33:
                        mNextState = §7!X§.§%!Q§;
                        if(_loc7_ || param1)
                        {
                           break;
                        }
                        addr114:
                        break;
                     }
                     while(true)
                     {
                        AngryBirdsFP11.§@"7§.§>!5§();
                        if(_loc6_)
                        {
                           break loop1;
                        }
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              addr179:
                              if(true)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              addr192:
                           }
                           addr182:
                           break loop1;
                           addr181:
                        }
                     }
                     break;
                     addr187:
                     break;
                  case 1:
                     §0"#§.§9"2§("Menu_Confirm");
                     if(_loc7_ || this)
                     {
                        if(false)
                        {
                           §§goto(addr33);
                        }
                        else
                        {
                           §§push(this.§3";§);
                           if(!(_loc6_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || param2)
                                 {
                                    addr71:
                                    §§push((_loc4_ = this).§9u§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc7_ || param3)
                                    {
                                       _loc4_.§9u§ = _loc5_;
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       this.§%!&§(this.§9u§);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§goto(addr114);
                                       }
                                       else
                                       {
                                          addr138:
                                          if(!this.§3";§)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                addr146:
                                                §§push((_loc4_ = this).§9u§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc7_)
                                                {
                                                   _loc4_.§9u§ = _loc5_;
                                                }
                                                if(_loc7_)
                                                {
                                                   this.§%!&§(this.§9u§);
                                                   addr168:
                                                   §§goto(addr192);
                                                   addr168:
                                                }
                                                else
                                                {
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr71);
                  case 2:
                     §0"#§.§9"2§("Menu_Confirm");
                     if(_loc7_ || this)
                     {
                        §§goto(addr138);
                     }
                     §§goto(addr168);
                  case 3:
                     §0"#§.§9"2§("Menu_Confirm");
                     §§goto(addr187);
               }
               return;
            }
            if(!_loc6_)
            {
               §§push(0);
               if(_loc6_ && this)
               {
                  addr246:
               }
            }
            else
            {
               addr250:
               §§push(3);
               if(!_loc7_)
               {
               }
            }
            §§goto(addr268);
            §§goto(addr250);
         }
         §§goto(addr238);
      }
      
      private function §%!&§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            this.§3";§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() <= this.§6!E§.length - 1)
                  {
                     §§push(param1);
                     if(_loc6_ || param1)
                     {
                        if(_loc6_)
                        {
                           if(§§pop() < 0)
                           {
                              loop1:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(0);
                                       addr65:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                addr25:
                                                while(true)
                                                {
                                                   this.§9u§ = param1;
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop0;
                                                addr25:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§6!E§);
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§push(§§pop().length - 1);
                                                   if(!_loc5_)
                                                   {
                                                      addr97:
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                      }
                                                      addr97:
                                                   }
                                                   else
                                                   {
                                                      addr122:
                                                      var _loc2_:* = §§pop();
                                                      §§push(this.§>o§.x - _loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      var _loc4_:*;
                                                      §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(400);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§#!4§);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr183:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              addr191:
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr194:
                                                                                 §§push(_loc4_ = §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr198:
                                                                                    if(§§pop() > 1)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr204:
                                                                                          _loc4_ = Number(1);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             addr272:
                                                                                             §§push(this.§ ![§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(§§pop() != null)
                                                                                                {
                                                                                                   addr290:
                                                                                                   this.§ ![§.stop();
                                                                                                   addr288:
                                                                                                }
                                                                                                this.§ ![§ = §7I§.§[E§.§ ";§(this.§>o§,{"x":_loc2_},null,_loc4_,§7I§.§7L§);
                                                                                                addr252:
                                                                                                this.§ ![§.onComplete = this.§%!Z§;
                                                                                                addr271:
                                                                                                addr255:
                                                                                                §§push(this.§ ![§);
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§pop().play();
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               if(!(_loc6_ || this))
                                                                                                               {
                                                                                                                  §§goto(addr288);
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr288);
                                                                                                         }
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      §§goto(addr255);
                                                                                                   }
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                §§goto(addr252);
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr252);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                              §§goto(addr198);
                                                                           }
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                }
                                                addr83:
                                             }
                                             §§goto(addr25);
                                          }
                                          addr105:
                                          §§push(-§§pop()[param1].x);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + this.§7!"§);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr121:
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr121);
                                       }
                                    }
                                    addr64:
                                 }
                                 while(true)
                                 {
                                    addr47:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr83);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr64);
      }
      
      private function §%!Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§82§.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§3";§ = false;
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        addr67:
                        addr117:
                        loop2:
                        while(true)
                        {
                           _loc1_++;
                           addr97:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        addr117:
                        while(true)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        addr114:
                        while(true)
                        {
                           §§push(this.§82§);
                           addr116:
                           while(true)
                           {
                              §§goto(addr117);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr97);
                     }
                     §§goto(addr67);
                  }
                  continue;
               }
               addr101:
               if(_loc1_ != this.§9u§)
               {
                  §§push(this.§82§);
                  if(!_loc2_)
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr97);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr116);
               }
               §§goto(addr114);
            }
            §§goto(addr101);
         }
      }
   }
}
