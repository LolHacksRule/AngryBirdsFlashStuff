package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'!W§.§=!'§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §7X§
   {
      
      public static const §8"%§:String = "ChapterSelectionState";
      
      protected static const §+"0§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §8"%§ = "ChapterSelectionState";
         }
         do
         {
            §+"0§ = 0.5;
         }
         while(_loc1_);
         
      }
      
      protected var §^L§:Sprite;
      
      protected var §@#§:§,6§;
      
      protected var §[",§:Array;
      
      protected var §^"%§:Array;
      
      protected var §-""§:int = 0;
      
      protected var §'X§:Number = 0;
      
      protected var §?! §:Number = 0;
      
      protected var §,!i§:§]W§ = null;
      
      protected var §!;§:Boolean = false;
      
      protected var §?!C§:Number = 0;
      
      public function StateEpisodeSelection(param1:§0![§, param2:§+f§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
               while(_loc2_ || this)
               {
                  §^!T§.init(§7I§.§7!%§.Views.View_ChapterSelection[0]);
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§2!b§();
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            while(true)
            {
               §@!S§.§2A§.§`!V§(false);
               while(!_loc2_)
               {
                  this.§<!w§();
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §<!w§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§7C§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§[",§)
         {
            _loc3_ = §4a§.getEpisode(_loc1_);
            if(_loc6_)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  if(!(_loc7_ && _loc1_))
                  {
                     _loc2_.Textfield_ME_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§+w§(_loc3_) + "/" + § !4§.§%"7§.§@D§.userProgress.§#D§(_loc3_);
                     addr136:
                  }
                  while(true)
                  {
                  }
                  addr165:
               }
               loop2:
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     while(true)
                     {
                        _loc2_.Textfield_CollectedStars.text.text = § !4§.§%"7§.§@D§.userProgress.§1!L§(_loc3_) + "/" + § !4§.§%"7§.§@D§.userProgress.§"!N§(_loc3_);
                        addr124:
                        while(true)
                        {
                        }
                     }
                     addr105:
                  }
                  loop5:
                  while(true)
                  {
                     if(_loc2_.Textfield_Score != null)
                     {
                        while(true)
                        {
                           _loc2_.Textfield_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§;l§(_loc3_);
                           addr99:
                           while(true)
                           {
                           }
                           addr54:
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                           addr61:
                           if(_loc6_ || _loc1_)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr124);
                        }
                     }
                     while(true)
                     {
                        _loc1_++;
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr61);
                  }
                  continue loop0;
               }
            }
            §§goto(addr136);
         }
      }
      
      protected function §2!b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7C§ = null;
         if(!(_loc4_ && this))
         {
            this.§@#§ = §^!T§.getItemByName("Container_ChapterSelection") as §,6§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§[",§ = [];
                  do
                  {
                     this.§^"%§ = [];
                  }
                  while(_loc4_);
                  
                  if(!_loc5_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:* = Number(0);
                  if(_loc5_ || _loc1_)
                  {
                     this.§^L§ = new Sprite();
                  }
                  while(true)
                  {
                     this.§^L§.y = § !4§.§,n§ / 2;
                     loop5:
                     while(true)
                     {
                        this.§'X§ = § !4§.§&v§ / 2;
                        while(true)
                        {
                           addr104:
                           while(true)
                           {
                              this.§^L§.x = this.§'X§;
                              do
                              {
                                 this.§@#§.mClip.addChild(this.§^L§);
                              }
                              while(_loc4_ && _loc3_);
                              
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                        }
                     }
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr104);
                     }
                     var _loc2_:int = 0;
                     addr172:
                     if(_loc2_ < §4a§.getEpisodeCount())
                     {
                        _loc3_ = §4a§.getEpisode(_loc2_);
                        if(_loc5_)
                        {
                           if(!_loc3_.§%!u§)
                           {
                              if(!_loc4_)
                              {
                                 addr149:
                                 §§push(this.§[%§(_loc3_.menuImage,_loc1_,_loc3_));
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc1_ = §§pop();
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    addr171:
                                    _loc2_++;
                                 }
                                 §§goto(addr172);
                              }
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr149);
                     }
                     if(_loc5_ || this)
                     {
                        this.§7!j§(_loc1_);
                        if(!(_loc4_ && _loc1_))
                        {
                           addr203:
                           this.§>"'§();
                        }
                        return;
                     }
                     §§goto(addr203);
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      protected function §7!j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[%§("MovieClip_Chapter_Selection_More_Coming",param1));
            if(!_loc2_)
            {
               §§push(Number(§§pop()));
            }
            loop0:
            while(true)
            {
               param1 = §§pop();
               do
               {
                  §§push(this.§[%§("MovieClip_Chapter_Selection_Shop",param1));
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(Number(§§pop()));
                  }
                  param1 = §§pop();
               }
               while(!(_loc3_ || _loc3_));
               
            }
         }
      }
      
      protected function §>"'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         while(_loc2_ < this.§[",§.length)
         {
            _loc3_ = new §=!V§.§?!O§("Button_Dot")();
            if(!_loc5_)
            {
               if(_loc2_ != this.§-""§)
               {
                  _loc3_.gotoAndStop("UnSelected");
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc3_.x = § !4§.§&v§ / 2 + _loc1_ - this.§[",§.length * _loc3_.width / 2;
                        loop3:
                        while(true)
                        {
                           _loc3_.y = (§^!T§.getItemByName("Button_Next") as §]"%§).y - _loc3_.height / 2;
                           loop4:
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop3;
                              }
                              this.§@#§.mClip.addChild(_loc3_);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 _loc3_.buttonMode = true;
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§^"%§.push(_loc3_);
                                       continue loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           addr165:
                           while(true)
                           {
                              _loc3_.gotoAndStop("Selected");
                              §§goto(addr168);
                           }
                        }
                     }
                  }
               }
               §§goto(addr165);
            }
            §§goto(addr93);
         }
         if(!_loc5_)
         {
            §§push(this.§[",§.length * _loc3_.width);
            if(_loc4_)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + _loc3_.width * 1.5);
                  if(!_loc5_)
                  {
                     addr200:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(!_loc5_)
                  {
                     (§^!T§.getItemByName("Button_Next") as §]"%§).x = § !4§.§&v§ / 2;
                     loop14:
                     while(true)
                     {
                        (§^!T§.getItemByName("Button_Prev") as §]"%§).x = § !4§.§&v§ / 2;
                        addr267:
                        while(true)
                        {
                           (§^!T§.getItemByName("Button_Next") as §]"%§).x = (§^!T§.getItemByName("Button_Next") as §]"%§).x + (_loc1_ + 10);
                           continue loop14;
                        }
                     }
                  }
                  §§goto(addr255);
               }
            }
            §§goto(addr200);
         }
         §§goto(addr230);
      }
      
      protected function §[%§(param1:String, param2:Number, param3:§7C§ = null) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:MovieClip;
         (_loc4_ = new §=!V§.§?!O§(param1)()).x = param2;
         if(_loc6_)
         {
            this.§^L§.addChild(_loc4_);
            while(true)
            {
               this.§[",§.push(_loc4_);
               loop1:
               for(; _loc6_; if(!(_loc6_ || param1))
               {
                  continue;
               })
               {
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc4_.width * 1.55);
                     if(_loc6_ || this)
                     {
                        addr188:
                        §§push(Number(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        param2 = §§pop();
                        loop3:
                        while(true)
                        {
                           _loc4_.addEventListener(MouseEvent.CLICK,this.§6t§);
                           loop4:
                           while(true)
                           {
                              _loc4_.buttonMode = true;
                              while(true)
                              {
                                 if(param3)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc4_.Textfield_CollectedStars != null)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             _loc4_.Textfield_CollectedStars.text.text = § !4§.§%"7§.§@D§.userProgress.§1!L§(param3) + "/" + § !4§.§%"7§.§@D§.userProgress.§"!N§(param3);
                                          }
                                          while(true)
                                          {
                                             addr118:
                                             loop9:
                                             while(!(_loc5_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   loop10:
                                                   while(_loc4_.Textfield_ME_Score != null)
                                                   {
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr81:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop2;
                                                   addr41:
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc4_.Textfield_Score != null)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   break;
                                                }
                                                _loc4_.Textfield_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§;l§(param3);
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr41);
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr188);
               }
            }
         }
         while(true)
         {
            _loc4_.Textfield_ME_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§+w§(param3) + "/" + § !4§.§%"7§.§@D§.userProgress.§#D§(param3);
            §§goto(addr81);
         }
      }
      
      private function §9j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§!;§)
            {
               if(_loc3_ || this)
               {
                  this.§`d§(this.§^"%§.indexOf(param1.target));
               }
            }
         }
      }
      
      protected function §6t§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            if(!this.§!;§)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§[",§.indexOf(param1.currentTarget)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§-""§);
                        while(§§pop() == _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(§§pop() < §4a§.getEpisodeCount())
                           {
                              if(_loc3_ || this)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §4a§.selectEpisode(_loc2_);
                              }
                              loop4:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    §7"6§(§^j§.§8"%§);
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr21);
                                    }
                                    addr89:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr21);
                        }
                        this.§`d§(_loc2_);
                        §§goto(addr89);
                     }
                  }
               }
            }
            addr21:
            return;
         }
         §§goto(addr80);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8+§();
         }
         do
         {
            this.§]!-§();
         }
         while(_loc2_);
         
      }
      
      protected function §]!-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§[",§.length)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§push(§§pop() * 0.55);
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() > 1000)
                                    {
                                       loop5:
                                       while(!(_loc4_ && this))
                                       {
                                          §§push(1000);
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr150:
                                             loop17:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               addr119:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[",§);
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§[",§);
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                                                                 loop12:
                                                                                 while(!(_loc4_ && this))
                                                                                 {
                                                                                    §§push(this.§[",§);
                                                                                    loop13:
                                                                                    for(; _loc3_; §§push(this.§[",§),if(!_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    },if(!_loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    },§§push(_loc1_),if(!_loc4_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                                                                       loop16:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          _loc1_++;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr87);
                                                                                    },§§goto(addr78))
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                                                          addr87:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr216:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Math.abs(_loc2_)));
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               break loop17;
                                                            }
                                                            addr214:
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr216);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr150);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr38);
               }
               else
               {
                  §§push(this.§^L§.x + this.§[",§[_loc1_].x - § !4§.§&v§ / 2);
               }
               §§goto(addr214);
            }
            §§goto(addr149);
         }
      }
      
      protected function §8+§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc1_)
            {
               §§push(this.§^"%§);
               if(_loc4_ || _loc1_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              this.§?!C§ = this.§^L§.x;
                              addr67:
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§?!C§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr203:
                                                §§push(-§§pop());
                                                if(_loc4_ || this)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(this.§[",§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() > §§pop()[§§pop()].x);
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(_loc4_ || this)
                                                                           {
                                                                              §§push(0);
                                                                              loop20:
                                                                              for(; _loc4_ || this; while(true)
                                                                              {
                                                                                 if(_loc3_ && _loc2_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(this.§^"%§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop().length)
                                                                                       {
                                                                                          §§goto(addr96);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.§^"%§);
                                                                                       }
                                                                                       §§goto(addr157);
                                                                                    }
                                                                                    addr94:
                                                                                 }
                                                                                 §§goto(addr369);
                                                                              })
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       continue loop20;
                                                                                       addr151:
                                                                                    }
                                                                                    addr132:
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       addr146:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_++;
                                                                                          addr76:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr316:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§^"%§);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§^"%§);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr132);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           do
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(!_loc4_);
                                                                                                                           
                                                                                                                           continue;
                                                                                                                           addr168:
                                                                                                                        }
                                                                                                                        §§goto(addr151);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr329:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr331:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           break loop20;
                                                                                                                           §§goto(addr331);
                                                                                                                        }
                                                                                                                        addr310:
                                                                                                                     }
                                                                                                                     loop27:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§?!C§);
                                                                                                                        addr345:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§[",§);
                                                                                                                                 loop8:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                       loop10:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
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
                                                                                                                                                            §§goto(addr310);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr368:
                                                                                                                                                }
                                                                                                                                                addr262:
                                                                                                                                                loop12:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(-this.§^L§.x);
                                                                                                                                                   addr267:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(800);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop18:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[",§);
                                                                                                                                                            addr273:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  break loop12;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ && _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc4_ || _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop11;
                                                                                                                                                                           }
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop28;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop18;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr290:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                                     }
                                                                                                                                                                     addr392:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                         addr271:
                                                                                                                                                      }
                                                                                                                                                      addr378:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr379:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[",§);
                                                                                                                                                            break loop12;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr392);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr353:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr377:
                                                                                                                           }
                                                                                                                           §§goto(addr378);
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr130:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                               addr341:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_++;
                                                                                                                  §§goto(addr329);
                                                                                                               }
                                                                                                            }
                                                                                                            addr338:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                            break loop19;
                                                                                                         }
                                                                                                         addr321:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                         }
                                                                                                         addr165:
                                                                                                      }
                                                                                                      §§goto(addr168);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            §§goto(addr165);
                                                                                                            §§push(_loc2_);
                                                                                                         }
                                                                                                         addr318:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr321);
                                                                                                               §§push(_loc1_);
                                                                                                            }
                                                                                                            addr337:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr157:
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                                addr96:
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          continue loop0;
                                                                                          §§goto(addr146);
                                                                                       }
                                                                                       addr74:
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^"%§);
                                                                                 addr314:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§^"%§);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr262);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                        }
                                                                        §§goto(addr74);
                                                                     }
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr271);
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr368);
                        }
                        §§goto(addr67);
                     }
                     else
                     {
                        §§push(-this.§^L§.x);
                     }
                     §§goto(addr377);
                  }
                  §§goto(addr314);
               }
               §§goto(addr94);
            }
            §§goto(addr83);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         do
         {
            §@!S§.§2A§.clearLevel();
            do
            {
               this.§`!`§();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §`!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§^!T§.getItemByName("Button_Back") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("BACK" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     addr201:
                  }
               }
               else
               {
                  addr207:
                  §§push(2);
                  if(!_loc6_)
                  {
                  }
               }
            }
            else if("PREV" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(1);
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr201);
                  }
                  else
                  {
                     addr227:
                  }
               }
               else
               {
                  §§goto(addr207);
               }
            }
            else
            {
               if("NEXT" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr207);
                  }
                  else
                  {
                     addr214:
                     §§push(3);
                     if(!_loc7_)
                     {
                        §§goto(addr227);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr214);
               }
               else
               {
                  §§push(4);
               }
               §§goto(addr214);
            }
            loop1:
            switch(§§pop())
            {
               case 0:
                  §>D§.§9!q§("Menu_Back");
                  addr31:
                  §7"6§(§`!z§.§8"%§);
                  break;
                  addr42:
                  addr36:
               case 1:
                  §>D§.§9!q§("Menu_Confirm");
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           if(true)
                           {
                              §§push(this.§!;§);
                              if(!(_loc7_ && this))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push((_loc4_ = this).§-""§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && param2))
                                       {
                                          _loc4_.§-""§ = _loc5_;
                                       }
                                       if(_loc6_ || param2)
                                       {
                                          this.§`d§(this.§-""§);
                                          if(!_loc7_)
                                          {
                                             addr93:
                                             break;
                                          }
                                          this.§`d§(this.§-""§);
                                          if(!_loc7_)
                                          {
                                             addr153:
                                          }
                                          break;
                                          addr142:
                                       }
                                       else
                                       {
                                          addr102:
                                          if(!this.§!;§)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push((_loc4_ = this).§-""§);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc6_ || param2)
                                                {
                                                   _loc4_.§-""§ = _loc5_;
                                                }
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr142);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      § !4§.§%"7§.§]!;§();
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(true)
                                                         {
                                                            break loop1;
                                                         }
                                                      }
                                                      break loop1;
                                                   }
                                                   break;
                                                   addr159:
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr151);
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr102);
                           }
                        }
                        else
                        {
                           §§goto(addr42);
                        }
                        §§goto(addr31);
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr102);
               case 2:
                  §>D§.§9!q§("Menu_Confirm");
                  if(!_loc7_)
                  {
                     §§goto(addr102);
                  }
                  §§goto(addr151);
               case 3:
                  §>D§.§9!q§("Menu_Confirm");
                  §§goto(addr159);
            }
            return;
         }
         §§goto(addr214);
      }
      
      protected function §`d§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§!;§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc5_ || this)
               {
                  if(§§pop() > this.§[",§.length - 1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§[",§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop().length - 1);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              loop7:
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr102:
                                 loop4:
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       addr24:
                                       loop3:
                                       while(true)
                                       {
                                          this.§-""§ = param1;
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(this.§[",§);
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc2_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      param1 = §§pop();
                                                   }
                                                }
                                                addr49:
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              addr101:
                           }
                           addr126:
                           var _loc2_:* = §§pop();
                           §§push(this.§^L§.x - _loc2_);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:*;
                           §§push(_loc4_ = Number(Math.abs(_loc3_)));
                           if(_loc5_)
                           {
                              §§push(400);
                              if(_loc5_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc5_)
                                          {
                                             addr184:
                                             §§push(§+"0§);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr200:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc6_)
                                                   {
                                                      addr204:
                                                      §§push(_loc4_ = §§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr212:
                                                         if(§§pop() > 1)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               addr223:
                                                               _loc4_ = Number(1);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr303:
                                                                  §§push(this.§,!i§);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,!i§);
                                                                           addr309:
                                                                           while(true)
                                                                           {
                                                                              §§pop().stop();
                                                                              addr310:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        addr307:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§,!i§ = §0!o§.§,2§.§4!t§(this.§^L§,{"x":_loc2_},null,_loc4_,§=!'§.easeOut);
                                                                        addr302:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,!i§);
                                                                           addr269:
                                                                           while(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop().onComplete = this.§[!=§;
                                                                                 continue;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr309);
                                                                           addr249:
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 return;
                                                                                 addr265:
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!i§);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§pop().play();
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr184);
                        }
                        break;
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr49);
                        }
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr101);
            }
            §§push(-§§pop()[param1].x);
            if(_loc5_ || this)
            {
               §§push(§§pop() + this.§'X§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr126);
         }
         §§goto(addr39);
      }
      
      protected function §[!=§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= this.§^"%§.length)
               {
                  if(_loc2_)
                  {
                     this.§!;§ = false;
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     addr69:
                     if(_loc3_)
                     {
                        addr94:
                     }
                     _loc1_++;
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  addr91:
                  this.§^"%§[_loc1_].gotoAndStop("Selected");
                  addr88:
                  §§goto(addr94);
               }
               else
               {
                  addr75:
                  if(_loc1_ == this.§-""§)
                  {
                     §§goto(addr88);
                  }
                  else
                  {
                     §§push(this.§^"%§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr69);
                        }
                        else
                        {
                           §§goto(addr91);
                        }
                     }
                     else
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr75);
         }
      }
   }
}
