package §_-Mc§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-4§.§_-nq§;
   import §_-wv§.§_-Pj§;
   import §_-y7§.§_-xe§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-059§ extends Sprite
   {
      
      public static const §_-JT§:Number = 0.5;
      
      public static const §_-SL§:Boolean = false;
      
      public static const §_-UC§:String = "avatar_equip";
      
      public static const §_-nl§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-059§))
         {
            §_-JT§ = 0.5;
            loop0:
            while(true)
            {
               §_-SL§ = false;
               do
               {
                  §_-UC§ = "avatar_equip";
                  continue loop0;
               }
               while(_loc1_ && §_-059§);
               
            }
         }
      }
      
      public var §_-fm§:Object;
      
      private var §_-Sj§:MovieClip;
      
      private var §_-vQ§:MovieClip;
      
      private var §_-Z8§:MovieClip;
      
      private var §_-XE§:Number = 0.5;
      
      private var §_-6L§:§_-nq§ = null;
      
      public function §_-059§(param1:§_-nq§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§_-6L§ = param1;
               loop1:
               for(; !(_loc5_ && param1); loop3:
               while(_loc6_ || _loc2_)
               {
                  while(true)
                  {
                     this.§_-XE§ = this.§_-6L§.§_-RG§;
                     if(!(_loc6_ || _loc2_))
                     {
                        continue loop3;
                     }
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr35);
                  }
                  var _loc2_:Class = §_-Fc§.§_-YE§("BackgroundContainer");
                  if(!_loc5_)
                  {
                     this.§_-vQ§ = new _loc2_();
                     loop5:
                     while(true)
                     {
                        addr80:
                        while(true)
                        {
                           this.§_-vQ§.stop();
                           addr84:
                           while(_loc6_)
                           {
                           }
                           continue loop5;
                        }
                     }
                  }
                  while(true)
                  {
                     addChild(this.§_-vQ§);
                     if(_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr84);
                  }
                  var _loc3_:Class = §_-Fc§.§_-YE§(param1.§_-1h§ + "_Animations");
                  if(!_loc5_)
                  {
                     this.§_-Sj§ = new _loc3_();
                     while(true)
                     {
                        this.§_-Sj§.stop();
                        addr157:
                        while(true)
                        {
                           this.§_-00z§();
                           while(true)
                           {
                              this.§_-Sj§.scaleX = this.§_-XE§;
                              addr146:
                              while(!_loc5_)
                              {
                              }
                           }
                        }
                        addr122:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        addr129:
                        if(false)
                        {
                           while(true)
                           {
                              this.§_-Sj§.scaleY = this.§_-XE§;
                              while(_loc6_)
                              {
                                 this.addChild(this.§_-Sj§);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    §§goto(addr122);
                                 }
                                 else
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr146);
                              §§goto(addr129);
                           }
                           addr131:
                        }
                        var _loc4_:Class = §_-Fc§.§_-YE§("ForegroundContainer");
                        if(!_loc5_)
                        {
                           this.§_-Z8§ = new _loc4_();
                        }
                        while(true)
                        {
                           this.§_-Z8§.stop();
                           while(_loc6_ || _loc3_)
                           {
                              addChild(this.§_-Z8§);
                              if(_loc6_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr131);
                  }
               })
               {
                  while(true)
                  {
                     this.§_-fm§ = new Object();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §_-wf§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-vQ§.visible = false;
         }
         do
         {
            this.§_-Z8§.visible = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §_-QQ§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-vQ§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§_-Z8§.gotoAndStop(param1.toLowerCase());
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§_-QZ§(§_-xe§.§_-eA§().§_-yf§(param1));
            if(_loc3_ || param1)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §_-0BC§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§_-044§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         loop0:
         for each(_loc1_ in §_-xe§.§_-eA§().§_-05v§)
         {
            if(!(_loc7_ && this))
            {
               §§push(_loc1_.name);
               if(!_loc7_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc6_ || this)
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        addr62:
                        if(§§pop())
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§pop();
                              if(!(_loc7_ && _loc1_))
                              {
                                 addr91:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(_loc7_ && this)
                                 {
                                 }
                                 addr102:
                                 if(§§pop())
                                 {
                                    addr103:
                                    _loc2_ = §_-xe§.§_-eA§().§_-ng§(_loc1_.name);
                                    _loc2_ = this.§_-0b§(_loc2_);
                                    if(_loc6_)
                                    {
                                       §§push(int(Math.random() * (_loc2_.length + 1)));
                                       loop1:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   if(§§pop() >= _loc2_.length)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         this.§_-8U§(_loc1_.name);
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   this.§_-QZ§(_loc2_[_loc3_]);
                                                   if(_loc7_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr103);
                           }
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr62);
               }
               §§goto(addr91);
            }
            §§goto(addr103);
         }
      }
      
      private function §_-0b§(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(_loc6_ || this)
            {
               if(§_-Kz§.§_-AJ§(_loc3_.§_-1h§))
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.x = param1;
            loop0:
            while(true)
            {
               this.y = param2;
               while(true)
               {
                  this.§_-3U§(this.§_-SZ§().§_-P9§);
                  addr47:
                  while(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            visible = true;
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr47);
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            visible = false;
         }
      }
      
      public function §_-00z§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§_-Sj§.numChildren)
         {
            _loc3_ = this.§_-Sj§.getChildAt(_loc1_) as MovieClip;
            if(!_loc7_)
            {
               if(_loc3_)
               {
                  if(!_loc7_)
                  {
                     addr41:
                     _loc3_.stop();
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr41);
         }
         if(_loc6_)
         {
            var _loc4_:int = 0;
            if(_loc6_)
            {
               var _loc5_:* = §_-xe§.§_-eA§().§_-U4§;
               if(_loc6_)
               {
                  for each(_loc2_ in _loc5_)
                  {
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  addr117:
                  return;
                  addr113:
                  addr116:
               }
               while(true)
               {
                  this.§_-ya§(_loc2_);
                  §§goto(addr113);
               }
            }
            §§goto(addr116);
         }
         §§goto(addr117);
      }
      
      public function §_-ya§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = this.§_-Sj§.getChildByName("Items_" + param1) as MovieClip;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr102:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        addr83:
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  do
                  {
                     if(!(_loc3_ && param1))
                     {
                        continue;
                     }
                     §§goto(addr102);
                  }
                  while(_loc2_.stop(), do
                  {
                     _loc2_.visible = false;
                  }
                  while(_loc3_);
                  , !_loc4_);
                  
                  break;
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function §_-rU§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §_-xe§.§_-eA§().§_-05v§.length)
         {
            _loc2_ = §_-xe§.§_-eA§().§_-05v§[_loc1_].name;
            if(_loc5_ && this)
            {
               break;
            }
            _loc3_ = this.§_-02n§(_loc2_);
            if(!_loc5_)
            {
               if(_loc3_ == null)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  addr68:
               }
               else if(_loc4_ = this.§_-Sj§.getChildByName("Items_" + _loc3_.§_-In§) as MovieClip)
               {
                  if(!_loc5_)
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§_-1h§);
                  }
               }
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr68);
         }
      }
      
      public function §_-mI§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-044§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = §_-xe§.§_-eA§().§_-05v§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               §§push(_loc1_.name);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc5_ && _loc1_)
                           {
                              continue;
                           }
                           addr88:
                           §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr94:
                     }
                  }
                  else
                  {
                     this.§_-8U§(_loc1_.name);
                  }
                  continue;
               }
               §§goto(addr88);
            }
            §§goto(addr94);
         }
      }
      
      public function §_-3U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-XE§ = param1;
            while(true)
            {
               this.§_-Sj§.scaleX = this.§_-XE§;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§_-Sj§.scaleY = this.§_-XE§;
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §_-015§(param1:§_-059§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:§_-044§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §_-xe§.§_-eA§().§_-05v§)
         {
            if(!(_loc9_ && this))
            {
               §§push(_loc3_.name);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§_-fm§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§_-fm§[_loc4_.toUpperCase()])
            {
               if(!(_loc9_ && this))
               {
                  this.§_-QZ§(_loc5_);
                  if(!(_loc9_ && _loc2_))
                  {
                     loop1:
                     do
                     {
                        if(_loc2_)
                        {
                           if(_loc8_ || _loc3_)
                           {
                              if(_loc8_)
                              {
                                 addr141:
                                 param1.§_-QZ§(_loc2_);
                                 break;
                              }
                              addr149:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                           break;
                        }
                        param1.§_-8U§(_loc4_);
                     }
                     while(_loc8_ || _loc2_);
                     
                     continue;
                     addr129:
                  }
                  while(false)
                  {
                     §§goto(addr129);
                  }
                  continue;
               }
               §§goto(addr141);
            }
            else
            {
               this.§_-8U§(_loc4_);
            }
            §§goto(addr149);
         }
      }
      
      public function §_-fs§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§_-fm§)
         {
            if(_loc4_)
            {
               this.§_-QZ§(_loc1_);
            }
         }
      }
      
      public function §_-QZ§(param1:Item) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param1 == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:Item = this.§_-fm§[param1.§_-4k§.toUpperCase()];
            if(!_loc4_)
            {
               if(_loc2_ != param1)
               {
                  loop0:
                  while(true)
                  {
                     this.§_-8U§(param1.§_-4k§);
                     while(true)
                     {
                        if(!(_loc5_ || param1))
                        {
                           continue loop0;
                        }
                        if(!(_loc4_ && _loc2_))
                        {
                           this.§_-fm§[param1.§_-4k§.toUpperCase()] = param1;
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc4_ && this)
                              {
                                 addr104:
                                 break;
                              }
                              addr104:
                              if(true)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr85);
                  }
                  var _loc3_:MovieClip = this.§_-Sj§.getChildByName("Items_" + param1.§_-In§) as MovieClip;
                  if(_loc5_)
                  {
                     if(!_loc3_)
                     {
                        §§push(param1.category);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop().toUpperCase() == "CATEGORYTOP")
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       this.§_-5g§();
                                       addr166:
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr129);
                                             }
                                             else
                                             {
                                                addr253:
                                                _loc3_.visible = true;
                                                loop9:
                                                while(true)
                                                {
                                                   _loc3_.gotoAndStop("Item_" + param1.§_-1h§);
                                                   addr250:
                                                   while(true)
                                                   {
                                                      if(_loc3_.currentLabel != "Item_" + param1.§_-1h§)
                                                      {
                                                         while(true)
                                                         {
                                                            §_-xe§.§_-0Ec§.§_-8U§(param1.§_-In§);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(param1.category);
                                                                  addr181:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop().toUpperCase() == "CATEGORYTOP")
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§_-03k§();
                                                                           addr186:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr211:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(this);
                                                                                 addr198:
                                                                                 §§push("Items_");
                                                                                 continue loop9;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() + param1.§_-In§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() + "_Equip");
                                                                                    }
                                                                                 }
                                                                                 §§pop().§_-03w§(§§pop());
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        addr184:
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr237:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr166);
                           }
                           addr129:
                           return;
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr250);
               }
               if(§_-SL§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§_-8U§(param1.§_-4k§);
                  }
                  §§goto(addr104);
               }
               addr85:
               return;
            }
            §§goto(addr104);
         }
         addr29:
      }
      
      private function §_-5g§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§_-Sj§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §_-03k§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§_-Sj§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §_-02n§(param1:String) : Item
      {
         return this.§_-fm§[param1.toUpperCase()];
      }
      
      public function §_-0m§() : Object
      {
         return this.§_-fm§;
      }
      
      public function §_-8U§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§_-fm§[param1.toUpperCase()];
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!_loc5_)
               {
                  addr47:
                  _loc3_ = this.§_-Sj§.getChildByName("Items_" + _loc2_.§_-In§) as MovieClip;
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           _loc3_.visible = false;
                           if(!_loc5_)
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr93);
                  }
                  this.§_-5g§();
               }
               §§goto(addr93);
            }
            addr93:
            delete this.§_-fm§[param1.toUpperCase()];
            return;
         }
         §§goto(addr47);
      }
      
      public function §_-03w§(param1:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         loop0:
         for each(_loc3_ in this.§_-Sj§.currentLabels)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               while(true)
               {
                  if(§§pop() != -1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc3_.frame - _loc2_);
                        if(_loc7_)
                        {
                           §§push(§§pop() - 1);
                           break;
                        }
                        break;
                     }
                     addr105:
                     while(true)
                     {
                     }
                  }
                  addr75:
                  while(_loc3_.name == param1)
                  {
                  }
                  addr86:
                  §§push(Number(_loc3_.frame));
                  continue loop0;
                  if(!(_loc6_ && _loc2_))
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(!_loc6_)
                     {
                        if(_loc7_ || this)
                        {
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr75);
                        }
                        while(true)
                        {
                           this.§_-Sj§.gotoAndPlay(param1);
                        }
                        addr80:
                     }
                     while(!_loc6_)
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr105);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr80);
         }
         if(_loc7_ || param1)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() != -1)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§_-Sj§.framesLoaded - _loc2_);
                     if(_loc7_ || _loc3_)
                     {
                        addr151:
                        return §§pop() - 1;
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr153);
            }
            §§goto(addr151);
         }
         addr153:
         return -1;
      }
      
      public function §_-u§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §_-SZ§() : §_-nq§
      {
         return this.§_-6L§;
      }
      
      public function §_-Fa§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§_-Jf§();
         §§push(§_-Pj§.§_-qM§(_loc1_));
         if(_loc5_)
         {
            return §§pop();
         }
      }
      
      public function §_-Jf§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§_-fm§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc1_.push({
                  "itemId":_loc2_.§_-1h§,
                  "category":_loc2_.§_-4k§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §_-Dw§() : Number
      {
         return this.§_-XE§;
      }
      
      public function §_-fE§() : MovieClip
      {
         return this.§_-Sj§;
      }
   }
}
