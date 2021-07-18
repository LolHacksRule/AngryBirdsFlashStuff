package §<!B§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            if(_loc3_)
            {
               addr27:
               §§push(Boolean(isNaN(param1)));
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && param2))
                     {
                        §§pop();
                        addr63:
                        §§push(Boolean(isNaN(param2)));
                     }
                  }
               }
               if(§§pop())
               {
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
               }
               this.x = param1;
               this.y = param2;
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr27);
      }
      
      public static function §;!T§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §22§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.x = 0;
            if(_loc1_)
            {
               this.y = 0;
            }
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr39:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr80);
                  }
               }
               addr56:
               if(isNaN(param2))
               {
                  if(!_loc3_)
                  {
                     §§goto(addr59);
                  }
               }
               else
               {
                  this.x = param1;
                  if(_loc4_ || this)
                  {
                     addr80:
                     this.y = param2;
                  }
               }
               return;
            }
            §§goto(addr39);
         }
         addr59:
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = param1.x;
            if(_loc2_)
            {
               this.y = param1.y;
            }
         }
      }
      
      public function §[1§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc2_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(_loc2_ || _loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §-![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || _loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            if(_loc1_ || _loc2_)
            {
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §!a§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || this)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
         }
      }
      
      public function §&!v§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            if(!_loc2_)
            {
               addr40:
               §§push(this);
               §§push(this.y);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §=!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            if(_loc3_ || _loc2_)
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
         }
      }
      
      public function § '§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr56:
                     §§push(param1.col2.x);
                     if(_loc3_)
                     {
                        addr64:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr64);
                  }
                  §§pop().x = §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc3_ || param1)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              addr100:
                              §§push(param1.col2.y);
                              if(_loc3_)
                              {
                                 addr108:
                                 §§push(§§pop() + §§pop() * this.y);
                              }
                              §§goto(addr108);
                           }
                           §§pop().y = §§pop();
                           §§goto(addr110);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr110);
               }
               §§goto(addr64);
            }
            §§goto(addr56);
         }
         addr110:
      }
      
      public function §9!a§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§9!;§(this,param1.col1));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.y = b2Math.§9!;§(this,param1.col2);
            if(!_loc4_)
            {
               addr46:
               this.x = _loc2_;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §!!r§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            if(_loc3_)
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  §§push(-§§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
         }
      }
      
      public function §=!b§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(-§§pop());
               if(!_loc4_)
               {
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
            if(!_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().y = §§pop();
            }
         }
      }
      
      public function §6!h§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc3_)
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr34:
                     §§push(this.x);
                     if(!(_loc3_ && param1))
                     {
                        addr43:
                        §§push(Number(§§pop()));
                        if(!(_loc2_ || _loc2_))
                        {
                           addr66:
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§goto(addr66);
                     }
                  }
                  §§pop().x = §§pop();
                  if(!_loc3_)
                  {
                     §§push(this);
                     if(_loc2_)
                     {
                        §§push(this.y);
                        if(_loc2_)
                        {
                           if(§§pop() < param1.y)
                           {
                              addr91:
                              §§push(this.y);
                              if(!(_loc3_ && param1))
                              {
                                 addr100:
                                 §§push(Number(§§pop()));
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr118);
                              }
                           }
                           §§pop().y = §§pop();
                           §§goto(addr120);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr120);
               }
               §§goto(addr43);
            }
            §§goto(addr34);
         }
         addr120:
      }
      
      public function §2!O§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc2_)
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr34:
                     §§push(this.x);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr61:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           addr41:
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr61);
                     }
                  }
                  §§pop().x = §§pop();
                  if(!_loc3_)
                  {
                     §§push(this);
                     if(_loc2_ || param1)
                     {
                        §§push(this.y);
                        if(!_loc3_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr91:
                              §§push(this.y);
                              if(_loc2_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc2_ || this)
                                 {
                                    addr108:
                                 }
                              }
                              else
                              {
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr118);
                              }
                           }
                           §§pop().y = §§pop();
                           §§goto(addr120);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr120);
               }
               §§goto(addr41);
            }
            §§goto(addr34);
         }
         addr120:
      }
      
      public function §?!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.x);
            if(_loc2_)
            {
               §§push(0);
               if(!(_loc1_ && this))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(!(_loc1_ && this))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc2_ || _loc1_)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
                  addr80:
                  §§push(this.y);
                  §§push(0);
               }
               if(§§pop() < §§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr84);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr80);
         }
         addr84:
         §§push(this);
         §§push(this.y);
         if(!(_loc1_ && this))
         {
            §§push(-§§pop());
         }
         §§pop().y = §§pop();
      }
      
      public function §#!^§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §9^§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_)
         {
            §§push(this.x);
            if(!_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && _loc1_))
               {
                  addr43:
                  §§push(this.y);
                  if(!_loc1_)
                  {
                     addr47:
                     §§push(§§pop() * this.y);
                  }
                  §§push(§§pop() + §§pop());
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!(_loc4_ && this))
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr65:
                     §§push(1 / _loc1_);
                     if(!_loc4_)
                     {
                        §§goto(addr80);
                     }
                  }
               }
               §§goto(addr65);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.x);
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().x = §§pop();
               if(_loc3_)
               {
                  addr99:
                  §§push(this);
                  §§push(this.y);
                  if(_loc3_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               return _loc1_;
            }
            §§goto(addr99);
         }
         §§goto(addr65);
      }
      
      public function §@Y§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(b2Math.§@Y§(this.x));
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  addr43:
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr48:
                        §§push(b2Math.§@Y§(this.y));
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr48);
      }
   }
}
