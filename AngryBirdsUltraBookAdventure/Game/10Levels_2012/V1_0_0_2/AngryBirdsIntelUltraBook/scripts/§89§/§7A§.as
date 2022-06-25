package §89§
{
   import §1e§.§5m§;
   import §7r§.§#!q§;
   import §7r§.§?V§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import §finally§.§4!S§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7A§ extends Sprite
   {
      
      public static const §]%§:Number = 0.5;
      
      public static const §<v§:Boolean = false;
      
      public static const §8!1§:String = "avatar_equip";
      
      public static const §"4§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]%§ = 0.5;
            loop0:
            while(true)
            {
               §<v§ = false;
               while(true)
               {
                  §8!1§ = "avatar_equip";
                  loop2:
                  while(_loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §"4§ = "avatar_character";
                        if(!_loc2_)
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
         §§goto(addr68);
      }
      
      public var §]H§:Object;
      
      private var §"!V§:MovieClip;
      
      private var §?!<§:MovieClip;
      
      private var §`&§:MovieClip;
      
      private var §'8§:Number = 0.5;
      
      private var §2!!§:§#!q§ = null;
      
      public function §7A§(param1:§#!q§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§2!!§ = param1;
               while(true)
               {
                  addr42:
                  addr33:
                  while(true)
                  {
                     this.§]H§ = new Object();
                     addr47:
                     while(_loc6_)
                     {
                     }
                     continue loop0;
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr42);
                  }
                  var _loc2_:Class = §%!G§.§^!B§("BackgroundContainer");
                  if(_loc6_)
                  {
                     this.§?!<§ = new _loc2_();
                  }
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        this.§?!<§.stop();
                        while(_loc6_)
                        {
                           addChild(this.§?!<§);
                           if(!(_loc5_ && param1))
                           {
                              if(true)
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                        }
                        continue loop5;
                     }
                     var _loc3_:Class = §%!G§.§^!B§(param1.§&!X§ + "_Animations");
                     if(!_loc5_)
                     {
                        this.§"!V§ = new _loc3_();
                        loop8:
                        while(true)
                        {
                           this.§"!V§.stop();
                           while(true)
                           {
                              this.§#!'§();
                              continue loop8;
                              addr135:
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              this.addChild(this.§"!V§);
                              if(!_loc5_)
                              {
                                 while(false)
                                 {
                                    while(true)
                                    {
                                       this.§"!V§.scaleY = this.§'8§;
                                    }
                                 }
                                 var _loc4_:Class = §%!G§.§^!B§("ForegroundContainer");
                                 addr120:
                                 if(_loc6_ || param1)
                                 {
                                    this.§`&§ = new _loc4_();
                                 }
                                 while(true)
                                 {
                                    this.§`&§.stop();
                                    while(_loc6_)
                                    {
                                       addChild(this.§`&§);
                                       if(_loc6_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                                 addr120:
                              }
                              loop13:
                              while(true)
                              {
                                 if(_loc5_ && _loc2_)
                                 {
                                    while(_loc6_)
                                    {
                                       §§goto(addr122);
                                       continue loop13;
                                    }
                                    continue loop8;
                                    addr149:
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         while(true)
         {
            this.§'8§ = this.§2!!§.§2!V§;
            if(!_loc5_)
            {
               §§goto(addr33);
            }
            §§goto(addr47);
         }
         §§goto(addr58);
      }
      
      public function §1!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!<§.visible = false;
            do
            {
               this.§`&§.visible = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §&!x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!<§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§`&§.gotoAndStop(param1.toLowerCase());
               while(!(_loc3_ && _loc2_))
               {
                  this.§9!r§(§6!_§.§1w§().§1]§(param1));
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function § !5§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§?V§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(_loc6_ || _loc1_)
            {
               §§push(_loc1_.name);
               if(!_loc7_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!(_loc7_ && this))
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!(_loc7_ && this))
                              {
                                 addr86:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(!_loc6_)
                                 {
                                 }
                                 addr92:
                                 if(§§pop())
                                 {
                                    addr93:
                                    _loc2_ = §6!_§.§1w§().§ L§(_loc1_.name);
                                    _loc2_ = this.§=Y§(_loc2_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(int(Math.random() * (_loc2_.length + 1)));
                                       loop1:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr175:
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr132);
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr92);
                     }
                     §§push(!§§pop());
                  }
                  §§goto(addr92);
               }
               §§goto(addr86);
            }
            §§goto(addr93);
         }
      }
      
      private function §=Y§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               if(!§5m§.§+!d§(_loc3_.§&!X§))
               {
                  continue;
               }
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.x = param1;
         }
         while(true)
         {
            this.y = param2;
            while(!(_loc4_ && _loc3_))
            {
               this.§<!K§(this.§6;§().§7!6§);
               while(!_loc4_)
               {
                  visible = true;
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            visible = false;
         }
      }
      
      public function §#!'§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§"!V§.numChildren)
         {
            _loc3_ = this.§"!V§.getChildAt(_loc1_) as MovieClip;
            if(_loc7_ && _loc2_)
            {
               continue;
            }
            if(_loc3_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               _loc3_.stop();
               if(_loc7_)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(!(_loc7_ && _loc1_))
               {
                  addr81:
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr81);
         }
         if(_loc6_)
         {
            var _loc4_:int = 0;
            if(_loc6_)
            {
               var _loc5_:* = §6!_§.§1w§().§]n§;
               if(!_loc7_)
               {
                  for each(_loc2_ in _loc5_)
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  addr127:
                  return;
                  addr123:
                  addr126:
               }
               while(true)
               {
                  this.§?!w§(_loc2_);
                  §§goto(addr123);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr127);
      }
      
      public function §?!w§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§"!V§.getChildByName("Items_" + param1) as MovieClip;
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr101:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr100:
               }
               for(; §§pop(); §§goto(addr101))
               {
                  if(!_loc4_)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     _loc2_.stop();
                     do
                     {
                        _loc2_.visible = false;
                     }
                     while(_loc4_);
                     
                     break;
                     addr88:
                  }
                  §§goto(addr88);
               }
               return;
            }
            §§goto(addr100);
         }
         §§goto(addr88);
      }
      
      public function §3$§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §6!_§.§1w§().§=!b§.length)
         {
            _loc2_ = §6!_§.§1w§().§=!b§[_loc1_].name;
            if(_loc6_)
            {
               break;
            }
            _loc3_ = this.§66§(_loc2_);
            if(!_loc6_)
            {
               if(_loc3_ == null)
               {
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
                  addr67:
               }
               else if(_loc4_ = this.§"!V§.getChildByName("Items_" + _loc3_.§-^§) as MovieClip)
               {
                  if(_loc5_ || _loc2_)
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§&!X§);
                  }
               }
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc6_ && this))
                  {
                     addr116:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr116);
            }
            §§goto(addr67);
         }
      }
      
      public function §,!!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§?V§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_.name);
               if(!(_loc5_ && _loc1_))
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!(_loc5_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc5_ && _loc2_)
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
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     this.§'!X§(_loc1_.name);
                  }
                  continue;
               }
            }
            §§goto(addr88);
         }
      }
      
      public function §<!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'8§ = param1;
         }
         do
         {
            this.§"!V§.scaleX = this.§'8§;
            do
            {
               this.§"!V§.scaleY = this.§'8§;
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function §8!g§(param1:§7A§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:§?V§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         loop0:
         for each(_loc3_ in §6!_§.§1w§().§=!b§)
         {
            if(_loc8_ || _loc3_)
            {
               §§push(_loc3_.name);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§]H§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§]H§[_loc4_.toUpperCase()])
            {
               if(_loc8_ || this)
               {
                  this.§9!r§(_loc5_);
                  if(_loc8_ || _loc3_)
                  {
                     loop1:
                     while(!_loc2_)
                     {
                        param1.§'!X§(_loc4_);
                        if(!(_loc9_ && _loc3_))
                        {
                           if(!(_loc8_ || _loc3_))
                           {
                              break;
                           }
                           if(!(_loc9_ && param1))
                           {
                              if(false)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           addr154:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     param1.§9!r§(_loc2_);
                     addr103:
                  }
                  §§goto(addr149);
               }
               §§goto(addr103);
            }
            else
            {
               this.§'!X§(_loc4_);
            }
            §§goto(addr154);
         }
      }
      
      public function §1! §() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Item = null;
         var _loc3_:* = this.§]H§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               this.§9!r§(_loc1_);
            }
         }
      }
      
      public function §9!r§(param1:Item) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:Item = this.§]H§[param1.§@§.toUpperCase()];
         if(!_loc5_)
         {
            if(_loc2_ != param1)
            {
               loop0:
               while(true)
               {
                  this.§'!X§(param1.§@§);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§]H§[param1.§@§.toUpperCase()] = param1;
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              addr75:
                              if(§<v§)
                              {
                                 if(_loc4_ || this)
                                 {
                                    this.§'!X§(param1.§@§);
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr69);
                           }
                           while(false)
                           {
                              continue loop0;
                           }
                           var _loc3_:MovieClip = this.§"!V§.getChildByName("Items_" + param1.§-^§) as MovieClip;
                           if(!_loc5_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(param1.category);
                                 if(!_loc5_)
                                 {
                                    if(§§pop().toUpperCase() == "CATEGORYTOP")
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                this.§`C§();
                                                addr140:
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      §§goto(addr113);
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§<!;§();
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_.visible = true;
                                                            loop6:
                                                            while(true)
                                                            {
                                                               _loc3_.gotoAndStop("Item_" + param1.§&!X§);
                                                               addr224:
                                                               addr168:
                                                               while(_loc3_.currentLabel != "Item_" + param1.§&!X§)
                                                               {
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §6!_§.§+!e§.§'!X§(param1.§-^§);
                                                                     addr216:
                                                                     while(true)
                                                                     {
                                                                        addr155:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.category);
                                                                           addr158:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop().toUpperCase() != "CATEGORYTOP")
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           addr185:
                                                                        }
                                                                     }
                                                                     addr216:
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                               §§push(this);
                                                               §§push("Items_");
                                                               addr181:
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() + param1.§-^§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop() + "_Equip");
                                                                  }
                                                               }
                                                               §§pop().§1-§(§§pop());
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr224);
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                            }
                                                         }
                                                         addr227:
                                                      }
                                                   }
                                                   addr117:
                                                   addr113:
                                                   return;
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr158);
                              }
                           }
                           §§goto(addr227);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  addr69:
                  return;
               }
            }
            §§goto(addr75);
         }
         §§goto(addr52);
      }
      
      private function §`C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         if(!_loc3_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §<!;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §66§(param1:String) : Item
      {
         return this.§]H§[param1.toUpperCase()];
      }
      
      public function §5]§() : Object
      {
         return this.§]H§;
      }
      
      public function §'!X§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§]H§[param1.toUpperCase()];
         if(!(_loc5_ && _loc3_))
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  _loc3_ = this.§"!V§.getChildByName("Items_" + _loc2_.§-^§) as MovieClip;
                  if(!(_loc5_ && this))
                  {
                     if(_loc3_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc3_.visible = false;
                           if(_loc4_)
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(_loc5_ && this)
                                 {
                                 }
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr103);
                  }
                  this.§`C§();
               }
            }
            §§goto(addr103);
         }
         addr103:
         delete this.§]H§[param1.toUpperCase()];
      }
      
      public function §1-§(param1:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         loop0:
         for each(_loc3_ in this.§"!V§.currentLabels)
         {
            if(_loc7_ || this)
            {
               §§push(_loc2_);
               loop1:
               while(§§pop() == -1)
               {
                  loop2:
                  while(_loc3_.name == param1)
                  {
                     loop3:
                     while(true)
                     {
                        this.§"!V§.gotoAndPlay(param1);
                        addr93:
                        while(true)
                        {
                           §§push(Number(_loc3_.frame));
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(!_loc7_)
                                       {
                                          break loop1;
                                       }
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr109);
                     }
                  }
                  continue loop0;
               }
               §§push(_loc3_.frame - _loc2_);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               addr109:
               return §§pop();
            }
            §§goto(addr93);
         }
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() != -1)
               {
                  if(_loc7_)
                  {
                     §§goto(addr139);
                  }
               }
               return -1;
            }
            §§goto(addr146);
         }
         addr139:
         §§push(this.§"!V§.framesLoaded - _loc2_);
         if(_loc7_)
         {
            addr146:
            return §§pop() - 1;
         }
      }
      
      public function §implements§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §6;§() : §#!q§
      {
         return this.§2!!§;
      }
      
      public function §?!_§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§&@§();
         §§push(§4!S§.§#D§(_loc1_));
         if(!(_loc4_ && _loc1_))
         {
            return §§pop();
         }
      }
      
      public function §&@§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§]H§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.push({
                  "itemId":_loc2_.§&!X§,
                  "category":_loc2_.§@§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §1!-§() : Number
      {
         return this.§'8§;
      }
      
      public function §'!'§() : MovieClip
      {
         return this.§"!V§;
      }
   }
}
