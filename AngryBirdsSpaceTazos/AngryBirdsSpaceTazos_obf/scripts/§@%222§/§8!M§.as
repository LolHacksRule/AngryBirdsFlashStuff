package §@"2§
{
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §@!U§.§18§;
   import §]">§.§<!=§;
   
   public class §8!M§
   {
       
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §"X§:Number;
      
      protected var §<!M§:Number;
      
      protected var §^§:Number;
      
      protected var §3>§:Number;
      
      protected var §5@§:Number;
      
      protected var §]!$§:Sprite;
      
      protected var §]!k§:§#r§;
      
      protected var §+!?§:Number;
      
      protected var §4J§:Number;
      
      protected var §]"E§:DisplayObject;
      
      protected var §?h§:Number;
      
      protected var §8`§:Number;
      
      protected var §=T§:Number;
      
      protected var §<j§:Vector.<§<!=§>;
      
      public function §8!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§#r§, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super();
            while(true)
            {
               this.§""4§ = param1;
               while(!(_loc8_ && this))
               {
                  this.§%W§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§]!k§ = param6;
                     while(true)
                     {
                        this.§]!$§ = param5;
                        continue loop2;
                        addr91:
                        if(_loc8_ && param3)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§8`§ = this.§]"E§.height;
                           while(true)
                           {
                              this.§=T§ = param7;
                              loop10:
                              while(!_loc8_)
                              {
                                 this.§`! §();
                                 while(_loc9_ || param3)
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§'<§(param3,param4);
                                       if(_loc9_ || param3)
                                       {
                                          if(_loc9_)
                                          {
                                             return;
                                          }
                                          continue loop10;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc8_ && param2))
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr91);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§]!$§.addChild(this.§]"E§);
                                             break loop7;
                                          }
                                          addr112:
                                       }
                                    }
                                    break;
                                    §§goto(addr42);
                                 }
                                 addr42:
                                 while(true)
                                 {
                                    this.§?h§ = this.§]"E§.width;
                                    §§goto(addr72);
                                 }
                                 addr72:
                              }
                           }
                        }
                     }
                  }
                  if(_loc8_ && param2)
                  {
                     continue;
                  }
                  this.§]"E§ = param6.getFrame(0);
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr98);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get angle() : Number
      {
         return this.§"X§;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      public function get §""&§() : Number
      {
         return this.§3>§;
      }
      
      public function get §@6§() : Number
      {
         return this.§5@§;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§?h§);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * §^g§.§5!-§;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8`§);
         if(!(_loc1_ && this))
         {
            return §§pop() * §^g§.§5!-§;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]!$§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!$§);
                     addr74:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      public function §+!I§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() / this.§^§);
            if(!_loc4_)
            {
               addr29:
               §§push(§§pop() * 1000);
               if(!_loc4_)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(this.§<!M§);
                     if(!(_loc4_ && this))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_ || this)
                           {
                              §§push(this.§<!M§);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_ || param1)
                                 {
                                    _loc2_ = §§pop();
                                    addr85:
                                    §§push(this.§""4§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr94:
                                       §§push(this.§3>§);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() * _loc2_);
                                          if(_loc3_ || _loc3_)
                                          {
                                          }
                                          addr125:
                                          return §§pop() - §§pop();
                                          addr124:
                                       }
                                       §§goto(addr124);
                                       §§push(§§pop() / 1000);
                                    }
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr94);
               }
               §§goto(addr85);
            }
            §§goto(addr33);
         }
         §§goto(addr29);
      }
      
      public function §'!#§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() / this.§^§);
            if(_loc3_ || _loc3_)
            {
               addr34:
               §§push(§§pop() * 1000);
               if(!_loc4_)
               {
                  addr38:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(this.§<!M§);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(this.§<!M§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr84:
                                    _loc2_ = §§pop();
                                    addr85:
                                    §§push(this.§%W§);
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr110);
                                 }
                                 §§push(this.§5@§);
                                 if(!_loc4_)
                                 {
                                    addr103:
                                    §§push(§§pop() * _loc2_);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                 }
                                 addr110:
                                 return §§pop();
                                 §§push(§§pop() - §§pop());
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr38);
         }
         §§goto(addr34);
      }
      
      protected function §8!3§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() / this.§^§);
            if(_loc4_)
            {
               §§push(§§pop() * 1000);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(this.§<!M§);
               if(_loc4_ || this)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc3_)
                     {
                        addr58:
                        §§push(this.§<!M§);
                        if(_loc4_)
                        {
                           addr62:
                           §§push(Number(§§pop()));
                           if(!_loc3_)
                           {
                              §§goto(addr65);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr65);
                     }
                  }
                  addr65:
                  _loc2_ = §§pop();
                  §§push(this.§^§);
                  if(_loc4_ || param1)
                  {
                     addr85:
                     §§push(§§pop() * _loc2_);
                     if(!_loc3_)
                     {
                        return §§pop() / 1000;
                     }
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr62);
         }
         §§goto(addr58);
      }
      
      public function §`! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(!this.§<j§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr82:
                     while(true)
                     {
                        §§push(this.§<j§.length > 0);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr81:
               }
               loop0:
               for(; §§pop(); §§goto(addr82))
               {
                  if(_loc1_)
                  {
                     while(true)
                     {
                        this.§<j§ = new Vector.<§<!=§>();
                     }
                     addr45:
                  }
                  while(true)
                  {
                     if(_loc1_ || this)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr45);
      }
      
      public function §'!§(param1:§18§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<j§.push(param1.§,;§);
         }
      }
      
      public function §#X§(param1:§18§) : Boolean
      {
         return this.§<j§.indexOf(param1.§,;§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'<§(param1,param2);
         }
      }
      
      protected function §'<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^§ = param2;
            while(true)
            {
               this.§"X§ = param1;
               loop1:
               while(true)
               {
                  this.§3>§ = Math.cos(this.§"X§) * this.§^§;
                  while(true)
                  {
                     this.§5@§ = Math.sin(this.§"X§) * this.§^§;
                     continue loop1;
                     addr36:
                     while(_loc4_ || param2)
                     {
                        this.§@!0§();
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr31:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§""4§);
            if(_loc2_ || _loc3_)
            {
               §§push(this.§3>§);
               if(!(_loc3_ && _loc2_))
               {
                  addr138:
                  §§push(§§pop() * param1);
                  if(!_loc3_)
                  {
                     addr135:
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§""4§ = §§pop() + §§pop();
                  do
                  {
                     §§push(this);
                     §§push(this.§%W§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§5@§);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() * param1);
                           if(_loc2_ || this)
                           {
                              §§push(§§pop() / 1000);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§%W§ = §§pop();
                     do
                     {
                        this.§@!0§();
                        do
                        {
                           §§push(this);
                           §§push(this.§<!M§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§<!M§ = §§pop();
                        }
                        while(_loc3_ && this);
                        
                     }
                     while(!_loc2_);
                     
                  }
                  while(_loc3_ && this);
                  
                  return;
                  addr53:
               }
               §§goto(addr135);
            }
            §§goto(addr138);
         }
         §§goto(addr53);
      }
      
      protected function §@!0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this);
            §§push(this.§""4§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() / §^g§.§5!-§);
            }
            §§pop().§+!?§ = §§pop();
            if(_loc3_)
            {
               §§push(this);
               §§push(this.§%W§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / §^g§.§5!-§);
               }
               §§pop().§4J§ = §§pop();
            }
         }
         §§push(this);
         §§push(this.§?h§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() * §^g§.§5!-§);
         }
         §§push(§§pop().§8!3§(§§pop()));
         if(_loc3_)
         {
            §§push(§§pop() / §^g§.§5!-§);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§8`§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this.§]"E§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               addr212:
               while(true)
               {
                  §§push(this.§=T§);
                  addr214:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr215:
                     while(true)
                     {
                        §§pop().width = §§pop();
                     }
                  }
               }
               loop8:
               while(true)
               {
                  if(_loc4_ && this)
                  {
                     continue loop0;
                  }
                  §§push(_loc1_);
                  loop9:
                  while(true)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        §§push(-§§pop());
                        loop10:
                        while(true)
                        {
                           §§pop().pivotX = §§pop();
                           addr171:
                           addr216:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 continue loop8;
                              }
                              addr208:
                              while(true)
                              {
                                 continue loop8;
                              }
                           }
                           while(true)
                           {
                              §§push(this.§]"E§);
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    §§push(this.§=T§);
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr197:
                                 addr99:
                                 while(true)
                                 {
                                    §§pop().height = §§pop();
                                    §§goto(addr208);
                                 }
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(-§§pop());
                                       if(!_loc4_)
                                       {
                                          addr134:
                                          if(!_loc3_)
                                          {
                                             continue loop10;
                                          }
                                          §§push(§§pop() / 2);
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop9;
                                       }
                                       if(!_loc3_)
                                       {
                                          break loop9;
                                       }
                                       §§pop().pivotY = §§pop();
                                       if(_loc3_ || _loc1_)
                                       {
                                          return;
                                       }
                                       §§goto(addr171);
                                    }
                                    else
                                    {
                                       §§goto(addr197);
                                    }
                                 }
                                 §§goto(addr134);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr212);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr215);
               }
            }
         }
         §§goto(addr216);
      }
      
      public function render() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]!$§);
            loop0:
            while(true)
            {
               §§pop().visible = true;
               loop1:
               while(true)
               {
                  §§push(this.§]!$§);
                  while(true)
                  {
                     §§push(this.§"X§);
                     addr106:
                     while(true)
                     {
                        §§pop().rotation = §§pop();
                        addr107:
                        while(!_loc2_)
                        {
                        }
                        continue loop1;
                     }
                     addr38:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     addr45:
                     §§push(this.§4J§);
                     if(!_loc2_)
                     {
                        addr59:
                        §§pop().y = §§pop();
                        if(!(_loc1_ || _loc1_))
                        {
                           loop8:
                           for(; !(_loc2_ && _loc2_); §§goto(addr59))
                           {
                              §§push(this.§]!$§);
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr38);
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§+!?§);
                                 while(_loc1_ || _loc2_)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop8;
                                    §§goto(addr45);
                                 }
                                 §§goto(addr106);
                                 §§goto(addr90);
                              }
                              addr90:
                           }
                           §§goto(addr107);
                        }
                        return;
                     }
                     §§goto(addr75);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr71);
         }
      }
   }
}
