package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §8!O§.§]!n§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §;" §
   {
      
      public static const §-!q§:String = "ChapterSelectionState";
      
      protected static const §9s§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!q§ = "ChapterSelectionState";
            do
            {
               §9s§ = 0.5;
            }
            while(_loc1_);
            
         }
      }
      
      protected var §-W§:Sprite;
      
      protected var §]!@§:§"!a§;
      
      protected var §``§:Array;
      
      protected var §>!@§:Array;
      
      protected var §!!d§:int = 0;
      
      protected var §,!D§:Number = 0;
      
      protected var §8d§:Number = 0;
      
      protected var §0!5§:§0]§ = null;
      
      protected var §-_§:Boolean = false;
      
      protected var §2'§:Number = 0;
      
      public function StateEpisodeSelection(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §?P§ = new §2W§(this);
               while(true)
               {
                  §?P§.init(§#"0§.§+#§.Views.View_ChapterSelection[0]);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§'f§();
                        if(!(_loc1_ && this))
                        {
                           if(_loc2_)
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
         §§goto(addr63);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
         }
         while(true)
         {
            §&!"§.§1!D§.§"!Q§(false);
            while(_loc3_ || param1)
            {
               this.§[!z§();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §[!z§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§3%§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§``§)
         {
            _loc3_ = §&" §.getEpisode(_loc1_);
            if(_loc6_ || _loc2_)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc2_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(_loc3_);
                  }
                  while(true)
                  {
                     addr59:
                     if(_loc6_ || _loc1_)
                     {
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc2_.Textfield_Score != null)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       while(true)
                                       {
                                          _loc2_.Textfield_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§0B§(_loc3_);
                                          addr97:
                                          addr110:
                                          loop6:
                                          while(_loc6_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                _loc1_++;
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr59);
                                          }
                                          while(true)
                                          {
                                             _loc2_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(_loc3_);
                                             §§goto(addr97);
                                          }
                                       }
                                       addr77:
                                    }
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr50);
                           }
                           addr68:
                        }
                        continue loop0;
                     }
                  }
                  addr170:
               }
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr68);
                  §§goto(addr170);
               }
            }
            §§goto(addr77);
         }
      }
      
      protected function §'f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3%§ = null;
         if(!(_loc4_ && _loc1_))
         {
            this.§]!@§ = §?P§.getItemByName("Container_ChapterSelection") as §"!a§;
         }
         while(true)
         {
            while(true)
            {
               this.§``§ = [];
               do
               {
                  this.§>!@§ = [];
               }
               while(_loc4_);
               
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:* = Number(0);
               if(_loc5_ || _loc1_)
               {
                  this.§-W§ = new Sprite();
               }
               loop3:
               while(true)
               {
                  this.§-W§.y = §6!!§.§=!?§ / 2;
                  loop4:
                  while(true)
                  {
                     this.§,!D§ = §6!!§.§+g§ / 2;
                     while(true)
                     {
                        addr102:
                        addr81:
                        while(true)
                        {
                           this.§-W§.x = this.§,!D§;
                           continue loop4;
                        }
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           continue loop3;
                        }
                        if(true)
                        {
                           var _loc2_:int = 0;
                           addr177:
                           if(_loc2_ < §&" §.getEpisodeCount())
                           {
                              _loc3_ = §&" §.getEpisode(_loc2_);
                              if(!_loc4_)
                              {
                                 if(!_loc3_.§3F§)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       addr159:
                                       §§push(this.§;!%§(_loc3_.menuImage,_loc1_,_loc3_));
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc1_ = §§pop();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr176:
                                          _loc2_++;
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr159);
                           }
                           if(!_loc4_)
                           {
                              this.§,!c§(_loc1_);
                              if(_loc5_)
                              {
                                 this.§!2§();
                              }
                           }
                           return;
                        }
                        §§goto(addr102);
                     }
                  }
               }
            }
         }
      }
      
      protected function §,!c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§;!%§("MovieClip_Chapter_Selection_More_Coming",param1));
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            loop0:
            while(true)
            {
               param1 = §§pop();
               do
               {
                  §§push(this.§;!%§("MovieClip_Chapter_Selection_Shop",param1));
                  if(!(_loc2_ && param1))
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(Number(§§pop()));
                  }
                  param1 = §§pop();
               }
               while(!_loc3_);
               
            }
         }
      }
      
      protected function §!2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§``§.length)
         {
            _loc3_ = new §<V§.§"!,§("Button_Dot")();
            if(!_loc4_)
            {
               if(_loc2_ != this.§!!d§)
               {
                  _loc3_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc3_.x = §6!!§.§+g§ / 2 + _loc1_ - this.§``§.length * _loc3_.width / 2;
                        loop3:
                        for(; _loc5_; while(_loc5_ || this)
                        {
                           _loc2_++;
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              §§goto(addr42);
                           }
                           §§goto(addr89);
                        })
                        {
                           _loc3_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc3_.height / 2;
                           while(true)
                           {
                              this.§]!@§.mClip.addChild(_loc3_);
                              loop5:
                              for(; !(_loc4_ && _loc3_); while(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    §§push(Number(§§pop() + _loc3_.width));
                                 }
                                 _loc1_ = §§pop();
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr65);
                                    }
                                 }
                                 continue loop1;
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr49);
                              })
                              {
                                 _loc3_.buttonMode = true;
                                 while(true)
                                 {
                                    this.§>!@§.push(_loc3_);
                                    continue loop5;
                                    addr49:
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr63:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
                                             continue loop3;
                                             §§goto(addr63);
                                          }
                                          addr65:
                                       }
                                       continue loop0;
                                    }
                                    addr181:
                                    while(true)
                                    {
                                       _loc3_.gotoAndStop("Selected");
                                       break loop3;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr181);
            }
            §§goto(addr91);
         }
         if(_loc5_)
         {
            §§push(this.§``§.length * _loc3_.width);
            if(!_loc4_)
            {
               §§push(§§pop() / 2);
               if(_loc5_)
               {
                  §§push(§§pop() + _loc3_.width * 1.5);
                  if(_loc4_)
                  {
                  }
                  addr212:
                  _loc1_ = §§pop();
                  if(_loc5_ || _loc1_)
                  {
                     (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
                     addr304:
                     while(true)
                     {
                        (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
                        while(_loc5_)
                        {
                           (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc1_ + 10);
                           do
                           {
                              (§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc1_ + 10);
                           }
                           while(_loc4_ && _loc2_);
                           
                           if(_loc5_)
                           {
                              return;
                           }
                        }
                     }
                     addr304:
                  }
                  §§goto(addr304);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr212);
         }
         §§goto(addr304);
      }
      
      protected function §;!%§(param1:String, param2:Number, param3:§3%§ = null) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:MovieClip;
         (_loc4_ = new §<V§.§"!,§(param1)()).x = param2;
         if(!(_loc5_ && param3))
         {
            this.§-W§.addChild(_loc4_);
            loop0:
            while(true)
            {
               this.§``§.push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + _loc4_.width * 1.55);
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           param2 = §§pop();
                           loop5:
                           while(true)
                           {
                              _loc4_.addEventListener(MouseEvent.CLICK,this.§#!J§);
                              loop6:
                              while(true)
                              {
                                 _loc4_.buttonMode = true;
                                 loop7:
                                 while(_loc6_)
                                 {
                                    if(param3)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc4_.Textfield_CollectedStars != null)
                                          {
                                             while(_loc6_)
                                             {
                                                _loc4_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(param3);
                                                while(_loc6_)
                                                {
                                                }
                                                continue loop1;
                                             }
                                             continue loop6;
                                             addr154:
                                          }
                                          loop11:
                                          while(_loc4_.Textfield_Score != null)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_.Textfield_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§0B§(param3);
                                                         addr139:
                                                         while(true)
                                                         {
                                                            break loop11;
                                                            addr62:
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  break loop8;
                                                               }
                                                               _loc4_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(param3);
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§goto(addr34);
                                                      }
                                                      addr129:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr154);
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr139);
                                          }
                                          while(true)
                                          {
                                             if(_loc4_.Textfield_ME_Score != null)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                §§goto(addr62);
                                             }
                                             else
                                             {
                                                §§goto(addr34);
                                             }
                                          }
                                       }
                                       continue loop5;
                                       continue;
                                    }
                                    addr34:
                                    §§push(param2);
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc6_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private function §#!p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§-_§)
            {
               if(_loc2_)
               {
                  this.§8!1§(this.§>!@§.indexOf(param1.target));
               }
            }
         }
      }
      
      protected function §#!J§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || param1)
         {
            if(!this.§-_§)
            {
               loop0:
               while(true)
               {
                  §§push(int(this.§``§.indexOf(param1.currentTarget)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§!!d§);
                        loop3:
                        while(§§pop() == _loc2_)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop() < §&" §.getEpisodeCount())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §&" §.selectEpisode(_loc2_);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    addr96:
                                 }
                                 §§goto(addr26);
                              }
                              continue loop1;
                           }
                        }
                        this.§8!1§(_loc2_);
                        §§goto(addr96);
                     }
                     if(_loc4_)
                     {
                        §§goto(addr96);
                     }
                  }
               }
            }
            addr26:
            return;
         }
         §§goto(addr75);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@X§();
            do
            {
               this.§]"&§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      protected function §]"&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               if(§§pop() >= this.§``§.length)
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.§``§);
                                    loop2:
                                    for(; _loc4_; §§push(this.§``§),if(_loc3_)
                                    {
                                       continue;
                                    },§§push(_loc1_),if(!_loc4_)
                                    {
                                       §§goto(addr89);
                                    },if(!_loc4_)
                                    {
                                       continue loop1;
                                    },§§pop()[§§pop()].y = _loc2_ / 1000 * -200,while(true)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          _loc1_++;
                                          while(!_loc4_)
                                          {
                                             §§goto(addr185);
                                          }
                                          continue loop0;
                                          addr53:
                                       }
                                       §§goto(addr155);
                                    })
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(_loc1_);
                                          loop3:
                                          while(_loc4_ || this)
                                          {
                                             §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§push(§§pop() * 0.55);
                                                   }
                                                   loop9:
                                                   while(_loc4_ || _loc1_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr206:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr180:
                                                            while(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     addr144:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§``§);
                                                                        addr147:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           break loop3;
                                                                        }
                                                                        addr162:
                                                                        §§push(this.§``§);
                                                                        break loop2;
                                                                     }
                                                                  }
                                                                  addr185:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     continue loop17;
                                                                  }
                                                                  addr212:
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr242:
                                                      while(true)
                                                      {
                                                         §§goto(addr212);
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                             addr155:
                                             while(true)
                                             {
                                                if(_loc3_ && _loc1_)
                                                {
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr162);
                                             }
                                          }
                                          addr89:
                                       }
                                       §§goto(addr147);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr53);
               }
               else
               {
                  §§push(this.§-W§.x + this.§``§[_loc1_].x - §6!!§.§+g§ / 2);
               }
               §§goto(addr240);
            }
            §§goto(addr179);
         }
      }
      
      protected function §@X§() : void
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
                  if(_loc4_)
                  {
                     §§push(this.§>!@§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§2'§ = this.§-W§.x;
                                             addr72:
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   loop33:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop25:
                                                            while(true)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  addr96:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        §§push(this.§>!@§);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop().length)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>!@§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                             while(true)
                                                                                             {
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_++;
                                                                                                   addr86:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         break loop32;
                                                                                                      }
                                                                                                      loop4:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop5:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(-this.§-W§.x);
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(800);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§``§);
                                                                                                                     loop8:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        loop9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                           addr246:
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop12:
                                                                                                                                       while(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2'§);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                             addr349:
                                                                                                                                             addr168:
                                                                                                                                             addr349:
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§``§);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   addr362:
                                                                                                                                                   addr361:
                                                                                                                                                   §§push(§§pop() >= §§pop()[_loc1_].x);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr327:
                                                                                                                                                      break loop10;
                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                      {
                                                                                                                                                         while(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc2_ = §§pop();
                                                                                                                                                               }
                                                                                                                                                               addr339:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  addr270:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§>!@§);
                                                                                                                                                                     addr272:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= §§pop().length)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§>!@§);
                                                                                                                                                                              addr276:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 addr277:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr274:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§>!@§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                              addr297:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                 addr300:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc2_++;
                                                                                                                                                                                    break loop12;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr296:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr290:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop5;
                                                                                                                                                         addr334:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr304:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr347:
                                                                                                                                                if(_loc4_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§``§);
                                                                                                                                                   break loop8;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   break loop6;
                                                                                                                                                }
                                                                                                                                                addr347:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr361);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr300);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr290);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr304);
                                                                                                                                             }
                                                                                                                                             §§goto(addr349);
                                                                                                                                             addr368:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr325:
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr327);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§goto(addr368);
                                                                                                                                    }
                                                                                                                                    addr367:
                                                                                                                                    addr255:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    §§goto(addr340);
                                                                                                                                    addr222:
                                                                                                                                 }
                                                                                                                                 §§goto(addr340);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr367);
                                                                                                                           }
                                                                                                                           §§goto(addr334);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr322);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr349);
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr126:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         _loc2_++;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            §§goto(addr258);
                                                                                                            §§goto(addr152);
                                                                                                         }
                                                                                                         addr152:
                                                                                                      }
                                                                                                      addr150:
                                                                                                   }
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                             }
                                                                                             addr138:
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr137:
                                                                                 }
                                                                                 §§goto(addr138);
                                                                              }
                                                                              addr107:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§>!@§);
                                                                           }
                                                                           §§goto(addr137);
                                                                        }
                                                                        addr105:
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr227:
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr86);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr72);
                           }
                           else
                           {
                              §§push(-this.§-W§.x);
                           }
                           §§goto(addr347);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr270);
               }
               §§goto(addr227);
            }
            §§goto(addr96);
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
               §&!"§.§1!D§.clearLevel();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§!;§();
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§?P§.getItemByName("Button_Back") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc7_)
         {
            if("BACK" === _loc4_)
            {
               if(!_loc7_)
               {
                  addr184:
                  §§push(0);
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  addr214:
                  §§push(3);
                  if(!(_loc7_ && param1))
                  {
                     addr232:
                  }
               }
               §§goto(addr237);
            }
            else if("PREV" === _loc4_)
            {
               if(!(_loc7_ && param2))
               {
                  §§push(1);
                  if(_loc7_)
                  {
                     §§goto(addr232);
                  }
               }
               else
               {
                  §§goto(addr214);
               }
               §§goto(addr237);
            }
            else
            {
               if("NEXT" !== _loc4_)
               {
                  if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr214);
                  }
                  else
                  {
                     §§push(4);
                  }
                  addr237:
                  loop1:
                  switch(§§pop())
                  {
                     case 0:
                        §'!c§.§3!f§("Menu_Back");
                        if(!(_loc7_ && this))
                        {
                           addr27:
                           §<f§(§8^§.§-!q§);
                           if(!(_loc7_ && param2))
                           {
                              break;
                           }
                           this.§8!1§(this.§!!d§);
                           addr137:
                           addr171:
                        }
                        else
                        {
                           addr100:
                           if(!this.§-_§)
                           {
                              if(!_loc7_)
                              {
                                 addr105:
                                 §§push((_loc4_ = this).§!!d§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc7_)
                                 {
                                    _loc4_.§!!d§ = _loc5_;
                                 }
                                 if(_loc6_ || param2)
                                 {
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    addr151:
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              break;
                           }
                        }
                        addr154:
                        break;
                     case 1:
                        §'!c§.§3!f§("Menu_Confirm");
                        if(_loc6_)
                        {
                           if(false)
                           {
                              §§goto(addr27);
                           }
                           else
                           {
                              §§push(this.§-_§);
                              if(!_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§push((_loc4_ = this).§!!d§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(!(_loc7_ && param2))
                                       {
                                          _loc4_.§!!d§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          this.§8!1§(this.§!!d§);
                                          if(!_loc7_)
                                          {
                                             addr93:
                                             break;
                                          }
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §§goto(addr100);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr171);
                     case 2:
                        §'!c§.§3!f§("Menu_Confirm");
                        if(!_loc7_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr137);
                     case 3:
                        §'!c§.§3!f§("Menu_Confirm");
                        while(true)
                        {
                           if(_loc6_ || param2)
                           {
                              §6!!§.singleton.§%!O§();
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              continue;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr137);
                  }
                  return;
               }
               if(_loc6_)
               {
                  §§push(2);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§goto(addr214);
               }
               §§goto(addr237);
            }
            §§goto(addr214);
         }
         §§goto(addr184);
      }
      
      protected function §8!1§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            this.§-_§ = true;
         }
         do
         {
            §§push(param1);
            for(; §§pop() <= this.§``§.length - 1; if(!(_loc6_ || this))
            {
               continue;
            },if(§§pop() < 0)
            {
               if(!_loc5_)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr67);
                  §§push(0);
               }
               §§goto(addr68);
            },§§goto(addr25))
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc6_ || _loc3_)
                  {
                     continue;
                  }
                  addr102:
                  param1 = §§pop();
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        addr25:
                        addr110:
                        while(true)
                        {
                           this.§!!d§ = param1;
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop13;
                              }
                              continue loop12;
                           }
                        }
                        §§push(-this.§``§[param1].x);
                        if(_loc6_)
                        {
                           §§push(§§pop() + this.§,!D§);
                           if(_loc6_ || _loc2_)
                           {
                              addr126:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc2_:* = §§pop();
                        §§push(this.§-W§.x - _loc2_);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:*;
                        §§push(_loc4_ = Number(Math.abs(_loc3_)));
                        if(!_loc5_)
                        {
                           §§push(400);
                           if(!_loc5_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || this)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§9s§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr196:
                                                §§push(Number(§§pop()));
                                                if(!_loc6_)
                                                {
                                                }
                                                _loc4_ = §§pop();
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr299:
                                                   §§push(this.§0!5§);
                                                   while(true)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§0!5§);
                                                            addr305:
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               addr306:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr303:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§0!5§ = §'^§.§2Z§.§!!f§(this.§-W§,{"x":_loc2_},null,_loc4_,§]!n§.easeOut);
                                                         §§goto(addr298);
                                                      }
                                                   }
                                                }
                                                §§goto(addr272);
                                             }
                                             §§push(§§pop());
                                          }
                                       }
                                       §§goto(addr196);
                                    }
                                    _loc4_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       addr204:
                                       if(§§pop() > 1)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§goto(addr196);
                                             §§push(Number(1));
                                          }
                                          addr298:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§0!5§);
                                             loop4:
                                             while(true)
                                             {
                                                §§pop().onComplete = this.§=!b§;
                                                addr272:
                                                while(true)
                                                {
                                                   §§push(this.§0!5§);
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§pop().play();
                                                         if(_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break loop3;
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr305);
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr299);
                                    }
                                 }
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr196);
                     }
                  }
               }
               else
               {
                  addr67:
                  param1 = §§pop();
               }
               while(true)
               {
                  §§goto(addr25);
               }
            }
         }
         while(_loc5_ && this);
         
         §§push(this.§``§);
         if(!(_loc5_ && this))
         {
            §§push(§§pop().length - 1);
            if(!(_loc5_ && this))
            {
               §§goto(addr102);
               §§push(int(§§pop()));
            }
            §§goto(addr126);
         }
         §§goto(addr110);
      }
      
      protected function §=!b§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() >= this.§>!@§.length)
               {
                  if(!_loc3_)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     this.§-_§ = false;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  addr87:
                  if(!(_loc2_ || _loc1_))
                  {
                     addr124:
                  }
                  _loc1_++;
                  continue;
               }
               addr98:
               if(_loc1_ == this.§!!d§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§>!@§);
                  }
               }
               else
               {
                  §§push(this.§>!@§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(_loc1_);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr87);
                     }
                     §§goto(addr124);
                  }
                  else
                  {
                     addr120:
                     §§push(_loc1_);
                  }
                  §§pop()[§§pop()].gotoAndStop("Selected");
               }
               §§goto(addr124);
               §§goto(addr124);
            }
            §§goto(addr98);
         }
      }
   }
}
