package §9#@§
{
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §-!_§.§,#Q§;
   import §5t§.Log;
   import §69§.§4!e§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   
   public class § "V§
   {
      
      public static const §8#$§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8#$§ = true;
         }
      }
      
      protected var §6V§:§7#5§;
      
      protected var §?"I§:§4!e§;
      
      protected var §!#T§:Vector.<§2"A§>;
      
      protected var §>"^§:Sprite;
      
      protected var §;?§:Sprite;
      
      protected var §@#+§:Sprite;
      
      protected var §8&§:Number;
      
      protected var §`!j§:Number;
      
      protected var §8"R§:Number;
      
      protected var §%p§:Boolean = true;
      
      protected var §[0§:Boolean = true;
      
      protected var §1s§:§4!5§;
      
      protected var §%!V§:Number;
      
      protected var §3" §:Boolean = true;
      
      protected var §<"L§:int = 0;
      
      protected var §8"2§:Number = 1.0;
      
      public function § "V§(param1:§4!e§, param2:Number, param3:§7#5§, param4:Number, param5:Boolean = true)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§!#T§ = new Vector.<§2"A§>();
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§6V§ = param3;
               while(true)
               {
                  this.§`!j§ = 0;
                  while(true)
                  {
                     this.§8"R§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§8&§ = param2;
                        while(true)
                        {
                           this.§>"^§ = new Sprite();
                           loop6:
                           while(_loc6_ || param1)
                           {
                              continue loop4;
                              addr93:
                              if(!(_loc7_ && param1))
                              {
                                 this.§%!V§ = param4;
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          §§goto(addr93);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§@#+§ = new Sprite();
                                             continue loop8;
                                          }
                                          addr106:
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                                 addr54:
                              }
                           }
                        }
                     }
                     addr35:
                     if(_loc6_ || param2)
                     {
                        return;
                     }
                  }
               }
            }
            if(_loc7_ && this)
            {
               continue;
            }
            this.§3" § = param5;
            while(_loc6_)
            {
               this.§4"O§(param1,param4);
               if(!_loc6_)
               {
                  continue;
               }
               §§goto(addr35);
            }
            §§goto(addr54);
         }
      }
      
      public function get §!t§() : Boolean
      {
         return this.§%p§;
      }
      
      public function get §4!C§() : Sprite
      {
         return this.§@#+§;
      }
      
      public function get §?!]§() : Sprite
      {
         return this.§>"^§;
      }
      
      public function get §>"a§() : Sprite
      {
         return this.§;?§;
      }
      
      public function get skyColor() : int
      {
         return this.§<"L§;
      }
      
      protected function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3"J§();
            while(true)
            {
               this.stopAmbientSound();
               loop1:
               for(; !_loc1_; if(_loc1_ && _loc1_)
               {
                  continue;
               },§§goto(addr96))
               {
                  §§push(this.§>"^§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§>"^§);
                           addr130:
                           while(true)
                           {
                              §§pop().dispose();
                              addr141:
                              while(true)
                              {
                                 this.§>"^§ = null;
                                 addr116:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr46:
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr20);
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§;?§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§;?§);
                                 addr110:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr111:
                                    while(true)
                                    {
                                       this.§;?§ = null;
                                       addr101:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr108:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§@#+§);
                              if(_loc2_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§@#+§);
                                          addr81:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             addr82:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   continue loop1;
                                                }
                                                addr96:
                                                this.§@#+§ = null;
                                                if(_loc1_)
                                                {
                                                   continue;
                                                }
                                                if(_loc1_ && this)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§goto(addr46);
                                                }
                                                §§goto(addr141);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr79:
                                    }
                                    else
                                    {
                                       §§goto(addr108);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr81);
                           }
                           addr20:
                           return;
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr79);
      }
      
      public function isVisible() : Boolean
      {
         return this.§[0§;
      }
      
      public function §]"J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[0§);
            loop0:
            while(true)
            {
               if(§§pop() != param1)
               {
                  do
                  {
                     this.§[0§ = param1;
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(_loc2_ && _loc2_);
                  
                  addr77:
                  this.§3"J§();
                  addr25:
                  return;
                  addr79:
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §[!!§() : String
      {
         return this.§?"I§.§ #T§;
      }
      
      private function §3"J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§;?§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  do
                  {
                     while(true)
                     {
                        §§push(this.§>"^§);
                        if(!_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(this.§!#T§.length <= 0)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          this.§!#T§.pop().dispose();
                                       }
                                       addr68:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr89:
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr68);
                           }
                           else
                           {
                              addr86:
                              this.§>"^§.removeChildAt(0,true);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr86);
                     }
                     continue loop0;
                  }
                  while(!(_loc1_ || this));
                  
                  return;
               }
               §§push(this.§;?§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §-!%§(param1:§4!e§) : void
      {
      }
      
      protected function §4"O§(param1:§4!e§, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§>!b§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2"A§ = null;
         if(!_loc7_)
         {
            this.§?"I§ = param1;
         }
         while(true)
         {
            this.§-!%§(this.§?"I§);
            loop1:
            for(; _loc8_; while(!(_loc7_ && _loc3_))
            {
               §§goto(addr48);
            })
            {
               this.§>"^§.y = this.§8&§;
               while(true)
               {
                  this.§;?§.y = this.§8&§;
                  continue loop1;
                  addr39:
                  if(!(_loc7_ && _loc3_))
                  {
                     if(true)
                     {
                        var _loc3_:int = 0;
                        addr230:
                        addr48:
                     }
                     loop4:
                     while(true)
                     {
                        this.§@#+§.y = this.§8&§;
                        while(!_loc7_)
                        {
                           this.§`w§();
                           if(_loc8_ || _loc3_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                     continue;
                     if(_loc3_ < this.§?"I§.§[#_§)
                     {
                        _loc4_ = this.§?"I§.§+!x§(_loc3_);
                        if(!(_loc7_ && param2))
                        {
                           §§push(this.§3" §);
                           if(!_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          addr136:
                                          §§push(_loc4_.optional);
                                          if(!(_loc7_ && this))
                                          {
                                             addr146:
                                             addr145:
                                             if(!§§pop())
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   _loc5_ = new Sprite();
                                                   _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
                                                   if(_loc8_)
                                                   {
                                                      this.§!#T§.push(_loc6_);
                                                      if(_loc8_)
                                                      {
                                                         addr183:
                                                         if(_loc6_.§;&§)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               this.§;?§.addChild(_loc5_);
                                                               addr229:
                                                               _loc3_++;
                                                               addr193:
                                                               §§goto(addr230);
                                                               addr201:
                                                               addr193:
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         this.§>"^§.addChild(_loc5_);
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr229);
                                             }
                                             if(_loc4_.color)
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   this.§3!w§(parseInt(_loc4_.color,16));
                                                }
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr229);
                                    }
                                 }
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr136);
                     }
                     return;
                  }
               }
            }
         }
      }
      
      protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         return new §2"A§(param1,param2,param3,param4);
      }
      
      private function §`w§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2"D§ = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§?"I§);
            if(!_loc2_)
            {
               §§push(§§pop().§9" §);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        this.§3!w§(this.§?"I§.§9" §);
                        if(_loc3_ || this)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr73);
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         addr69:
         if(this.§?"I§.colorGround)
         {
            addr73:
            §§push(this);
            if(_loc3_ || this)
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  §§push(uint(§§pop()));
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§pop();
                           addr105:
                           §§push(uint(this.§?"I§.colorGround));
                        }
                     }
                  }
                  _loc1_ = §§pop().§'"e§(§§pop());
                  if(_loc3_)
                  {
                     _loc1_.y = 0;
                     if(_loc3_)
                     {
                        this.§@#+§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr130);
               }
            }
            §§goto(addr105);
         }
         addr130:
      }
      
      protected function §'"e§(param1:uint) : §2"D§
      {
         return new §2"D§(4096,4096,param1);
      }
      
      private function §3!w§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"L§ = param1;
         }
      }
      
      public function §4#X§(param1:§4!e§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3"J§();
         }
         while(true)
         {
            Log.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
            while(_loc2_ || _loc2_)
            {
               this.§4"O§(param1,this.§%!V§);
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function §%Q§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§2"A§ = null;
         if(!_loc6_)
         {
            if(param1 == this.§%p§)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr33);
               }
            }
            else
            {
               this.§%p§ = param1;
            }
            for each(_loc3_ in this.§!#T§)
            {
               if(!_loc6_)
               {
                  _loc3_.§%Q§(param1);
               }
            }
            return;
         }
         addr33:
      }
      
      public function playAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§?!r§.§2R§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr101:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!(_loc2_ || this))
                           {
                              continue loop0;
                           }
                           §?!r§.§"#_§(this.§0;§,"CHANNEL_AMBIENT",999);
                        }
                        break;
                     }
                     return;
                     addr63:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr99:
         }
         while(true)
         {
            §§push(§?!r§.§2R§("CHANNEL_AMBIENT"));
            if(_loc2_)
            {
               §§push(§§pop().§<"M§());
               if(_loc2_)
               {
                  if(!(_loc1_ && this))
                  {
                     addr56:
                     §§push(!§§pop());
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr63);
               }
               §§goto(addr56);
            }
            else
            {
               §§goto(addr99);
            }
         }
      }
      
      public function stopAmbientSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!r§.§9"4§("CHANNEL_AMBIENT");
         }
      }
      
      public function get §0;§() : String
      {
         return this.§?"I§.§0;§;
      }
      
      public function §="j§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§>"^§);
               if(_loc4_ || this)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr43);
                     }
                     else
                     {
                        addr78:
                        §§push(this.§;?§);
                        §§push(param1);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() - this.§>"^§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr72:
                        §§push(§§pop() - this.§>"^§.numChildren);
                     }
                     if(§§pop() < this.§;?§.numChildren)
                     {
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr72);
         }
         addr43:
         _loc2_ = this.§>"^§.getChildAt(param1);
         if(!(_loc3_ && this))
         {
            addr95:
            if(_loc2_)
            {
               if(_loc4_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.visible);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
               }
            }
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:int = 0;
         if(!(_loc10_ && param2))
         {
            this.§`!j§ = param1;
            while(true)
            {
               this.§8"R§ = param2;
               while(_loc11_)
               {
                  if(!_loc10_)
                  {
                     _loc8_ = 0;
                  }
                  if(!_loc11_)
                  {
                     continue;
                  }
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_ >= this.§!#T§.length)
                        {
                           break loop3;
                        }
                        §§goto(addr106);
                     }
                  }
                  if(_loc11_)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr106);
               }
            }
         }
         while(this.§!#T§ != null)
         {
            §§goto(addr58);
         }
         addr93:
         §§push(this.§@#+§);
         if(_loc11_)
         {
            if(§§pop() != null)
            {
               if(!(_loc10_ && this))
               {
                  §§goto(addr106);
               }
            }
            addr106:
            §§goto(addr108);
         }
         addr108:
         this.§!#T§[_loc8_].setScreenOffset(this.§`!j§,this.§8"R§,param5,param3,param4,param6,param7);
         while(true)
         {
            _loc8_++;
            if(_loc10_)
            {
               break;
            }
            if(!_loc10_)
            {
               if(false)
               {
                  break loop4;
               }
               continue loop4;
            }
         }
         this.§@#+§.scaleX = this.§@#+§.scaleY = 1 / §,#Q§.§ #b§;
         if(!_loc10_)
         {
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@#+§);
            while(true)
            {
               §§pop().x = 0;
               while(true)
               {
                  §§push(this.§@#+§);
                  if(!(_loc1_ || this))
                  {
                     break;
                  }
                  §§push(this.§8&§);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop() - this.§8"R§);
                  }
                  §§pop().y = §§pop();
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr78:
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §6"c§() : String
      {
         return this.§?"I§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2"A§ = null;
         for each(_loc2_ in this.§!#T§)
         {
            if(_loc6_)
            {
               _loc2_.update(param1);
            }
         }
      }
   }
}
