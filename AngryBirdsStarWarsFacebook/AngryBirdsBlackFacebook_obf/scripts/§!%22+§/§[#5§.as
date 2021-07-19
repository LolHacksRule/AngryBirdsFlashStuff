package §!"+§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§>"G§;
   import §7P§.§7B§;
   import §<a§.§8#F§;
   import §^#>§.§#_§;
   
   public class §[#5§
   {
       
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      protected var §[<§:Number;
      
      protected var §2n§:Number;
      
      protected var §<C§:Number;
      
      protected var §-!H§:Number;
      
      protected var §!#4§:Number;
      
      protected var §%G§:Sprite;
      
      protected var §]!`§:§>"G§;
      
      protected var §`!j§:Number;
      
      protected var §8"R§:Number;
      
      protected var §,!d§:DisplayObject;
      
      protected var §^C§:Number;
      
      protected var §?#?§:Number;
      
      protected var §8"2§:Number;
      
      protected var §5"X§:Vector.<§7B§>;
      
      public function §[#5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§>"G§, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§8!+§ = param1;
            while(true)
            {
               this.§=!Z§ = param2;
               loop2:
               while(true)
               {
                  this.§]!`§ = param6;
                  loop3:
                  while(true)
                  {
                     this.§%G§ = param5;
                     loop4:
                     while(true)
                     {
                        this.§,!d§ = param6.getFrame(0);
                        while(true)
                        {
                           this.§%G§.addChild(this.§,!d§);
                           addr105:
                           addr75:
                           while(true)
                           {
                              this.§^C§ = this.§,!d§.width;
                              continue loop3;
                           }
                           while(!(_loc9_ && param1))
                           {
                              this.§8"2§ = param7;
                              loop9:
                              while(_loc8_)
                              {
                                 this.§+"^§();
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop9;
                                    }
                                    if(_loc9_ && this)
                                    {
                                       break;
                                    }
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr105);
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get angle() : Number
      {
         return this.§[<§;
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      public function get §&"j§() : Number
      {
         return this.§-!H§;
      }
      
      public function get §4#@§() : Number
      {
         return this.§!#4§;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^C§);
         if(_loc2_ || _loc2_)
         {
            return §§pop() * §#_§.§8]§;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§?#?§);
         if(!(_loc1_ && this))
         {
            return §§pop() * §#_§.§8]§;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§%G§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr74:
                     this.§%G§.dispose();
                  }
                  do
                  {
                     this.§%G§ = null;
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function §@"4§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(§§pop() / this.§<C§);
            if(_loc4_)
            {
               addr30:
               §§push(§§pop() * 1000);
               if(!_loc3_)
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(this.§2n§);
                     if(_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc4_ || param1)
                           {
                              §§push(this.§2n§);
                              if(_loc4_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_ && param1)
                                 {
                                 }
                                 addr85:
                                 §§push(this.§-!H§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop() * _loc2_);
                                    if(_loc4_)
                                    {
                                       addr111:
                                       return §§pop() - §§pop() / 1000;
                                       addr110:
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              _loc2_ = §§pop();
                              addr81:
                              §§push(this.§8!+§);
                              if(_loc4_)
                              {
                                 §§goto(addr85);
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr85);
               }
               §§goto(addr81);
            }
            §§goto(addr34);
         }
         §§goto(addr30);
      }
      
      public function §"A§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(§§pop() / this.§<C§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * 1000);
               if(_loc3_)
               {
               }
               addr40:
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§2n§);
                     if(!(_loc3_ && this))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr78:
                              §§push(this.§2n§);
                              if(_loc4_)
                              {
                                 addr82:
                                 §§push(Number(§§pop()));
                                 if(!(_loc3_ && this))
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr91);
                                 }
                              }
                              §§goto(addr100);
                           }
                        }
                        addr91:
                        §§push(this.§=!Z§);
                        if(!(_loc3_ && param1))
                        {
                           addr100:
                           §§push(this.§!#4§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * _loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 addr125:
                                 §§push(§§pop() - §§pop() / 1000);
                              }
                           }
                           §§goto(addr125);
                        }
                        return §§pop();
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr82);
               }
               §§goto(addr78);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr40);
      }
      
      protected function §]"^§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() / this.§<C§);
            if(!_loc4_)
            {
               addr24:
               §§push(§§pop() * 1000);
               if(_loc3_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§2n§);
                  if(_loc3_ || this)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc4_)
                        {
                           addr72:
                           §§push(this.§2n§);
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                                 §§goto(addr79);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr89);
               }
               addr79:
               _loc2_ = §§pop();
               §§push(this.§<C§);
               if(!(_loc4_ && _loc2_))
               {
                  addr89:
                  §§push(§§pop() * _loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     return §§pop() / 1000;
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr24);
      }
      
      public function §+"^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(!this.§5"X§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr77:
                     while(true)
                     {
                        §§push(this.§5"X§.length > 0);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr76:
               }
               while(§§pop())
               {
                  if(_loc1_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr77);
                        continue;
                     }
                     this.§5"X§ = new Vector.<§7B§>();
                  }
                  break;
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr52);
      }
      
      public function §33§(param1:§8#F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5"X§.push(param1.§[!@§);
         }
      }
      
      public function §'x§(param1:§8#F§) : Boolean
      {
         return this.§5"X§.indexOf(param1.§[!@§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§+#Z§(param1,param2);
         }
      }
      
      protected function §+#Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§<C§ = param2;
            loop0:
            while(true)
            {
               this.§[<§ = param1;
               do
               {
                  this.§-!H§ = Math.cos(this.§[<§) * this.§<C§;
                  continue loop0;
               }
               while(_loc4_);
               
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§8!+§);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§-!H§);
               if(!_loc2_)
               {
                  addr129:
                  §§push(§§pop() * param1);
                  if(_loc3_ || param1)
                  {
                     addr126:
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§8!+§ = §§pop() + §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§=!Z§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.§!#4§);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() * param1);
                           if(_loc3_)
                           {
                              §§push(§§pop() / 1000);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§=!Z§ = §§pop();
                     loop1:
                     do
                     {
                        this.§<!p§();
                        while(_loc3_)
                        {
                           §§push(this);
                           §§push(this.§2n§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§2n§ = §§pop();
                           if(_loc3_ || param1)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     while(!_loc3_);
                     
                     return;
                  }
                  addr130:
               }
               §§goto(addr126);
            }
            §§goto(addr129);
         }
         §§goto(addr130);
      }
      
      protected function §<!p§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§8!+§);
            if(!_loc4_)
            {
               §§push(§§pop() / §#_§.§8]§);
            }
            §§pop().§`!j§ = §§pop();
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§=!Z§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / §#_§.§8]§);
               }
               §§pop().§8"R§ = §§pop();
            }
         }
         §§push(this);
         §§push(this.§^C§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() * §#_§.§8]§);
         }
         §§push(§§pop().§]"^§(§§pop()));
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() / §#_§.§8]§);
            if(_loc3_ || this)
            {
               addr74:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§?#?§);
            if(_loc3_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               §§push(this.§,!d§);
               loop0:
               while(true)
               {
                  §§push(_loc1_);
                  addr217:
                  while(true)
                  {
                     §§push(this.§8"2§);
                     addr219:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr220:
                        while(true)
                        {
                           §§pop().width = §§pop();
                        }
                     }
                  }
                  loop9:
                  while(true)
                  {
                     if(_loc4_ && this)
                     {
                        continue loop0;
                     }
                     §§push(_loc1_);
                     while(true)
                     {
                        §§push(-§§pop());
                        addr179:
                        addr133:
                        while(true)
                        {
                           §§pop().pivotX = §§pop();
                           addr180:
                           addr221:
                           while(_loc3_ || _loc3_)
                           {
                              continue loop9;
                           }
                           while(true)
                           {
                              §§push(this.§,!d§);
                              addr191:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr192:
                                 while(true)
                                 {
                                    §§push(this.§8"2§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§pop().height = §§pop();
                                       addr213:
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                                 §§goto(addr219);
                              }
                           }
                        }
                        if(_loc4_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(§§pop() / 2);
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_ || this)
                           {
                              §§pop().pivotY = §§pop();
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§goto(addr180);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr192);
                        }
                        else
                        {
                           §§goto(addr179);
                        }
                     }
                  }
               }
            }
            §§goto(addr221);
         }
         §§goto(addr74);
      }
      
      public function render() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§%G§);
            loop0:
            while(true)
            {
               §§pop().visible = true;
               loop1:
               while(true)
               {
                  §§push(this.§%G§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§[<§);
                     loop3:
                     while(true)
                     {
                        §§pop().rotation = §§pop();
                        loop4:
                        while(!_loc2_)
                        {
                           §§push(this.§%G§);
                           loop5:
                           while(_loc1_)
                           {
                              continue loop0;
                              loop7:
                              while(true)
                              {
                                 §§push(this.§%G§);
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue loop5;
                                 }
                                 §§push(this.§8"R§);
                                 if(!_loc2_)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc1_)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 addr84:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop7;
                                 }
                              }
                              return;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
   }
}
