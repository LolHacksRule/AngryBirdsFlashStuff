package §=!&§
{
   import § ! §.§5!x§;
   import §+!!§.§5"+§;
   import §,C§.§ "%§;
   import §,C§.§+"$§;
   import §1T§.§'!c§;
   import §1T§.§8!Q§;
   import §6![§.§ !f§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import each.§!!'§;
   
   public class §-!x§
   {
      
      public static const §5M§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §-!x§)
         {
            §5M§ = true;
         }
      }
      
      protected var §`8§:§5!x§;
      
      protected var §#9§:§+"$§;
      
      protected var §"x§:Vector.<§`!3§>;
      
      protected var §1r§:Sprite;
      
      protected var §<!B§:Sprite;
      
      protected var §`e§:Sprite;
      
      protected var §%!V§:Number;
      
      protected var §`R§:Number;
      
      protected var §#m§:Number;
      
      protected var §9Q§:Boolean = true;
      
      protected var §3!c§:Boolean = true;
      
      protected var §9!>§:§8!Q§;
      
      protected var §9P§:Number;
      
      protected var §?Y§:Boolean = true;
      
      protected var §#H§:int = 0;
      
      protected var §6!r§:Number = 1.0;
      
      public function §-!x§(param1:§+"$§, param2:Number, param3:§5!x§, param4:Number, param5:Boolean = true)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§"x§ = new Vector.<§`!3§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§`8§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§`R§ = 0;
                     while(!_loc7_)
                     {
                        this.§#m§ = 0;
                        while(_loc6_)
                        {
                           loop6:
                           for(; _loc6_ || param1; if(_loc7_ && param2)
                           {
                              continue;
                           },this.§9P§ = param4,§§goto(addr54))
                           {
                              this.§1r§ = new Sprite();
                              while(!_loc7_)
                              {
                                 this.§<!B§ = new Sprite();
                                 loop8:
                                 while(_loc6_)
                                 {
                                    continue loop0;
                                    while(true)
                                    {
                                       if(!(_loc7_ && param3))
                                       {
                                          continue loop6;
                                       }
                                       continue loop8;
                                       addr42:
                                       if(_loc6_ || param1)
                                       {
                                          this.§@!h§(param1,param4);
                                          addr49:
                                          if(_loc6_ || param3)
                                          {
                                             return;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr42);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§?Y§ = param5;
                                                   continue loop11;
                                                }
                                                addr54:
                                             }
                                          }
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§%!V§ = param2;
            §§goto(addr112);
         }
      }
      
      public function get §1!s§() : Boolean
      {
         return this.§9Q§;
      }
      
      public function get §3"+§() : Sprite
      {
         return this.§`e§;
      }
      
      public function get §]!!§() : Sprite
      {
         return this.§1r§;
      }
      
      public function get §-"!§() : Sprite
      {
         return this.§<!B§;
      }
      
      public function get §-o§() : int
      {
         return this.§#H§;
      }
      
      protected function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!H§();
            loop0:
            while(true)
            {
               this.§#]§();
               loop1:
               while(true)
               {
                  §§push(this.§1r§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§1r§);
                           addr146:
                           while(true)
                           {
                              §§pop().dispose();
                              addr147:
                              while(true)
                              {
                                 this.§1r§ = null;
                                 addr127:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr112:
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           §§push(this.§<!B§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr122:
                              loop7:
                              while(true)
                              {
                                 this.§<!B§ = null;
                                 addr94:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       break loop7;
                                    }
                                    addr110:
                                    while(_loc1_)
                                    {
                                       §§goto(addr112);
                                    }
                                    §§goto(addr127);
                                 }
                              }
                              continue loop0;
                           }
                           addr121:
                        }
                     }
                     while(true)
                     {
                        §§push(this.§<!B§);
                        if(_loc1_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§`e§);
                                 if(_loc1_)
                                 {
                                    if(!§§pop())
                                    {
                                       addr24:
                                       return;
                                    }
                                    loop6:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc1_)
                                       {
                                          §§push(this.§`e§);
                                       }
                                       else
                                       {
                                          §§goto(addr147);
                                       }
                                       while(true)
                                       {
                                          this.§`e§ = null;
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    §§goto(addr89);
                                 }
                                 continue loop0;
                              }
                              continue loop0;
                              addr61:
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr121);
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr146);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §"j§() : Boolean
      {
         return this.§3!c§;
      }
      
      public function §"!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§3!c§);
            loop0:
            while(§§pop() != param1)
            {
               while(true)
               {
                  this.§3!c§ = param1;
                  continue loop0;
               }
            }
            addr110:
            return;
            addr108:
         }
         do
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  this.§@!h§(this.§#9§,this.§9P§);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr24);
                     }
                     §§goto(addr91);
                  }
               }
               if(!(_loc3_ && _loc3_))
               {
                  this.§0!H§();
                  continue;
               }
               §§goto(addr110);
            }
            else
            {
               §§goto(addr108);
            }
         }
         while(_loc3_ && _loc3_);
         
         addr24:
      }
      
      public function §1!1§() : String
      {
         return this.§#9§.§var§;
      }
      
      private function §0!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§<!B§);
            if(!_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  do
                  {
                     while(true)
                     {
                        §§push(this.§1r§);
                        if(!(_loc1_ && this))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(this.§"x§.length <= 0)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§"x§.pop().dispose();
                                    }
                                    addr86:
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§goto(addr86);
                                 }
                              }
                              continue loop0;
                           }
                           addr99:
                           this.§1r§.removeChildAt(0,true);
                           continue;
                        }
                        §§goto(addr99);
                     }
                  }
                  while(_loc1_ && _loc2_);
                  
                  return;
               }
               §§push(this.§<!B§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §-!R§(param1:§+"$§) : void
      {
      }
      
      protected function §@!h§(param1:§+"$§, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§ "%§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§`!3§ = null;
         if(_loc8_ || param1)
         {
            this.§#9§ = param1;
         }
         loop0:
         while(true)
         {
            this.§-!R§(this.§#9§);
            while(true)
            {
               this.§1r§.y = this.§%!V§;
               continue loop0;
               addr63:
               loop3:
               while(_loc8_ || param2)
               {
                  do
                  {
                     this.§`e§.y = this.§%!V§;
                     while(true)
                     {
                        if(!(_loc8_ || this))
                        {
                           continue loop3;
                        }
                        if(!_loc8_)
                        {
                           break;
                        }
                        this.§^!v§();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     continue loop0;
                  }
                  while(false);
                  
                  var _loc3_:int = 0;
                  addr240:
                  if(_loc3_ < this.§#9§.§?!K§)
                  {
                     _loc4_ = this.§#9§.§;"+§(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(this.§?Y§);
                        if(_loc8_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_ || this)
                                 {
                                    addr138:
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc4_.optional);
                                       if(_loc8_)
                                       {
                                          addr146:
                                          addr145:
                                          if(!§§pop())
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                _loc5_ = new Sprite();
                                                _loc6_ = this.§5!R§(_loc4_,_loc5_,this.§58§,param2);
                                                if(_loc8_ || this)
                                                {
                                                   this.§"x§.push(_loc6_);
                                                   addr193:
                                                   if(_loc6_.§[!I§)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr199:
                                                         this.§<!B§.addChild(_loc5_);
                                                         if(!_loc7_)
                                                         {
                                                            addr239:
                                                            _loc3_++;
                                                            addr205:
                                                            addr211:
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   this.§1r§.addChild(_loc5_);
                                                   addr210:
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr239);
                                          }
                                          if(_loc4_.color)
                                          {
                                             if(_loc8_ || _loc3_)
                                             {
                                                this.§"!o§(parseInt(_loc4_.color,16));
                                                addr222:
                                             }
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr222);
                  }
                  return;
               }
            }
         }
      }
      
      protected function §5!R§(param1:§ "%§, param2:Sprite, param3:§5!x§, param4:Number) : §`!3§
      {
         return new §`!3§(param1,param2,param3,param4);
      }
      
      private function §^!v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ !f§ = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§#9§);
            if(!_loc2_)
            {
               §§push(§§pop().§^h§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        this.§"!o§(this.§#9§.§^h§);
                        if(!_loc2_)
                        {
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr63);
                  }
               }
            }
            §§goto(addr59);
         }
         addr59:
         if(this.§#9§.§-=§)
         {
            addr63:
            §§push(this);
            if(_loc3_ || _loc1_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(uint(§§pop()));
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           addr81:
                           §§pop();
                           §§push(uint(this.§#9§.§-=§));
                        }
                     }
                     _loc1_ = §§pop().§@"'§(§§pop());
                     if(_loc3_)
                     {
                        _loc1_.y = 0;
                        if(!_loc2_)
                        {
                           this.§`e§.addChild(_loc1_);
                        }
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr81);
         }
         addr110:
      }
      
      protected function §@"'§(param1:uint) : § !f§
      {
         return new § !f§(4096,4096,param1);
      }
      
      private function §"!o§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#H§ = param1;
         }
      }
      
      public function §"Z§(param1:§+"$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!H§();
            do
            {
               §!!'§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
               do
               {
                  this.§@!h§(param1,this.§9P§);
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §<8§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§`!3§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param1 == this.§9Q§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               addr55:
               this.§9Q§ = param1;
            }
            for each(_loc3_ in this.§"x§)
            {
               if(_loc6_)
               {
                  _loc3_.§<8§(param1);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §`!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§'!c§.§[!d§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 §'!c§.§3!f§(this.§"!1§,"CHANNEL_AMBIENT",999);
                                 addr68:
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr68);
                        }
                        §§push(§§pop().§,!V§());
                        addr35:
                        break;
                        if(!_loc1_)
                        {
                           §§push(!§§pop());
                        }
                        if(!_loc1_)
                        {
                           continue;
                        }
                        addr93:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr93:
                     }
                     return;
                  }
               }
               §§goto(addr93);
            }
         }
         §§goto(addr68);
      }
      
      public function §#]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!c§.§;! §("CHANNEL_AMBIENT");
         }
      }
      
      public function get §"!1§() : String
      {
         return this.§#9§.§"!1§;
      }
      
      public function §]!0§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(this.§1r§);
               if(_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc4_ && param1))
                     {
                        _loc2_ = this.§1r§.getChildAt(param1);
                        if(_loc3_)
                        {
                           §§goto(addr89);
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        addr77:
                        §§push(this.§<!B§);
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() - this.§1r§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        addr73:
                        if(§§pop() - this.§1r§.numChildren < this.§<!B§.numChildren)
                        {
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr73);
                  }
                  addr89:
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr93:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc4_ && param1))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr77);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:int = 0;
         if(_loc11_)
         {
            this.§`R§ = param1;
            loop0:
            while(true)
            {
               this.§#m§ = param2;
               loop1:
               for(; this.§"x§ != null; if(!(_loc11_ || this))
               {
                  continue;
               },if(!_loc11_)
               {
                  continue loop0;
               },_loc8_ = 0)
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  addr76:
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_ >= this.§"x§.length)
                        {
                           if(!_loc10_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           this.§"x§[_loc8_].setScreenOffset(this.§`R§,this.§#m§,param5,param3,param4,param6,param7);
                           if(_loc10_ && param3)
                           {
                              break;
                           }
                           _loc8_++;
                           if(!(_loc10_ && param2))
                           {
                              if(false)
                              {
                                 continue loop7;
                              }
                              continue;
                           }
                        }
                        addr151:
                        addr193:
                        §§push(this.§`e§);
                        loop2:
                        while(true)
                        {
                           §§pop().x = 0;
                           addr195:
                           addr153:
                           loop3:
                           while(true)
                           {
                              §§push(this.§`e§);
                              if(_loc10_)
                              {
                                 continue loop2;
                              }
                              §§push(this.§%!V§);
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() - this.§#m§);
                                    if(!_loc10_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + 100);
                                       }
                                       addr170:
                                    }
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       if(!(_loc10_ && param2))
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr165:
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr190);
                        }
                     }
                     addr121:
                     §§push(this.§`e§);
                     if(!(_loc10_ && param1))
                     {
                        addr130:
                        §§push(this.§`e§.scaleY = 1 / §5"+§.§,H§);
                        if(_loc11_)
                        {
                           §§pop().scaleX = §§pop();
                           if(!(_loc10_ && param1))
                           {
                              §§goto(addr151);
                           }
                           addr190:
                           return;
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr193);
                  }
               }
               §§push(this.§`e§);
               if(_loc11_ || param3)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc10_ && param3))
                     {
                        §§goto(addr121);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr153);
               }
               §§goto(addr130);
            }
         }
         §§goto(addr76);
      }
      
      public function §=s§() : String
      {
         return this.§#9§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`!3§ = null;
         for each(_loc2_ in this.§"x§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.update(param1);
            }
         }
      }
   }
}
