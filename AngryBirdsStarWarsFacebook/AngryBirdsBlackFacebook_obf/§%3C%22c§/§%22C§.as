package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §3y§.§9r§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"C§ extends §]"_§
   {
      
      public static const §^!7§:String = "ChapterSelectionState";
      
      protected static const §'!i§:Number = 0.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!7§ = "ChapterSelectionState";
         }
         do
         {
            §'!i§ = 0.5;
         }
         while(!(_loc2_ || §"C§));
         
      }
      
      protected var §1"_§:Sprite;
      
      protected var §-#B§:§ #^§;
      
      protected var §<!W§:Array;
      
      protected var §5!7§:Array;
      
      protected var §=!X§:int = 0;
      
      protected var §?j§:Number = 0;
      
      protected var §["n§:Number = 0;
      
      protected var §>!M§:§[#R§ = null;
      
      protected var §"#2§:Boolean = false;
      
      protected var §>"§:Number = 0;
      
      public function §"C§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §@;§ = new §]#[§(this);
               while(_loc2_)
               {
                  §@;§.init(§&$§.§@8§.Views.View_ChapterSelection[0]);
                  while(!_loc1_)
                  {
                     this.§+Y§();
                     if(!(_loc1_ && this))
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate(param1);
            while(true)
            {
               §,!q§.§9!,§.§]"J§(false);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§+!6§();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      protected function §+!6§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§3![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!W§)
         {
            _loc3_ = §+!b§.getEpisode(_loc1_);
            if(_loc6_)
            {
               if(_loc2_.Textfield_ME_Score != null)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.Textfield_ME_Score.text.text = §4#;§.singleton.dataModel.userProgress.§`"q§(_loc3_) + "/" + §4#;§.singleton.dataModel.userProgress.§[#`§(_loc3_);
                     addr160:
                     while(true)
                     {
                        while(_loc6_ || _loc1_)
                        {
                           _loc2_.Textfield_Score.text.text = §4#;§.singleton.dataModel.userProgress.§]#B§(_loc3_);
                           loop6:
                           while(true)
                           {
                              if(_loc6_ || this)
                              {
                                 continue;
                              }
                              addr105:
                              while(true)
                              {
                                 _loc2_.Textfield_CollectedStars.text.text = §4#;§.singleton.dataModel.userProgress.§'e§(_loc3_) + "/" + §4#;§.singleton.dataModel.userProgress.§3h§(_loc3_);
                                 break loop6;
                              }
                           }
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr60);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_.Textfield_CollectedStars != null)
                  {
                     §§goto(addr105);
                  }
                  §§goto(addr60);
                  §§goto(addr160);
               }
            }
            §§goto(addr105);
         }
      }
      
      protected function §+Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3![§ = null;
         if(!_loc5_)
         {
            this.§-#B§ = §@;§.getItemByName("Container_ChapterSelection") as § #^§;
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  this.§<!W§ = [];
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            this.§5!7§ = [];
            if(_loc5_)
            {
               continue;
            }
            if(_loc4_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr49);
            }
            §§goto(addr37);
         }
         var _loc1_:* = Number(0);
         if(!_loc5_)
         {
            this.§1"_§ = new Sprite();
            loop3:
            while(true)
            {
               this.§1"_§.y = §4#;§.screenHeight / 2;
               while(true)
               {
                  this.§?j§ = §4#;§.screenWidth / 2;
                  continue loop3;
                  loop7:
                  while(!(_loc5_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§-#B§.mClip.addChild(this.§1"_§);
                        if(_loc5_)
                        {
                           continue loop7;
                        }
                        if(_loc5_ && _loc2_)
                        {
                           continue loop3;
                        }
                        if(true)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§1"_§.x = this.§?j§;
                           continue loop7;
                        }
                     }
                     var _loc2_:int = 0;
                     while(_loc2_ < §+!b§.getEpisodeCount())
                     {
                        _loc3_ = §+!b§.getEpisode(_loc2_);
                        if(!_loc5_)
                        {
                           if(!_loc3_.§3"i§)
                           {
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                              addr148:
                              §§push(this.§-"$§(_loc3_.menuImage,_loc1_,_loc3_));
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc1_ = §§pop();
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                           continue;
                        }
                        §§goto(addr148);
                     }
                     if(_loc4_ || this)
                     {
                        this.§>!X§(_loc1_);
                        if(_loc4_ || this)
                        {
                           this.§?E§();
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function §>!X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§-"$§("MovieClip_Chapter_Selection_More_Coming",param1));
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  while(true)
                  {
                     §§push(this.§-"$§("MovieClip_Chapter_Selection_Shop",param1));
                     if(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     }
                     addr53:
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     param1 = §§pop();
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §?E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§<!W§.length)
         {
            _loc3_ = new §5_§.§`"G§("Button_Dot")();
            if(!_loc5_)
            {
               if(_loc2_ != this.§=!X§)
               {
                  _loc3_.gotoAndStop("UnSelected");
                  loop1:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        loop2:
                        while(true)
                        {
                           _loc3_.x = §4#;§.screenWidth / 2 + _loc1_ - this.§<!W§.length * _loc3_.width / 2;
                           loop3:
                           while(!(_loc5_ && _loc3_))
                           {
                              _loc3_.y = (§@;§.getItemByName("Button_Next") as §^"m§).y - _loc3_.height / 2;
                              while(true)
                              {
                                 this.§-#B§.mClip.addChild(_loc3_);
                                 while(_loc4_)
                                 {
                                    _loc3_.buttonMode = true;
                                    loop6:
                                    while(!(_loc5_ && _loc2_))
                                    {
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       this.§5!7§.push(_loc3_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(Number(§§pop() + _loc3_.width));
                                          }
                                          _loc1_ = §§pop();
                                          addr81:
                                          loop10:
                                          while(true)
                                          {
                                             addr55:
                                             while(true)
                                             {
                                                _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^"3§);
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      _loc2_++;
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr188:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           _loc3_.gotoAndStop("Selected");
                        }
                        addr185:
                     }
                     §§goto(addr188);
                  }
               }
               §§goto(addr185);
            }
            §§goto(addr81);
         }
         if(_loc4_ || _loc3_)
         {
            §§push(this.§<!W§.length * _loc3_.width);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() / 2);
               if(_loc4_)
               {
                  §§push(§§pop() + _loc3_.width * 1.5);
                  if(!(_loc5_ && _loc1_))
                  {
                     addr230:
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               if(!_loc5_)
               {
                  (§@;§.getItemByName("Button_Next") as §^"m§).x = §4#;§.screenWidth / 2;
                  addr234:
               }
               while(true)
               {
                  (§@;§.getItemByName("Button_Prev") as §^"m§).x = §4#;§.screenWidth / 2;
                  while(_loc4_)
                  {
                     (§@;§.getItemByName("Button_Next") as §^"m§).x = (§@;§.getItemByName("Button_Next") as §^"m§).x + (_loc1_ + 10);
                     do
                     {
                        (§@;§.getItemByName("Button_Prev") as §^"m§).x = (§@;§.getItemByName("Button_Prev") as §^"m§).x - (_loc1_ + 10);
                     }
                     while(_loc5_);
                     
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            §§goto(addr230);
         }
         §§goto(addr234);
      }
      
      protected function §-"$§(param1:String, param2:Number, param3:§3![§ = null) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:MovieClip;
         (_loc4_ = new §5_§.§`"G§(param1)()).x = param2;
         if(_loc6_ || param2)
         {
            this.§1"_§.addChild(_loc4_);
            loop0:
            while(true)
            {
               this.§<!W§.push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + _loc4_.width * 1.55);
                     if(!_loc5_)
                     {
                        addr195:
                        §§push(Number(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        param2 = §§pop();
                        addr197:
                        loop3:
                        while(true)
                        {
                           _loc4_.addEventListener(MouseEvent.CLICK,this.§5#P§);
                           loop4:
                           while(true)
                           {
                              _loc4_.buttonMode = true;
                              while(true)
                              {
                                 if(param3)
                                 {
                                    loop6:
                                    while(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc4_.Textfield_CollectedStars != null)
                                       {
                                          loop7:
                                          while(!_loc5_)
                                          {
                                             _loc4_.Textfield_CollectedStars.text.text = §4#;§.singleton.dataModel.userProgress.§'e§(param3) + "/" + §4#;§.singleton.dataModel.userProgress.§3h§(param3);
                                             loop8:
                                             while(true)
                                             {
                                                addr116:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop7;
                                                }
                                                _loc4_.Textfield_Score.text.text = §4#;§.singleton.dataModel.userProgress.§]#B§(param3);
                                                §§goto(addr116);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          if(_loc4_.Textfield_Score == null)
                                          {
                                             while(_loc4_.Textfield_ME_Score != null)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      _loc4_.Textfield_ME_Score.text.text = §4#;§.singleton.dataModel.userProgress.§`"q§(param3) + "/" + §4#;§.singleton.dataModel.userProgress.§[#`§(param3);
                                                      addr74:
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr89);
                                                   }
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr74);
                                             }
                                             continue loop2;
                                             addr46:
                                          }
                                          §§goto(addr89);
                                          §§goto(addr165);
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr195);
               }
            }
         }
         §§goto(addr197);
      }
      
      private function §^"3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.§"#2§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§0##§(this.§5!7§.indexOf(param1.target));
               }
            }
         }
      }
      
      protected function §5#P§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || _loc3_)
         {
            if(!this.§"#2§)
            {
               loop0:
               do
               {
                  §§push(int(this.§<!W§.indexOf(param1.currentTarget)));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     do
                     {
                        §§push(this.§=!X§);
                        while(§§pop() == _loc2_)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc4_ && this)
                           {
                              continue loop1;
                           }
                           if(§§pop() < §+!b§.getEpisodeCount())
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    addr26:
                                    return;
                                    addr101:
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §+!b§.selectEpisode(_loc2_);
                                 §§goto(addr26);
                              }
                              § g§(§+#?§.§^!7§);
                              addr88:
                              if(!_loc3_)
                              {
                                 §§goto(addr88);
                              }
                           }
                           §§goto(addr26);
                        }
                     }
                     while(_loc4_);
                     
                     continue loop0;
                  }
               }
               while(!_loc3_);
               
               addr98:
               this.§0##§(_loc2_);
               §§goto(addr101);
            }
            §§goto(addr26);
         }
         §§goto(addr98);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]!f§();
            do
            {
               this.§^#Z§();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §^#Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§<!W§.length)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 §§push(this.§<!W§);
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(_loc1_);
                                       loop4:
                                       while(true)
                                       {
                                          §§pop()[§§pop()].scaleY = 1.1 - _loc2_ / 1000;
                                          addr134:
                                          loop5:
                                          while(!(_loc3_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this.§<!W§);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr95:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop()[§§pop()].alpha = 1 - _loc2_ / 1000 * 1.5;
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop() * 0.55);
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        addr209:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr211:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 if(§§pop() > 1000)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1000);
                                                                                       addr184:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          break loop10;
                                                                                       }
                                                                                    }
                                                                                    addr183:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<!W§);
                                                                                    break loop3;
                                                                                 }
                                                                                 addr144:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    addr247:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(Math.abs(_loc2_)));
                                                                                       addr217:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                                 addr246:
                                                                              }
                                                                           }
                                                                           break loop10;
                                                                        }
                                                                     }
                                                                     while(!_loc3_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr245:
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr144);
                                          }
                                       }
                                    }
                                    break;
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop()[§§pop()].y = _loc2_ / 1000 * -200;
                                          while(_loc3_)
                                          {
                                             §§goto(addr134);
                                          }
                                          continue loop1;
                                          addr88:
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr95);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    continue loop2;
                                 }
                              }
                              §§goto(addr247);
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr88);
                  }
                  continue;
               }
               §§push(this.§1"_§.x + this.§<!W§[_loc1_].x - §4#;§.screenWidth / 2);
               §§goto(addr245);
            }
            §§goto(addr184);
         }
      }
      
      protected function §]!f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(this.§5!7§);
               if(_loc3_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(!_loc4_)
                                          {
                                             this.§>"§ = this.§1"_§.x;
                                             break;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             §§push(this.§>"§);
                                             if(_loc3_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(this.§<!W§);
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() > §§pop()[§§pop()].x);
                                                                        if(_loc4_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop3:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop4:
                                                                                       while(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr84:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(this.§5!7§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop().length)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§5!7§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_++;
                                                                                                                                       addr79:
                                                                                                                                       while(!_loc3_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§5!7§);
                                                                                                                                             addr292:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                      addr303:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(-this.§1"_§.x);
                                                                                                                                                               addr243:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(800);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§<!W§);
                                                                                                                                                                              addr258:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_);
                                                                                                                                                                                 addr259:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                                                    if(_loc4_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop15:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop17:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr367:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§>"§);
                                                                                                                                                                                                   addr324:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      addr325:
                                                                                                                                                                                                      loop20:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§<!W§);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               addr330:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr329:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr344:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr345:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr346:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§<!W§);
                                                                                                                                                                                                            addr348:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                                                                               addr359:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr366:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop16:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr334:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   addr336:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                                                                      addr337:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr282:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                            break loop4;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr366);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr256:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr345);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr324);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr325);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr367);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr300:
                                                                                                                                                }
                                                                                                                                                addr316:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   addr317:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                      addr320:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc2_++;
                                                                                                                                                         break loop3;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    addr77:
                                                                                                                                 }
                                                                                                                                 §§goto(addr335);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       _loc2_++;
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 addr133:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr109:
                                                                                                                        }
                                                                                                                        §§goto(addr300);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                              §§goto(addr133);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr123:
                                                                                                                     }
                                                                                                                     §§goto(addr317);
                                                                                                                  }
                                                                                                                  §§goto(addr292);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr122:
                                                                                                               }
                                                                                                               §§goto(addr123);
                                                                                                            }
                                                                                                            addr90:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§5!7§);
                                                                                                         }
                                                                                                         §§goto(addr122);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(this.§5!7§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop().length)
                                                                                                {
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.§5!7§);
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             addr288:
                                                                                          }
                                                                                          §§goto(addr336);
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                              }
                                                                              §§goto(addr77);
                                                                           }
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr346);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr79);
                        }
                        break;
                     }
                     §§push(-this.§1"_§.x);
                     §§goto(addr344);
                  }
                  §§goto(addr288);
               }
               §§goto(addr88);
            }
            §§goto(addr84);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            while(true)
            {
               §,!q§.§9!,§.clearLevel();
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§;2§();
            if(!(_loc1_ && _loc1_))
            {
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §;2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§@;§.getItemByName("Button_Back") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("BACK" === _loc4_)
            {
               if(!(_loc6_ && param2))
               {
                  addr190:
                  §§push(0);
                  if(_loc6_ && param1)
                  {
                  }
               }
               else
               {
                  addr223:
                  §§push(2);
                  if(!(_loc7_ || this))
                  {
                     addr253:
                  }
               }
               §§goto(addr258);
            }
            else
            {
               if("PREV" === _loc4_)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(1);
                     if(!_loc6_)
                     {
                        §§goto(addr258);
                     }
                     else
                     {
                        §§goto(addr231);
                     }
                  }
               }
               else if("NEXT" === _loc4_)
               {
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr223);
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr258:
                  loop1:
                  switch(§§pop())
                  {
                     case 0:
                        §?!r§.§"#_§("Menu_Back");
                        if(!(_loc6_ && this))
                        {
                           addr33:
                           § g§(§+!n§.§^!7§);
                           if(!_loc6_)
                           {
                              break;
                           }
                           this.§0##§(this.§=!X§);
                           if(!_loc6_)
                           {
                              addr159:
                              addr172:
                           }
                           break;
                           addr148:
                        }
                        else
                        {
                           addr113:
                           if(!this.§"#2§)
                           {
                              if(_loc7_ || param1)
                              {
                                 §§push((_loc4_ = this).§=!X§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    _loc4_.§=!X§ = _loc5_;
                                 }
                                 if(!_loc6_)
                                 {
                                    §§goto(addr148);
                                 }
                                 else
                                 {
                                    addr157:
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              break;
                           }
                        }
                        addr160:
                        break;
                     case 1:
                        §?!r§.§"#_§("Menu_Confirm");
                        if(!(_loc6_ && param3))
                        {
                           if(false)
                           {
                              §§goto(addr33);
                           }
                           else
                           {
                              §§push(this.§"#2§);
                              if(!_loc6_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push((_loc4_ = this).§=!X§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc5_ = §§pop();
                                       if(!(_loc6_ && param1))
                                       {
                                          _loc4_.§=!X§ = _loc5_;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          addr88:
                                          this.§0##§(this.§=!X§);
                                          if(_loc7_ || this)
                                          {
                                             addr99:
                                             break;
                                          }
                                          §§goto(addr172);
                                       }
                                       else
                                       {
                                          §§goto(addr157);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr99);
                              }
                              else
                              {
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr88);
                     case 2:
                        §?!r§.§"#_§("Menu_Confirm");
                        if(_loc7_ || param1)
                        {
                           §§goto(addr113);
                        }
                        §§goto(addr157);
                     case 3:
                        §?!r§.§"#_§("Menu_Confirm");
                        while(true)
                        {
                           §4#;§.singleton.§5"q§();
                           if(_loc7_)
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr157);
                           }
                           break loop1;
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr258);
               if(_loc7_ || param1)
               {
                  §§goto(addr253);
               }
            }
            §§goto(addr258);
         }
         §§goto(addr190);
      }
      
      protected function §0##§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            this.§"#2§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               for(; §§pop() <= this.§<!W§.length - 1; if(!(_loc6_ || this))
               {
                  continue;
               },if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr67);
                        §§push(0);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr68);
               },§§goto(addr25))
               {
                  §§push(param1);
                  if(_loc6_ || param1)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr97:
                     loop6:
                     while(true)
                     {
                        param1 = §§pop();
                        addr98:
                        while(true)
                        {
                           while(true)
                           {
                              addr25:
                              loop5:
                              while(true)
                              {
                                 this.§=!X§ = param1;
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    §§push(this.§<!W§);
                                 }
                                 else
                                 {
                                    addr68:
                                    while(true)
                                    {
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          break loop1;
                                       }
                                       while(true)
                                       {
                                          continue loop5;
                                       }
                                       continue loop5;
                                    }
                                    addr68:
                                 }
                                 addr105:
                                 §§push(-§§pop()[param1].x);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop() + this.§?j§);
                                    if(_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 addr122:
                                 var _loc2_:* = §§pop();
                                 §§push(this.§1"_§.x - _loc2_);
                                 if(_loc6_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:*;
                                 §§push(_loc4_ = Number(Math.abs(_loc3_)));
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(400);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§'!i§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr201:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr209:
                                                            addr210:
                                                            §§push(_loc4_ = §§pop());
                                                            if(_loc5_ && param1)
                                                            {
                                                            }
                                                            addr224:
                                                            _loc4_ = §§pop();
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr316:
                                                               addr314:
                                                               if(this.§>!M§ != null)
                                                               {
                                                                  addr320:
                                                                  this.§>!M§.stop();
                                                                  addr318:
                                                               }
                                                               this.§>!M§ = §-#C§.§%!E§.§^!H§(this.§1"_§,{"x":_loc2_},null,_loc4_,§9r§.easeOut);
                                                               addr301:
                                                               if(!_loc5_)
                                                               {
                                                                  addr261:
                                                                  §§push(this.§>!M§);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§pop().onComplete = this.§6#"§;
                                                                     addr271:
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(this.§>!M§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 §§pop().play();
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr316);
                                                                  addr313:
                                                               }
                                                               §§goto(addr318);
                                                               addr232:
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         if(§§pop() > 1)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr224);
                                                               §§push(Number(1));
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr209);
                              }
                              continue loop0;
                           }
                           continue loop6;
                        }
                     }
                  }
                  else
                  {
                     addr67:
                     param1 = §§pop();
                  }
                  §§goto(addr68);
               }
               while(true)
               {
                  §§push(this.§<!W§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().length - 1);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr97);
                        §§push(int(§§pop()));
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §6#"§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() >= this.§5!7§.length)
               {
                  if(_loc3_ || this)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§"#2§ = false;
                        addr64:
                        if(_loc3_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr71:
                              if(_loc3_ || this)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              addr97:
                              while(true)
                              {
                                 continue loop3;
                              }
                              addr97:
                           }
                        }
                     }
                     else
                     {
                        addr117:
                        this.§5!7§[_loc1_].gotoAndStop("Selected");
                        addr114:
                     }
                     while(true)
                     {
                        §§goto(addr67);
                        §§goto(addr71);
                     }
                     continue;
                     addr120:
                  }
                  §§goto(addr64);
               }
               else
               {
                  addr101:
                  if(_loc1_ == this.§=!X§)
                  {
                     §§goto(addr114);
                  }
                  else
                  {
                     §§push(this.§5!7§);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || this)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr97);
                        }
                        else
                        {
                           §§goto(addr117);
                        }
                     }
                     else
                     {
                        §§goto(addr117);
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr101);
         }
      }
   }
}
