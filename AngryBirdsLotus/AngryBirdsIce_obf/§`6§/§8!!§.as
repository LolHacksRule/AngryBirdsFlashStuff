package §`6§
{
   import §-Z§.§?h§;
   import §1n§.§5#§;
   import §3"§.§8+§;
   import §3O§.§%!D§;
   import §3O§.§@6§;
   import §;!E§.§!c§;
   import §;!E§.§'`§;
   import §;!E§.§7D§;
   import §;8§.§3f§;
   import §[K§.§2!1§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §8!!§
   {
      
      public static const §=t§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=t§ = true;
         }
      }
      
      private var §1y§:§5#§;
      
      private var §88§:§7D§;
      
      private var §=w§:Vector.<§+w§>;
      
      private var §2!F§:Sprite;
      
      private var §=!2§:Sprite;
      
      private var §=E§:Sprite;
      
      private var §9+§:Number;
      
      private var § f§:Number;
      
      private var § 4§:Number;
      
      private var § B§:Boolean = true;
      
      private var §1!;§:Boolean = true;
      
      private var §=!E§:§%!D§;
      
      private var §!H§:Number;
      
      public function §8!!§(param1:String, param2:Number, param3:§5#§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§=w§ = new Vector.<§+w§>();
         super();
         this.§1y§ = param3;
         this.§ f§ = 0;
         this.§ 4§ = 0;
         loop0:
         while(true)
         {
            this.§9+§ = param2;
            this.§2!F§ = new Sprite();
            while(true)
            {
               this.§=!2§ = new Sprite();
               while(true)
               {
                  this.§=E§ = new Sprite();
                  if(_loc5_ && this)
                  {
                     break;
                  }
                  continue loop0;
                  addr69:
                  this.§!H§ = param4;
                  if(_loc6_ || param3)
                  {
                     this.§7$§(param1,param4);
                     return;
                  }
               }
            }
         }
      }
      
      public function get §93§() : Boolean
      {
         return this.§ B§;
      }
      
      public function get §9!=§() : Sprite
      {
         return this.§=E§;
      }
      
      public function get §`;§() : Sprite
      {
         return this.§2!F§;
      }
      
      public function get §[$§() : Sprite
      {
         return this.§=!2§;
      }
      
      protected function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§%I§();
         loop0:
         while(true)
         {
            §§push(this.§2!F§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  addr121:
                  this.§2!F§.dispose();
                  while(true)
                  {
                     this.§2!F§ = null;
                  }
                  addr122:
               }
               loop1:
               while(true)
               {
                  §§push(this.§=!2§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§=E§);
                           if(_loc1_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 addr43:
                                 this.§=E§.dispose();
                                 while(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          this.§=E§ = null;
                                          if(!_loc2_)
                                          {
                                             break loop3;
                                          }
                                          continue;
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§=!2§ = null;
                                    continue loop3;
                                 }
                              }
                              break;
                           }
                           §§goto(addr43);
                        }
                     }
                     continue loop0;
                     return;
                  }
                  addr101:
                  while(true)
                  {
                     §§pop().dispose();
                  }
                  §§goto(addr102);
               }
            }
            §§goto(addr121);
         }
      }
      
      public function §>W§() : Boolean
      {
         return this.§1!;§;
      }
      
      public function §"3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§1!;§);
         loop0:
         while(§§pop() != param1)
         {
            while(true)
            {
               this.§1!;§ = param1;
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     this.§7$§(this.§88§.mName,this.§!H§);
                     if(!_loc3_)
                     {
                        §§goto(addr17);
                     }
                  }
                  this.§%I§();
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            addr17:
            return;
         }
      }
      
      public function §#!8§() : String
      {
         return this.§88§.§+F§;
      }
      
      private function §%I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§=!2§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc1_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§2!F§);
                        if(!_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              addr94:
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    if(this.§=w§.length <= 0)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§=w§.pop().dispose();
                                    }
                                    addr61:
                                 }
                                 return;
                              }
                              while(_loc1_ || this)
                              {
                                 §§goto(addr61);
                              }
                              while(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                              addr94:
                           }
                           else
                           {
                              §§push(this.§2!F§);
                           }
                           §§goto(addr94);
                        }
                        §§pop().removeChildAt(0,true);
                     }
                  }
                  §§goto(addr94);
               }
               else
               {
                  §§push(this.§=!2§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §7$§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§'`§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§+w§ = null;
         this.§88§ = §!c§.§9!§(param1);
         while(true)
         {
            if(this.§88§ == null)
            {
               §§push(§3f§);
               §§push("UNKNOWN LEVEL THEME! ");
               if(_loc8_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               §§push(§8+§.§#0§);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               param1 = §§pop();
               do
               {
                  this.§88§ = §!c§.§9!§(param1);
               }
               while(_loc7_ && param2);
               
            }
            this.§2!F§.y = this.§9+§;
            this.§=!2§.y = this.§9+§;
            while(true)
            {
               this.§=E§.y = this.§9+§;
               this.§<c§();
               if(!(_loc7_ && param1))
               {
                  if(true)
                  {
                     var _loc3_:int = 0;
                     loop3:
                     while(_loc3_ < this.§88§.§=w§.length)
                     {
                        _loc4_ = this.§88§.§=w§[_loc3_];
                        if(_loc8_ || param2)
                        {
                           §§push(§?h§.§7"§);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                              if(_loc8_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          addr153:
                                          §§push(_loc4_.§'A§);
                                          if(!(_loc7_ && param1))
                                          {
                                             addr163:
                                             if(!§§pop())
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   _loc5_ = new Sprite();
                                                   _loc6_ = new §+w§(_loc4_,_loc5_,this.§1y§,param2);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      this.§=w§.push(_loc6_);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         addr210:
                                                         addr243:
                                                         while(true)
                                                         {
                                                            if(!_loc6_.§>I§)
                                                            {
                                                               this.§2!F§.addChild(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop3;
                                                            }
                                                            if(_loc7_ && param2)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         _loc3_++;
                                                         continue loop3;
                                                      }
                                                   }
                                                   this.§=!2§.addChild(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr243);
                                                }
                                                else
                                                {
                                                   addr254:
                                                   this.§[]§(parseInt(_loc4_.§-!,§,16));
                                                }
                                             }
                                             else if(_loc4_.§-!,§)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§goto(addr254);
                                                }
                                             }
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr243);
                                    }
                                 }
                              }
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr153);
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      private function §<c§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§09§ = null;
         if(_loc3_ || this)
         {
            §§push(this.§88§);
            if(!_loc2_)
            {
               §§push(§§pop().§?$§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§[]§(this.§88§.§?$§);
                        if(_loc2_ && _loc1_)
                        {
                        }
                        addr68:
                        §§push(this);
                        if(!_loc2_)
                        {
                           §§push(uint(0));
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr94:
                                    §§pop();
                                    §§push(uint(this.§88§.§,O§));
                                 }
                              }
                              _loc1_ = §§pop().§>C§(§§pop());
                              if(!_loc2_)
                              {
                                 _loc1_.y = 0;
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.§=E§.addChild(_loc1_);
                                 }
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
                  addr66:
                  §§push(this.§88§.§,O§);
               }
               if(§§pop())
               {
                  §§goto(addr68);
               }
               addr118:
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr68);
      }
      
      protected function §>C§(param1:uint) : §09§
      {
         return new §09§(4096,4096,param1);
      }
      
      private function §[]§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§?h§.§ n§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr53:
                     §?h§.§ n§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function §0!0§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%I§();
            while(true)
            {
               §§push(§3f§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               while(_loc3_)
               {
                  this.§7$§(param1,this.§!H§);
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §#i§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§+w§ = null;
         if(_loc7_ || param1)
         {
            if(param1 == this.§ B§)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return;
               }
            }
            else
            {
               addr61:
               this.§ B§ = param1;
            }
            for each(_loc3_ in this.§=w§)
            {
               if(!_loc6_)
               {
                  _loc3_.§#i§(param1);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §0#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(§@6§.§"7§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_ || this)
                           {
                              §@6§.playSound(this.§88§.§,M§,"CHANNEL_AMBIENT",999);
                              addr88:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr88);
                     }
                     return;
                  }
               }
               addr98:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §1!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §@6§.§!>§("CHANNEL_AMBIENT");
         }
      }
      
      public function §@!7§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               §§push(this.§2!F§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = this.§2!F§.getChildAt(param1);
                        if(_loc3_)
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        addr77:
                        §§push(this.§=!2§);
                        §§push(param1);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() - this.§2!F§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        addr71:
                        §§push(§§pop() - this.§2!F§.numChildren);
                     }
                     if(§§pop() < this.§=!2§.numChildren)
                     {
                        §§goto(addr77);
                     }
                  }
                  addr104:
                  if(_loc2_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr113:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr77);
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc6_)
         {
            this.§ f§ = param1;
         }
         loop0:
         while(true)
         {
            this.§ 4§ = param2;
            loop1:
            while(this.§=w§ != null)
            {
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               addr60:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_ >= this.§=w§.length)
                     {
                        break loop1;
                     }
                     §§goto(addr180);
                  }
               }
            }
            §§push(this.§=E§);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  §§push(this.§=E§);
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§=E§.scaleY = 1 / §2!1§.§;l§);
                     if(_loc5_)
                     {
                        §§pop().scaleX = §§pop();
                        if(_loc5_ || this)
                        {
                           addr183:
                           §§push(this.§=E§);
                           loop7:
                           while(true)
                           {
                              §§push(§2!1§.§ !B§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(-§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    §§push(1 / §2!1§.§;l§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          §§push(this.§=E§);
                                          if(!_loc6_)
                                          {
                                             §§push(this.§9+§);
                                             if(!(_loc5_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                §§push(this.§ 4§);
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§pop().y = §§pop();
                                 addr193:
                              }
                              §§goto(addr193);
                           }
                           addr183:
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr183);
               }
               addr180:
               this.§=w§[_loc3_].setSideScroll(this.§ f§,this.§ 4§);
               if(_loc5_)
               {
                  _loc3_++;
                  if(!_loc6_)
                  {
                     if(false)
                     {
                        break loop3;
                     }
                     continue loop3;
                  }
               }
               return;
            }
            §§goto(addr183);
         }
      }
      
      public function §?e§() : String
      {
         return this.§88§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
