package §#!c§
{
   import §"+§.§6" §;
   import §#!o§.§5#§;
   import §#!o§.§>!,§;
   import §#!o§.Item;
   import §0!B§.§%9§;
   import §;#§.§;?§;
   import com.rovio.assets.§,!j§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!I§ extends Sprite
   {
      
      public static const §;"!§:Number = 0.5;
      
      public static const §3e§:Boolean = false;
      
      public static const §1Z§:String = "avatar_equip";
      
      public static const §<!"§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;"!§ = 0.5;
            loop0:
            while(true)
            {
               §3e§ = false;
               addr69:
               while(true)
               {
                  §1Z§ = "avatar_equip";
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      public var §6!d§:Object;
      
      private var §9+§:MovieClip;
      
      private var §@V§:MovieClip;
      
      private var §?>§:MovieClip;
      
      private var §?z§:Number = 0.5;
      
      private var §8X§:§5#§ = null;
      
      public function §!I§(param1:§5#§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
         }
         while(true)
         {
            this.§8X§ = param1;
            loop1:
            while(true)
            {
               addr34:
               addr57:
               addr68:
               while(true)
               {
                  this.§6!d§ = new Object();
                  continue loop1;
               }
               var _loc2_:Class = §,!j§.§!!N§("BackgroundContainer");
               if(!(_loc6_ && _loc3_))
               {
                  this.§@V§ = new _loc2_();
                  addr79:
                  this.§@V§.stop();
                  if(!_loc6_)
                  {
                     addChild(this.§@V§);
                     if(!_loc6_)
                     {
                        if(false)
                        {
                           §§goto(addr79);
                        }
                        var _loc3_:Class = §,!j§.§!!N§(param1.§9!^§ + "_Animations");
                        if(!(_loc6_ && _loc2_))
                        {
                           this.§9+§ = new _loc3_();
                           this.§9+§.stop();
                           this.§%h§();
                           addr156:
                           if(!_loc6_)
                           {
                              this.§9+§.scaleX = this.§?z§;
                              addr141:
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    addr126:
                                    this.§9+§.scaleY = this.§?z§;
                                    if(_loc5_)
                                    {
                                       this.addChild(this.§9+§);
                                       if(_loc5_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr126);
                                          }
                                          var _loc4_:Class = §,!j§.§!!N§("ForegroundContainer");
                                          if(!(_loc6_ && this))
                                          {
                                             this.§?>§ = new _loc4_();
                                             this.§?>§.stop();
                                             addr201:
                                             if(_loc5_)
                                             {
                                                addChild(this.§?>§);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr201);
                                                }
                                                return;
                                                addr203:
                                             }
                                             addr208:
                                             §§goto(addr208);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr126);
                                       addr134:
                                    }
                                    §§goto(addr141);
                                 }
                              }
                              §§goto(addr156);
                           }
                           addr161:
                           §§goto(addr161);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr79);
                     addr85:
                  }
                  addr100:
                  §§goto(addr100);
               }
               §§goto(addr85);
            }
         }
      }
      
      public function §6Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@V§.visible = false;
            do
            {
               this.§?>§.visible = false;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §3!p§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@V§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§?>§.gotoAndStop(param1.toLowerCase());
               while(_loc3_)
               {
                  this.§'<§(§;?§.§]0§().§`!H§(param1));
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §6[§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§>!,§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         loop0:
         for each(_loc1_ in §;?§.§]0§().§>!J§)
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc1_.name);
               if(_loc6_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc6_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        addr62:
                        if(§§pop())
                        {
                           if(_loc6_ || _loc3_)
                           {
                              addr81:
                              §§pop();
                              if(!(_loc7_ && _loc1_))
                              {
                                 addr91:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(_loc6_)
                                 {
                                    addr97:
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              _loc2_ = §;?§.§]0§().§7!§(_loc1_.name);
                              _loc2_ = this.§1!5§(_loc2_);
                              if(!_loc7_)
                              {
                                 §§push(int(Math.random() * (_loc2_.length + 1)));
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    do
                                    {
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() >= _loc2_.length)
                                             {
                                                break;
                                                addr155:
                                             }
                                             this.§'<§(_loc2_[_loc3_]);
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                if(false)
                                                {
                                                   continue;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    while(_loc7_);
                                    
                                 }
                              }
                              this.§`!I§(_loc1_.name);
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr91);
         }
      }
      
      private function §1!5§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               if(§6" §.§=?§(_loc3_.§9!^§))
               {
                  if(_loc7_ || _loc3_)
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
         if(_loc4_ || _loc3_)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               loop1:
               while(_loc4_ || _loc3_)
               {
                  this.setScale(this.§&o§().§[x§);
                  while(true)
                  {
                     visible = true;
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            visible = false;
         }
      }
      
      public function §%h§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§9+§.numChildren)
         {
            _loc3_ = this.§9+§.getChildAt(_loc1_) as MovieClip;
            if(!_loc7_)
            {
               if(_loc3_)
               {
                  if(_loc7_ && _loc2_)
                  {
                     continue;
                  }
                  addr46:
                  _loc3_.stop();
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               §§push(_loc1_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc7_)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr71);
            }
            §§goto(addr46);
         }
         if(_loc6_ || _loc3_)
         {
            var _loc4_:int = 0;
            if(_loc6_ || this)
            {
               var _loc5_:* = §;?§.§]0§().§9!B§;
               if(_loc7_)
               {
               }
               for each(_loc2_ in _loc5_)
               {
                  if(!_loc7_)
                  {
                     this.§<![§(_loc2_);
                  }
               }
            }
         }
      }
      
      public function §<![§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§9+§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc3_)
         {
            §§push(Boolean(_loc2_));
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr106:
                     loop4:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc4_ && this))
                        {
                           loop0:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    _loc2_.stop();
                                    do
                                    {
                                       _loc2_.visible = false;
                                    }
                                    while(!_loc3_);
                                    
                                    if(_loc3_ || this)
                                    {
                                       break loop0;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop4;
                           }
                           return;
                           addr87:
                        }
                     }
                  }
                  addr105:
               }
               §§goto(addr87);
            }
            §§goto(addr105);
         }
         §§goto(addr106);
      }
      
      public function §3[§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §;?§.§]0§().§>!J§.length)
         {
            _loc2_ = §;?§.§]0§().§>!J§[_loc1_].name;
            if(_loc6_ && _loc2_)
            {
               break;
            }
            _loc3_ = this.§-I§(_loc2_);
            if(_loc5_ || _loc2_)
            {
               if(_loc3_ == null)
               {
                  if(!(_loc5_ || _loc1_))
                  {
                     continue;
                  }
                  addr77:
               }
               else if(_loc4_ = this.§9+§.getChildByName("Items_" + _loc3_.§>!i§) as MovieClip)
               {
                  if(_loc5_)
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§9!^§);
                  }
               }
               §§push(_loc1_);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc6_)
                  {
                     addr121:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr121);
            }
            §§goto(addr77);
         }
      }
      
      public function §2<§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!,§ = null;
         for each(_loc1_ in §;?§.§]0§().§>!J§)
         {
            if(!(_loc4_ && this))
            {
               §§push(_loc1_.name);
               if(_loc5_ || _loc1_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr79:
                           §§pop();
                           if(!(_loc4_ && _loc1_))
                           {
                              addr92:
                              if(_loc1_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
                              {
                                 this.§`!I§(_loc1_.name);
                                 continue;
                              }
                              if(_loc4_)
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
            }
            §§goto(addr92);
         }
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?z§ = param1;
            do
            {
               this.§9+§.scaleX = this.§?z§;
               do
               {
                  this.§9+§.scaleY = this.§?z§;
               }
               while(!_loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §=!]§(param1:§!I§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:§>!,§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §;?§.§]0§().§>!J§)
         {
            if(_loc9_)
            {
               §§push(_loc3_.name);
               if(!(_loc8_ && param1))
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§6!d§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§6!d§[_loc4_.toUpperCase()])
            {
               if(!(_loc8_ && _loc2_))
               {
                  this.§'<§(_loc5_);
                  if(!_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(_loc9_)
                           {
                              param1.§'<§(_loc2_);
                              break;
                           }
                           break;
                        }
                        param1.§`!I§(_loc4_);
                        if(!(_loc9_ || param1))
                        {
                           break;
                        }
                        if(_loc8_ && _loc3_)
                        {
                           while(true)
                           {
                              continue loop1;
                           }
                           addr140:
                        }
                     }
                     continue;
                     addr127:
                     addr135:
                  }
                  while(false)
                  {
                     §§goto(addr127);
                  }
                  continue;
               }
               §§goto(addr135);
            }
            else
            {
               this.§`!I§(_loc4_);
            }
            §§goto(addr140);
         }
      }
      
      public function §@!R§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§6!d§)
         {
            if(_loc5_)
            {
               this.§'<§(_loc1_);
            }
         }
      }
      
      public function §'<§(param1:Item) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(param1 == null)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:Item = this.§6!d§[param1.§^w§.toUpperCase()];
            if(!_loc4_)
            {
               if(_loc2_ == param1)
               {
                  if(_loc5_)
                  {
                     if(§3e§)
                     {
                        addr85:
                        this.§`!I§(param1.§^w§);
                     }
                     return;
                  }
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     this.§`!I§(param1.§^w§);
                     while(_loc5_)
                     {
                        this.§6!d§[param1.§^w§.toUpperCase()] = param1;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           while(false)
                           {
                              continue loop0;
                           }
                           var _loc3_:MovieClip = this.§9+§.getChildByName("Items_" + param1.§>!i§) as MovieClip;
                           if(_loc5_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(param1.category);
                                 if(!(_loc4_ && param1))
                                 {
                                    if(§§pop().toUpperCase() == "CATEGORYTOP")
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§7B§();
                                                addr104:
                                                return;
                                                addr141:
                                             }
                                             else
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(param1.category);
                                                         addr145:
                                                         while(§§pop().toUpperCase() == "CATEGORYTOP")
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr162:
                                                                  this.§9!=§();
                                                                  addr164:
                                                                  break;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr218:
                                                                     §;?§.§,K§.§`!I§(param1.§>!i§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr233:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(_loc3_.currentLabel != "Item_" + param1.§9!^§)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr243:
                                                                           while(true)
                                                                           {
                                                                              _loc3_.visible = true;
                                                                           }
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     addr223:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc3_.gotoAndStop("Item_" + param1.§9!^§);
                                                                     §§goto(addr233);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                   }
                                                   §§goto(addr223);
                                                }
                                             }
                                             §§goto(addr104);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr162);
                           addr65:
                        }
                        else
                        {
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr65);
         }
         addr34:
      }
      
      private function §7B§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§9+§.getChildByName("Items_NoHat") as MovieClip;
         if(!_loc3_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §9!=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§9+§.getChildByName("Items_NoHat") as MovieClip;
         if(!_loc2_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §-I§(param1:String) : Item
      {
         return this.§6!d§[param1.toUpperCase()];
      }
      
      public function §=6§() : Object
      {
         return this.§6!d§;
      }
      
      public function §`!I§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§6!d§[param1.toUpperCase()];
         if(!_loc5_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc3_ = this.§9+§.getChildByName("Items_" + _loc2_.§>!i§) as MovieClip;
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc3_.visible = false;
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(_loc5_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr108);
                           }
                        }
                     }
                     §§goto(addr108);
                  }
                  this.§7B§();
               }
            }
            §§goto(addr108);
         }
         addr108:
         delete this.§6!d§[param1.toUpperCase()];
      }
      
      public function §>U§(param1:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         var _loc4_:int = 0;
         var _loc5_:* = this.§9+§.currentLabels;
         while(true)
         {
            loop0:
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§push(_loc2_);
                  if(_loc7_ || _loc3_)
                  {
                     if(§§pop() == -1)
                     {
                        loop1:
                        while(_loc3_.name == param1)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              if(_loc6_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 addr114:
                                 §§push(_loc3_.frame - _loc2_);
                                 break loop0;
                              }
                              while(true)
                              {
                                 this.§9+§.gotoAndPlay(param1);
                              }
                           }
                           while(true)
                           {
                              §§push(Number(_loc3_.frame));
                              if(_loc6_)
                              {
                                 break;
                              }
                              if(!(_loc7_ || param1))
                              {
                                 break loop0;
                              }
                              _loc2_ = §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           return §§pop();
                        }
                        continue;
                     }
                     §§goto(addr114);
                  }
                  break;
               }
               §§goto(addr99);
            }
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && this))
               {
                  if(§§pop() != -1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr154);
                     }
                  }
                  return -1;
               }
               §§goto(addr166);
            }
            addr154:
            §§push(this.§9+§.framesLoaded - _loc2_);
            if(_loc7_ || this)
            {
               addr166:
               return §§pop() - 1;
            }
         }
         §§goto(addr119);
         §§push(§§pop() - 1);
      }
      
      public function §[!l§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §&o§() : §5#§
      {
         return this.§8X§;
      }
      
      public function §1n§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§@3§();
         §§push(§%9§.§?_§(_loc1_));
         if(_loc4_ || _loc2_)
         {
            return §§pop();
         }
      }
      
      public function §@3§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in this.§6!d§)
         {
            if(!(_loc6_ && _loc3_))
            {
               _loc1_.push({
                  "itemId":_loc2_.§9!^§,
                  "category":_loc2_.§^w§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §!F§() : Number
      {
         return this.§?z§;
      }
      
      public function §=!s§() : MovieClip
      {
         return this.§9+§;
      }
   }
}
