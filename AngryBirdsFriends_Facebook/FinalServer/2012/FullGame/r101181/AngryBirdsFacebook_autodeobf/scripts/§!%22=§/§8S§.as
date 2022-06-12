package §!"=§
{
   import §!K§.Item;
   import §!K§.§]q§;
   import §!K§.§use §;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import §@">§.§%!0§;
   import com.rovio.assets.§8B§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8S§ extends Sprite
   {
      
      public static const §3y§:Number = 0.5;
      
      public static const §9";§:Boolean = false;
      
      public static const §"T§:String = "avatar_equip";
      
      public static const §2!A§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3y§ = 0.5;
            while(true)
            {
               §9";§ = false;
               while(true)
               {
                  §"T§ = "avatar_equip";
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            §2!A§ = "avatar_character";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      public var §'E§:Object;
      
      private var §^"<§:MovieClip;
      
      private var §@[§:MovieClip;
      
      private var §-§:MovieClip;
      
      private var §[!q§:Number = 0.5;
      
      private var §"<§:§]q§ = null;
      
      public function §8S§(param1:§]q§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super();
         }
         while(true)
         {
            this.§"<§ = param1;
            loop1:
            while(_loc6_ || param1)
            {
               loop2:
               do
               {
                  this.§'E§ = new Object();
                  while(_loc6_)
                  {
                     this.§[!q§ = this.§"<§.§+h§;
                     if(!_loc5_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc2_:Class = §8B§.§6"C§("BackgroundContainer");
               if(!(_loc5_ && this))
               {
                  this.§@[§ = new _loc2_();
                  loop4:
                  while(true)
                  {
                     addr85:
                     while(true)
                     {
                        this.§@[§.stop();
                        continue loop4;
                     }
                  }
               }
               while(true)
               {
                  addChild(this.§@[§);
                  if(_loc6_ || _loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr89);
               }
               var _loc3_:Class = §8B§.§6"C§(param1.§;!Y§ + "_Animations");
               if(_loc6_)
               {
                  this.§^"<§ = new _loc3_();
               }
               loop8:
               while(true)
               {
                  this.§^"<§.stop();
                  while(true)
                  {
                     this.§`"A§();
                     continue loop8;
                     addr147:
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     this.addChild(this.§^"<§);
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           if(false)
                           {
                              addr161:
                              while(true)
                              {
                                 this.§^"<§.scaleY = this.§[!q§;
                                 addr140:
                                 while(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr147);
                                 }
                                 continue loop8;
                              }
                              while(true)
                              {
                                 §§goto(addr134);
                              }
                              addr134:
                              addr161:
                           }
                           var _loc4_:Class = §8B§.§6"C§("ForegroundContainer");
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§-§ = new _loc4_();
                              this.§-§.stop();
                              addr222:
                              if(_loc6_)
                              {
                                 addChild(this.§-§);
                                 if(_loc5_)
                                 {
                                    §§goto(addr222);
                                 }
                                 return;
                                 addr224:
                              }
                              addr229:
                              §§goto(addr229);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr140);
                  }
               }
            }
         }
      }
      
      public function §#!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@[§.visible = false;
            do
            {
               this.§-§.visible = false;
            }
            while(_loc2_);
            
         }
      }
      
      public function §6!9§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@[§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§-§.gotoAndStop(param1.toLowerCase());
               while(!_loc3_)
               {
                  this.§0!L§(§=!F§.§;"§.items.§1!P§(param1));
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §;J§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§use § = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         loop0:
         for each(_loc1_ in §=!F§.§;"§.items.§-S§)
         {
            if(_loc7_ || _loc1_)
            {
               §§push(_loc1_.name);
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc7_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        addr69:
                        if(§§pop())
                        {
                           if(_loc7_ || _loc1_)
                           {
                              addr88:
                              §§pop();
                              addr110:
                              if(_loc7_ || _loc3_)
                              {
                                 addr98:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(!(_loc6_ && _loc1_))
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                              _loc2_ = §=!F§.§;"§.items.§8!=§(_loc1_.name);
                              _loc2_ = this.§2"D§(_loc2_);
                              if(!(_loc6_ && _loc1_))
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
                                          if(!_loc6_)
                                          {
                                             if(§§pop() >= _loc2_.length)
                                             {
                                                break;
                                                addr173:
                                             }
                                             this.§0!L§(_loc2_[_loc3_]);
                                             if(_loc7_)
                                             {
                                                if(!(_loc7_ || _loc3_))
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
                                    while(!_loc7_);
                                    
                                    this.§,p§(_loc1_.name);
                                 }
                              }
                              §§goto(addr173);
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr69);
               }
               §§goto(addr98);
            }
            §§goto(addr88);
         }
      }
      
      private function §2"D§(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               if(!§%!0§.§5!3§(_loc3_.§;!Y§))
               {
                  continue;
               }
               if(_loc7_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
            }
            addr80:
         }
         while(true)
         {
            this.setScale(this.§&!h§().§;"D§);
            for(; !(_loc3_ && param1); visible = true,if(_loc4_)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr80);
            }
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            visible = false;
         }
      }
      
      public function §`"A§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ || _loc1_))
            {
               break;
            }
            if(§§pop() >= this.§^"<§.numChildren)
            {
               §§goto(addr117);
            }
            _loc3_ = this.§^"<§.getChildAt(_loc1_) as MovieClip;
            if(_loc6_)
            {
               if(_loc3_)
               {
                  if(_loc6_)
                  {
                     _loc3_.stop();
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                  }
               }
               _loc1_++;
            }
         }
         var _loc4_:* = §§pop();
         if(!(_loc7_ && this))
         {
            var _loc5_:* = §=!F§.§;"§.items.§1!2§;
            if(_loc7_)
            {
            }
            for each(_loc2_ in _loc5_)
            {
               if(!_loc7_)
               {
                  this.§3&§(_loc2_);
               }
            }
         }
         addr117:
         if(_loc6_)
         {
            break loop0;
         }
      }
      
      public function §3&§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§^"<§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc3_)
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
                     addr106:
                     do
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  do
                  {
                     if(!(_loc4_ && param1))
                     {
                        continue;
                     }
                     §§goto(addr106);
                  }
                  while(_loc2_.stop(), do
                  {
                     _loc2_.visible = false;
                  }
                  while(_loc4_);
                  , !(_loc3_ || _loc2_));
                  
                  break;
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §8!0§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < §=!F§.§;"§.items.§-S§.length)
         {
            _loc2_ = §=!F§.§;"§.items.§-S§[_loc1_].name;
            if(_loc6_)
            {
               break;
            }
            _loc3_ = this.§%!^§(_loc2_);
            if(_loc5_ || _loc3_)
            {
               if(_loc3_ == null)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  addr67:
               }
               else if(_loc4_ = this.§^"<§.getChildByName("Items_" + _loc3_.§=!q§) as MovieClip)
               {
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§;!Y§);
                  }
               }
               _loc1_++;
               continue;
            }
            §§goto(addr67);
         }
      }
      
      public function §^!+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§use § = null;
         var _loc2_:int = 0;
         var _loc3_:* = §=!F§.§;"§.items.§-S§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               continue;
            }
            §§push(_loc1_.name);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr79:
                        §§pop();
                        if(_loc5_)
                        {
                           continue;
                        }
                        addr84:
                        §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     this.§,p§(_loc1_.name);
                  }
                  continue;
               }
               §§goto(addr79);
            }
            §§goto(addr84);
         }
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!q§ = param1;
            while(true)
            {
               this.§^"<§.scaleX = this.§[!q§;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.§^"<§.scaleY = this.§[!q§;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §#t§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§'E§)
         {
            if(!_loc4_)
            {
               this.§0!L§(_loc1_);
            }
         }
      }
      
      public function §0!L§(param1:Item) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(param1 == null)
            {
               if(_loc4_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:Item = this.§'E§[param1.§[C§.toUpperCase()];
            if(_loc4_ || param1)
            {
               if(_loc2_ == param1)
               {
                  if(_loc4_)
                  {
                     if(§9";§)
                     {
                        addr84:
                        this.§,p§(param1.§[C§);
                     }
                     return;
                  }
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     this.§,p§(param1.§[C§);
                     addr73:
                     while(true)
                     {
                        this.§'E§[param1.§[C§.toUpperCase()] = param1;
                        if(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    if(false)
                                    {
                                       continue loop0;
                                    }
                                    var _loc3_:MovieClip = this.§^"<§.getChildByName("Items_" + param1.§=!q§) as MovieClip;
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(param1.category);
                                          if(_loc4_)
                                          {
                                             if(§§pop().toUpperCase() == "CATEGORYTOP")
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               this.§,z§();
                                                               §§goto(addr159);
                                                            }
                                                            else
                                                            {
                                                               addr246:
                                                               _loc3_.visible = true;
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                addr159:
                                                if(_loc4_)
                                                {
                                                   §§goto(addr118);
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc3_.currentLabel != "Item_" + param1.§;!Y§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§,p§(param1.§=!q§);
                                                         addr228:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc3_.gotoAndStop("Item_" + param1.§;!Y§);
                                                                  continue loop8;
                                                               }
                                                               addr249:
                                                            }
                                                            else
                                                            {
                                                               addr235:
                                                            }
                                                         }
                                                      }
                                                      addr224:
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push("Items_");
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + param1.§=!q§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() + "_Equip");
                                                         }
                                                      }
                                                      §§pop().§;Z§(§§pop());
                                                      while(true)
                                                      {
                                                      }
                                                      addr205:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.category);
                                                      addr165:
                                                      while(true)
                                                      {
                                                         if(§§pop().toUpperCase() == "CATEGORYTOP")
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               this.§4!4§();
                                                               addr177:
                                                               while(!(_loc4_ || _loc2_))
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                               addr177:
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                }
                                                §§goto(addr118);
                                             }
                                             addr118:
                                             return;
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 else
                                 {
                                    §§goto(addr84);
                                 }
                              }
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr73);
         }
         addr28:
      }
      
      private function §,z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§^"<§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §4!4§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§^"<§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §%!^§(param1:String) : Item
      {
         return this.§'E§[param1.toUpperCase()];
      }
      
      public function §=!D§() : Object
      {
         return this.§'E§;
      }
      
      public function §,p§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§'E§[param1.toUpperCase()];
         if(_loc5_ || _loc2_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr53:
                  _loc3_ = this.§^"<§.getChildByName("Items_" + _loc2_.§=!q§) as MovieClip;
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           _loc3_.visible = false;
                           if(_loc4_)
                           {
                           }
                           addr97:
                           this.§,z§();
                           §§goto(addr99);
                        }
                        if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                        {
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr99);
                     }
                     addr99:
                     delete this.§'E§[param1.toUpperCase()];
                     return;
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr53);
      }
      
      public function §;Z§(param1:String) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         loop0:
         for each(_loc3_ in this.§^"<§.currentLabels)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  if(§§pop() != -1)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        addr112:
                        return _loc3_.frame - _loc2_ - 1;
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           addr86:
                           while(_loc3_.name == param1)
                           {
                              if(!_loc7_)
                              {
                                 this.§^"<§.gotoAndPlay(param1);
                              }
                              while(true)
                              {
                                 §§push(Number(_loc3_.frame));
                                 if(_loc6_)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr112);
                                 }
                                 addr59:
                                 _loc2_ = §§pop();
                                 if(_loc6_ || this)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr84);
         }
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() != -1)
               {
                  if(!_loc7_)
                  {
                     §§push(this.§^"<§.framesLoaded - _loc2_);
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop() - 1);
                     }
                  }
                  else
                  {
                     §§goto(addr157);
                  }
               }
               §§goto(addr157);
            }
            return §§pop();
         }
         addr157:
         return -1;
      }
      
      public function §?"A§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §&!h§() : §]q§
      {
         return this.§"<§;
      }
      
      public function § "9§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.include();
         §§push(§3!D§.§7U§(_loc1_));
         if(_loc4_)
         {
            return §§pop();
         }
      }
      
      public function include() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§'E§)
         {
            if(!_loc5_)
            {
               _loc1_.push({
                  "itemId":_loc2_.§;!Y§,
                  "category":_loc2_.§[C§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §7!_§() : Number
      {
         return this.§[!q§;
      }
      
      public function §^"!§() : MovieClip
      {
         return this.§^"<§;
      }
   }
}
