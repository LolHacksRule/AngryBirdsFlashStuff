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
      
      protected static const §+p§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "ChapterSelectionState";
         }
         do
         {
            §+p§ = 0.5;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected var §-W§:Sprite;
      
      protected var §'-§:§"!a§;
      
      protected var §``§:Array;
      
      protected var §#$§:Array;
      
      protected var §!!d§:int = 0;
      
      protected var §,!D§:Number = 0;
      
      protected var §8d§:Number = 0;
      
      protected var §>!@§:§0]§ = null;
      
      protected var §-_§:Boolean = false;
      
      protected var §2'§:Number = 0;
      
      public function StateEpisodeSelection(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
               §?P§ = new §2W§(this);
               loop1:
               while(!(_loc1_ && this))
               {
                  while(true)
                  {
                     §?P§.init(§#"0§.§+#§.Views.View_ChapterSelection[0]);
                     while(_loc2_)
                     {
                        this.§'f§();
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr80);
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
               §&!"§.§1!D§.§"!Q§(false);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§[!z§();
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §[!z§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:§3%§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§``§)
         {
            _loc3_ = §&" §.getEpisode(_loc1_);
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(_loc3_);
                     addr171:
                     while(true)
                     {
                        loop5:
                        while(!(_loc6_ && _loc1_))
                        {
                           do
                           {
                              if(_loc2_.Textfield_Score == null)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop8;
                                       }
                                       addr105:
                                    }
                                 }
                                 continue;
                              }
                              loop7:
                              while(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    _loc2_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(_loc3_);
                                    break loop7;
                                 }
                              }
                              continue loop5;
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     §§goto(addr111);
                  }
                  §§goto(addr69);
                  §§goto(addr171);
               }
            }
            §§goto(addr95);
         }
      }
      
      protected function §'f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3%§ = null;
         if(!_loc4_)
         {
            this.§'-§ = §?P§.getItemByName("Container_ChapterSelection") as §"!a§;
            loop0:
            while(true)
            {
               addr31:
               while(true)
               {
                  this.§``§ = [];
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#$§ = [];
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr31);
            }
            §§goto(addr35);
         }
         var _loc1_:Number = 0;
         if(!(_loc4_ && _loc3_))
         {
            this.§-W§ = new Sprite();
            loop4:
            while(true)
            {
               this.§-W§.y = §6!!§.§=!?§ / 2;
               addr127:
               while(true)
               {
                  this.§,!D§ = §6!!§.§+g§ / 2;
                  addr78:
                  if(!(_loc4_ && _loc3_))
                  {
                     continue loop4;
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      protected function §,!c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§;!%§("MovieClip_Chapter_Selection_More_Coming",param1));
            while(true)
            {
               §§push(Number(§§pop()));
               addr89:
               addr58:
               while(true)
               {
                  param1 = §§pop();
               }
               if(!(_loc3_ && _loc3_))
               {
                  param1 = §§pop();
                  if(_loc3_ && _loc2_)
                  {
                     while(true)
                     {
                        §§push(this.§;!%§("MovieClip_Chapter_Selection_Shop",param1));
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           else
                           {
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr58);
                     }
                     addr90:
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function §!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§``§.length)
         {
            _loc3_ = new §<V§.§"!,§("Button_Dot")();
            if(!(_loc5_ && _loc2_))
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
                        while(true)
                        {
                           _loc3_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc3_.height / 2;
                           loop4:
                           while(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 this.§'-§.mClip.addChild(_loc3_);
                                 loop5:
                                 while(true)
                                 {
                                    _loc3_.buttonMode = true;
                                    loop6:
                                    while(!(_loc5_ && _loc1_))
                                    {
                                       this.§#$§.push(_loc3_);
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc5_)
                                          {
                                             §§push(Number(§§pop() + _loc3_.width));
                                          }
                                          _loc1_ = §§pop();
                                          loop8:
                                          while(_loc4_)
                                          {
                                             do
                                             {
                                                _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"%§);
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop4;
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          continue loop6;
                                          addr44:
                                          if(_loc4_ || _loc2_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc3_.gotoAndStop("Selected");
                                 }
                                 addr175:
                              }
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr175);
         }
         if(!_loc5_)
         {
            §§push(this.§``§.length * _loc3_.width);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() / 2);
               if(_loc4_)
               {
                  §§push(§§pop() + _loc3_.width * 1.5);
                  if(!_loc5_)
                  {
                     addr210:
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               if(_loc4_ || _loc2_)
               {
                  (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
                  loop13:
                  do
                  {
                     (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
                     while(true)
                     {
                        (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc1_ + 10);
                        while(!_loc5_)
                        {
                           (§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc1_ + 10);
                           if(_loc4_)
                           {
                              continue loop13;
                           }
                        }
                     }
                  }
                  while(!_loc4_);
                  
                  addr219:
               }
               return;
            }
            §§goto(addr210);
         }
         §§goto(addr219);
      }
      
      protected function §;!%§(param1:String, param2:Number, param3:§3%§ = null) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:MovieClip;
         (_loc4_ = new §<V§.§"!,§(param1)()).x = param2;
         if(_loc6_ || param3)
         {
            this.§-W§.addChild(_loc4_);
            loop0:
            while(true)
            {
               this.§``§.push(_loc4_);
               while(true)
               {
                  §§push(param2);
                  addr193:
                  while(true)
                  {
                     §§push(§§pop() + _loc4_.width * 1.55);
                     addr198:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr199:
                        while(true)
                        {
                           param2 = §§pop();
                           continue loop0;
                        }
                     }
                  }
                  loop9:
                  for(; _loc6_ || param1; while(true)
                  {
                     if(!(_loc6_ || param2))
                     {
                        continue loop9;
                     }
                     §§goto(addr50);
                  })
                  {
                     loop10:
                     while(true)
                     {
                        if(_loc4_.Textfield_Score == null)
                        {
                           loop13:
                           while(_loc4_.Textfield_ME_Score != null)
                           {
                              if(_loc6_ || this)
                              {
                                 _loc4_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(param3);
                              }
                              if(_loc5_)
                              {
                                 continue loop9;
                              }
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 addr190:
                                 while(true)
                                 {
                                    if(!param3)
                                    {
                                       addr144:
                                       break loop13;
                                    }
                                    if(_loc6_ || param2)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc4_.Textfield_CollectedStars == null)
                                       {
                                          continue loop10;
                                       }
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop9;
                                       }
                                    }
                                    if(_loc5_ && this)
                                    {
                                       break;
                                    }
                                    _loc4_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(param3);
                                    continue loop9;
                                 }
                                 while(true)
                                 {
                                    _loc4_.buttonMode = true;
                                    §§goto(addr182);
                                    §§goto(addr144);
                                 }
                                 addr182:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc4_.Textfield_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§0B§(param3);
                                    continue loop9;
                                 }
                                 addr93:
                              }
                           }
                           §§push(param2);
                           if(_loc6_ || param2)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr199);
                           addr50:
                        }
                        §§goto(addr93);
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§<R§);
            §§goto(addr190);
         }
      }
      
      private function §4"%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§-_§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§8!1§(this.§#$§.indexOf(param1.target));
               }
            }
         }
      }
      
      protected function §<R§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || param1)
         {
            if(!this.§-_§)
            {
               loop0:
               do
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
                           if(_loc4_ || this)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop() >= §&" §.getEpisodeCount())
                                 {
                                    return;
                                 }
                                 while(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    §&" §.selectEpisode(_loc2_);
                                    do
                                    {
                                       §<f§(§4!9§.§-!q§);
                                    }
                                    while(_loc3_);
                                    
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                                 addr27:
                              }
                              continue loop1;
                           }
                        }
                        this.§8!1§(_loc2_);
                        continue loop0;
                     }
                     addr47:
                  }
               }
               while(!_loc4_);
               
            }
            §§goto(addr27);
         }
         §§goto(addr47);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,"+§();
            do
            {
               this.§]"&§();
            }
            while(_loc3_);
            
         }
      }
      
      protected function §]"&§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() >= this.§``§.length)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(_loc4_)
                  {
                     while(!_loc3_)
                     {
                        loop3:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§``§);
                                    if(_loc3_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             break;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                             addr131:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(this.§``§);
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc1_);
                                                         while(_loc4_ && _loc3_)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()].scaleX = 1.1 - _loc2_ / 1000;
                                                               addr145:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     §§push(this.§``§);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(§§pop() > 1000)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          §§push(1000);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr184:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         addr246:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Math.abs(_loc2_)));
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      addr245:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr217:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * 0.55);
                                                                                                   addr201:
                                                                                                   while(!(_loc3_ || _loc1_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr245);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr183:
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    §§goto(addr217);
                                                                                 }
                                                                                 addr173:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§``§);
                                                                                 continue loop6;
                                                                              }
                                                                              addr134:
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr134);
                                                                     }
                                                                     addr196:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                         continue loop3;
                                                         addr75:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                   }
                                                   addr72:
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                       }
                                       §§goto(addr75);
                                    }
                                    §§goto(addr72);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr131);
                        }
                        §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                     }
                     _loc1_++;
                  }
                  continue;
               }
               §§push(this.§-W§.x + this.§``§[_loc1_].x - §6!!§.§+g§ / 2);
               §§goto(addr244);
            }
            §§goto(addr183);
         }
      }
      
      protected function §,"+§() : void
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
               if(!_loc3_)
               {
                  if(_loc4_ || this)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§#$§);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§2'§ = this.§-W§.x;
                                             addr77:
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             loop43:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr239:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop42:
                                                   while(true)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr94:
                                                         while(true)
                                                         {
                                                            §§push(this.§#$§);
                                                            addr96:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(§§pop() < §§pop().length)
                                                                  {
                                                                     §§push(this.§#$§);
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                              addr162:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       _loc2_++;
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§2'§);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                             }
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§``§);
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
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr344:
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr345:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop2:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           addr291:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§#$§);
                                                                                                                              addr293:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop().length)
                                                                                                                                 {
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       §§push(this.§#$§);
                                                                                                                                       loop32:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          loop33:
                                                                                                                                          while(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                             loop34:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr241:
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(-this.§-W§.x);
                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(800);
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            loop14:
                                                                                                                                                            while(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§``§);
                                                                                                                                                               loop15:
                                                                                                                                                               for(; !(_loc3_ && _loc3_); §§push(this.§``§),if(!(_loc4_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },§§push(_loc1_),if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr281);
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop11;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr236);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr370);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr372);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr285);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr367);
                                                                                                                                                               },§§goto(addr278))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                                        addr281:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr286:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§2'§);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr197);
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(800);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr285:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop27:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc1_++;
                                                                                                                                                                                    addr82:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr105:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(this.§#$§);
                                                                                                                                                                                          if(_loc3_ && _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                          if(_loc3_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr236:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr278:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        addr367:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                                           addr370:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr366:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop10;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                            continue loop7;
                                                                                                                                                            addr264:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            break loop13;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr264);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr366);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§#$§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                    }
                                                                                                                                    addr319:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                    addr323:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc2_++;
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop47;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr241);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr286);
                                                                                 continue loop38;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                  }
                                                                  §§goto(addr105);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr345);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr77);
                           }
                           else
                           {
                              §§push(-this.§-W§.x);
                           }
                           §§goto(addr352);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr291);
               }
               §§goto(addr239);
            }
            §§goto(addr94);
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
            §&!"§.§1!D§.clearLevel();
            do
            {
               this.§!;§();
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function §!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
                  §§push(0);
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr237);
               }
               else
               {
                  §§goto(addr207);
               }
            }
            else
            {
               if("PREV" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§push(1);
                     if(_loc6_ || param2)
                     {
                     }
                  }
                  else
                  {
                     addr219:
                     §§push(3);
                     if(_loc6_)
                     {
                        §§goto(addr232);
                     }
                  }
               }
               else
               {
                  if("NEXT" === _loc4_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        addr207:
                        §§push(2);
                        if(!(_loc6_ || this))
                        {
                           addr232:
                        }
                        §§goto(addr237);
                     }
                     else
                     {
                        §§goto(addr219);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr219);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr219);
               }
               §§goto(addr219);
            }
            addr237:
            loop1:
            switch(§§pop())
            {
               case 0:
                  §'!c§.§3!f§("Menu_Back");
                  if(_loc6_ || this)
                  {
                     addr27:
                     §<f§(§8^§.§-!q§);
                     if(!_loc7_)
                     {
                        break;
                     }
                     addr97:
                     addr95:
                     if(!this.§-_§)
                     {
                        if(!(_loc7_ && param2))
                        {
                           addr105:
                           §§push((_loc4_ = this).§!!d§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§!!d§ = _loc5_;
                           }
                           if(!_loc7_)
                           {
                              this.§8!1§(this.§!!d§);
                              if(!_loc6_)
                              {
                              }
                              break;
                           }
                           break;
                        }
                        addr153:
                     }
                     break;
                  }
                  §§goto(addr105);
               case 1:
                  §'!c§.§3!f§("Menu_Confirm");
                  if(!_loc7_)
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
                              if(!_loc7_)
                              {
                                 §§push((_loc4_ = this).§!!d§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc5_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    _loc4_.§!!d§ = _loc5_;
                                 }
                                 if(!_loc7_)
                                 {
                                    addr72:
                                    this.§8!1§(this.§!!d§);
                                    if(_loc6_ || param2)
                                    {
                                       addr83:
                                       break;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §6!!§.singleton.§%!O§();
                                    if(_loc7_)
                                    {
                                       break loop1;
                                    }
                                    if(_loc7_ && param3)
                                    {
                                       continue;
                                    }
                                    addr151:
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr153);
                                 }
                                 break;
                                 addr159:
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr83);
                        }
                        else
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr72);
               case 2:
                  §'!c§.§3!f§("Menu_Confirm");
                  if(_loc6_ || param2)
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr105);
               case 3:
                  §'!c§.§3!f§("Menu_Confirm");
                  §§goto(addr159);
            }
            return;
         }
         §§goto(addr219);
      }
      
      protected function §8!1§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§-_§ = true;
            while(true)
            {
               §§push(param1);
               if(_loc5_ || this)
               {
                  if(§§pop() <= this.§``§.length - 1)
                  {
                     §§push(param1);
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(§§pop() < 0)
                           {
                              loop1:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             addr19:
                                             addr97:
                                             while(true)
                                             {
                                                this.§!!d§ = param1;
                                                if(_loc5_ || param1)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§``§);
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop().length - 1);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr91:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   addr92:
                                                   while(true)
                                                   {
                                                      addr39:
                                                      while(true)
                                                      {
                                                         §§goto(addr19);
                                                      }
                                                   }
                                                }
                                                addr91:
                                             }
                                             else
                                             {
                                                addr111:
                                                var _loc2_:* = §§pop();
                                                §§push(this.§-W§.x - _loc2_);
                                                if(!_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc3_:* = §§pop();
                                             var _loc4_:*;
                                             §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                             if(!_loc6_)
                                             {
                                                §§push(400);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               addr164:
                                                               §§push(§+p§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr175:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr184:
                                                                        §§push(_loc4_ = §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr188:
                                                                           if(§§pop() > 1)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 addr198:
                                                                                 _loc4_ = Number(1);
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    addr280:
                                                                                    addr278:
                                                                                    if(this.§>!@§ != null)
                                                                                    {
                                                                                       addr284:
                                                                                       this.§>!@§.stop();
                                                                                       addr282:
                                                                                    }
                                                                                    this.§>!@§ = §'^§.§2Z§.§!!f§(this.§-W§,{"x":_loc2_},null,_loc4_,§]!n§.easeOut);
                                                                                    addr277:
                                                                                    §§push(this.§>!@§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().onComplete = this.§=!b§;
                                                                                          addr247:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(this.§>!@§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   §§pop().play();
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(_loc6_ && _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr284);
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr184);
                                          }
                                          else
                                          {
                                             addr99:
                                             §§push(-§§pop()[param1].x);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() + this.§,!D§);
                                                if(!_loc6_)
                                                {
                                                   addr110:
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr111);
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                       addr72:
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr92);
                              }
                              continue;
                           }
                           §§goto(addr19);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr72);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr92);
      }
      
      protected function §=!b§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               if(§§pop() >= this.§#$§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        this.§-_§ = false;
                        addr43:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        addr119:
                     }
                     else
                     {
                        addr89:
                     }
                     addr68:
                     _loc1_++;
                     continue;
                  }
                  §§goto(addr43);
               }
               else
               {
                  addr93:
                  if(_loc1_ == this.§!!d§)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§push(this.§#$§);
                     }
                     §§goto(addr119);
                  }
                  else
                  {
                     §§push(this.§#$§);
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc2_ || _loc1_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr89);
                        }
                        else
                        {
                           addr116:
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           §§goto(addr119);
                        }
                     }
                     else
                     {
                        addr115:
                        §§push(_loc1_);
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr93);
         }
      }
   }
}
