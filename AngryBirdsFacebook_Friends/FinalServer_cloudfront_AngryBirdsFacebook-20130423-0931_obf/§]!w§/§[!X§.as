package §]!w§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §4y§.§]"6§;
   import §5!&§.§+"@§;
   import com.rovio.assets.§?q§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §[!X§ extends Sprite
   {
      
      public static const §"<§:Number = 0.5;
      
      public static const §^d§:Boolean = false;
      
      public static const §!"<§:String = "avatar_equip";
      
      public static const §@c§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §"<§ = 0.5;
            while(true)
            {
               §^d§ = false;
               while(_loc1_ || §[!X§)
               {
                  §!"<§ = "avatar_equip";
                  while(_loc1_)
                  {
                     §@c§ = "avatar_character";
                     if(!_loc2_)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public var § 2§:Object;
      
      private var §@"J§:MovieClip;
      
      private var §,w§:MovieClip;
      
      private var §;"$§:MovieClip;
      
      private var §<[§:Number = 0.5;
      
      private var §"!E§:§0"H§ = null;
      
      public function §[!X§(param1:§0"H§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
         }
         while(true)
         {
            this.§"!E§ = param1;
            loop1:
            for(; _loc5_ || _loc3_; while(_loc5_ || _loc3_)
            {
               this.§<[§ = this.§"!E§.§`k§;
               if(_loc6_ && this)
               {
                  continue;
               }
               §§goto(addr32);
            })
            {
               do
               {
                  this.§ 2§ = new Object();
                  continue loop1;
               }
               while(false);
               
               var _loc2_:Class = §?q§.§ q§("BackgroundContainer");
               if(_loc5_ || _loc3_)
               {
                  this.§,w§ = new _loc2_();
                  loop4:
                  while(true)
                  {
                     addr84:
                     while(true)
                     {
                        this.§,w§.stop();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              addChild(this.§,w§);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr84);
               }
               var _loc3_:Class = §?q§.§ q§(param1.§&N§ + "_Animations");
               if(!_loc6_)
               {
                  this.§@"J§ = new _loc3_();
                  while(true)
                  {
                     this.§@"J§.stop();
                     loop9:
                     for(; _loc5_; while(_loc5_ || param1)
                     {
                        while(true)
                        {
                           this.§@"J§.scaleY = this.§<[§;
                           addr144:
                           while(!_loc6_)
                           {
                           }
                           §§goto(addr164);
                        }
                        if(!(_loc5_ || _loc2_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr138);
                        }
                        var _loc4_:Class = §?q§.§ q§("ForegroundContainer");
                        if(!(_loc6_ && this))
                        {
                           this.§;"$§ = new _loc4_();
                        }
                        while(true)
                        {
                           this.§;"$§.stop();
                           while(!(_loc6_ && this))
                           {
                              addChild(this.§;"$§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 return;
                              }
                           }
                        }
                     })
                     {
                        this.§9x§();
                        while(true)
                        {
                           this.§@"J§.scaleX = this.§<[§;
                           continue loop9;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.addChild(this.§@"J§);
                  if(_loc5_ || param1)
                  {
                     §§goto(addr129);
                  }
                  §§goto(addr144);
               }
               §§goto(addr177);
            }
         }
      }
      
      public function §2!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,w§.visible = false;
            do
            {
               this.§;"$§.visible = false;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §^!'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,w§.gotoAndStop(param1.toLowerCase());
            do
            {
               this.§;"$§.gotoAndStop(param1.toLowerCase());
               do
               {
                  this.§]"A§(§]"1§.§&"5§.items.§3"[§(param1));
               }
               while(_loc3_ && param1);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §!"7§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§]"6§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         for each(_loc1_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(!_loc7_)
            {
               §§push(_loc1_.name);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!(_loc7_ && this))
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              addr67:
                              §§pop();
                              addr94:
                              if(_loc6_ || _loc1_)
                              {
                                 addr87:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(!_loc7_)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                              _loc2_ = §]"1§.§&"5§.items.§&!w§(_loc1_.name);
                              _loc2_ = this.§6"4§(_loc2_);
                              if(_loc6_)
                              {
                                 §§push(int(Math.random() * (_loc2_.length + 1)));
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr177:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              this.§8O§(_loc1_.name);
                              §§goto(addr167);
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr87);
            }
            §§goto(addr67);
         }
      }
      
      private function §6"4§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               if(!§+"@§.§4"M§(_loc3_.§&N§))
               {
                  continue;
               }
               if(!_loc7_)
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
         if(!(_loc4_ && param2))
         {
            this.x = param1;
         }
         loop0:
         while(true)
         {
            this.y = param2;
            loop1:
            do
            {
               this.setScale(this.§=!J§().§'&§);
               while(_loc3_)
               {
                  visible = true;
                  if(!(_loc4_ && param1))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc4_);
            
            return;
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            visible = false;
         }
      }
      
      public function §9x§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_)
            {
               break;
            }
            if(§§pop() >= this.§@"J§.numChildren)
            {
               §§goto(addr122);
            }
            _loc3_ = this.§@"J§.getChildAt(_loc1_) as MovieClip;
            if(!(_loc7_ && _loc3_))
            {
               if(_loc3_)
               {
                  if(_loc7_ && this)
                  {
                     continue;
                  }
                  _loc3_.stop();
                  if(_loc7_)
                  {
                     continue;
                  }
               }
            }
            _loc1_++;
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            var _loc5_:* = §]"1§.§&"5§.items.§"!o§;
            if(_loc6_ || _loc3_)
            {
            }
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_ || this)
               {
                  this.§@!V§(_loc2_);
               }
            }
         }
         addr122:
         if(!_loc7_)
         {
            break loop0;
         }
      }
      
      public function §@!V§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = this.§@"J§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc4_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              _loc2_.stop();
                           }
                           do
                           {
                              _loc2_.visible = false;
                           }
                           while(_loc3_ && _loc3_);
                           
                           if(_loc3_ && _loc3_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1.toUpperCase() == "NOHAT");
                                 if(!_loc4_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr101:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              addr72:
                           }
                        }
                        return;
                     }
                  }
                  addr90:
               }
               §§goto(addr101);
            }
         }
         §§goto(addr72);
      }
      
      public function §1"X§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §]"1§.§&"5§.items.§`!s§.length)
         {
            _loc2_ = §]"1§.§&"5§.items.§`!s§[_loc1_].name;
            if(_loc6_)
            {
               break;
            }
            _loc3_ = this.§>$§(_loc2_);
            if(_loc5_ || this)
            {
               if(_loc3_ == null)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               else if(_loc4_ = this.§@"J§.getChildByName("Items_" + _loc3_.§5!L§) as MovieClip)
               {
                  if(_loc5_)
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§&N§);
                  }
               }
               _loc1_++;
            }
         }
      }
      
      public function §[!p§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]"6§ = null;
         for each(_loc1_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(!(_loc4_ || this))
            {
               continue;
            }
            §§push(_loc1_.name);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc1_)
                     {
                        addr79:
                        §§pop();
                        if(_loc4_ || _loc1_)
                        {
                           addr92:
                           if(_loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
                           {
                              this.§8O§(_loc1_.name);
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr79);
            }
            §§goto(addr92);
         }
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<[§ = param1;
         }
         while(true)
         {
            this.§@"J§.scaleX = this.§<[§;
            while(_loc2_)
            {
               this.§@"J§.scaleY = this.§<[§;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function § null§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§ 2§)
         {
            if(_loc4_)
            {
               this.§]"A§(_loc1_);
            }
         }
      }
      
      public function §]"A§(param1:Item) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == null)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:Item = this.§ 2§[param1.§;"V§.toUpperCase()];
            if(_loc4_)
            {
               if(_loc2_ != param1)
               {
                  loop0:
                  while(true)
                  {
                     this.§8O§(param1.§;"V§);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           this.§ 2§[param1.§;"V§.toUpperCase()] = param1;
                           if(!_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 addr84:
                                 this.§8O§(param1.§;"V§);
                              }
                              else
                              {
                                 addr84:
                              }
                              if(true)
                              {
                                 break loop0;
                              }
                              continue loop0;
                              break;
                           }
                           continue;
                        }
                        if(_loc4_ || this)
                        {
                           if(!(_loc4_ || param1))
                           {
                              if(§^d§)
                              {
                                 §§goto(addr84);
                              }
                           }
                           else
                           {
                              addr62:
                              addr82:
                           }
                           continue loop0;
                           return;
                        }
                        break;
                        §§goto(addr84);
                     }
                     §§goto(addr62);
                  }
                  var _loc3_:MovieClip = this.§@"J§.getChildByName("Items_" + param1.§5!L§) as MovieClip;
                  if(!(_loc5_ && this))
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
                                 if(_loc4_)
                                 {
                                    this.§<"#§();
                                    addr138:
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr118);
                                       }
                                       else
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_.gotoAndStop("Item_" + param1.§&N§);
                                             addr226:
                                             addr233:
                                             while(!(_loc4_ || param1))
                                             {
                                                while(true)
                                                {
                                                   _loc3_.visible = true;
                                                   continue loop9;
                                                }
                                                continue loop9;
                                             }
                                             if(_loc3_.currentLabel != "Item_" + param1.§&N§)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   this.§8O§(param1.§5!L§);
                                                   loop5:
                                                   for(; !_loc5_; continue loop4)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.category);
                                                         addr146:
                                                         while(§§pop().toUpperCase() == "CATEGORYTOP")
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  this.§+b§();
                                                                  addr160:
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         addr118:
                                                         return;
                                                         §§goto(addr218);
                                                      }
                                                      addr218:
                                                   }
                                                   §§goto(addr226);
                                                   §§goto(addr233);
                                                }
                                                addr212:
                                             }
                                             addr163:
                                             §§push(this);
                                             §§push("Items_");
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() + param1.§5!L§);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(§§pop() + "_Equip");
                                                }
                                             }
                                             §§pop().§ I§(§§pop());
                                          }
                                          addr239:
                                       }
                                       §§goto(addr118);
                                    }
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr143);
                                       }
                                       §§goto(addr212);
                                       §§goto(addr163);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr239);
               }
               §§goto(addr82);
            }
            §§goto(addr84);
         }
         addr28:
      }
      
      private function §<"#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§@"J§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_ || _loc3_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §+b§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§@"J§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §>$§(param1:String) : Item
      {
         return this.§ 2§[param1.toUpperCase()];
      }
      
      public function §^W§() : Object
      {
         return this.§ 2§;
      }
      
      public function §8O§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§ 2§[param1.toUpperCase()];
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc5_)
               {
                  _loc3_ = this.§@"J§.getChildByName("Items_" + _loc2_.§5!L§) as MovieClip;
                  addr32:
                  if(_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc3_.visible = false;
                           if(_loc4_ || this)
                           {
                           }
                           §§goto(addr93);
                        }
                        if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                        {
                           if(_loc4_)
                           {
                              this.§<"#§();
                           }
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            addr93:
            delete this.§ 2§[param1.toUpperCase()];
            return;
         }
         §§goto(addr32);
      }
      
      public function § I§(param1:String) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         var _loc4_:int = 0;
         var _loc5_:* = this.§@"J§.currentLabels;
         while(true)
         {
            loop0:
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_)
               {
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     if(§§pop() == -1)
                     {
                        loop1:
                        while(_loc3_.name == param1)
                        {
                           if(!_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 this.§@"J§.gotoAndPlay(param1);
                              }
                           }
                           while(true)
                           {
                              §§push(Number(_loc3_.frame));
                              if(_loc7_)
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(_loc7_)
                                 {
                                    §§push(_loc3_.frame - _loc2_);
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr86:
                                 }
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                                 break;
                              }
                           }
                           return §§pop();
                        }
                        continue;
                     }
                     §§goto(addr86);
                  }
                  break;
               }
               §§goto(addr76);
            }
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  if(§§pop() != -1)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        §§push(this.§@"J§.framesLoaded - _loc2_);
                        if(_loc6_)
                        {
                           addr135:
                           return §§pop() - 1;
                        }
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr135);
            }
            addr137:
            return -1;
         }
         §§goto(addr93);
         §§push(§§pop() - 1);
      }
      
      public function §5!o§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §=!J§() : §0"H§
      {
         return this.§"!E§;
      }
      
      public function §9" §() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§2W§();
         §§push(§<D§.§[V§(_loc1_));
         if(!(_loc5_ && _loc1_))
         {
            return §§pop();
         }
      }
      
      public function §2W§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§ 2§)
         {
            if(_loc6_ || this)
            {
               _loc1_.push({
                  "itemId":_loc2_.§&N§,
                  "category":_loc2_.§;"V§,
                  "sId":_loc2_.sId,
                  "name":_loc2_.mName,
                  "categorySID":_loc2_.§6b§
               });
            }
         }
         return _loc1_;
      }
      
      public function §+"+§() : Number
      {
         return this.§<[§;
      }
      
      public function §0!8§() : MovieClip
      {
         return this.§@"J§;
      }
   }
}
