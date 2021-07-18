package §_-Ja§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         if(_loc4_ || this)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     addr45:
                     §§pop();
                     §§push(Boolean(isNaN(param2)));
                  }
               }
               if(§§pop())
               {
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
               }
               this.x = param1;
               if(_loc4_ || this)
               {
                  addr79:
                  this.y = param2;
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr79);
      }
      
      public static function §_-XT§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §_-0a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.x = 0;
            if(_loc1_ || this)
            {
               this.y = 0;
            }
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        addr54:
                        if(isNaN(param2))
                        {
                           if(_loc3_)
                           {
                              throw new Error("b2Vec2: X and Y cannot be NaN.");
                           }
                           addr75:
                           this.x = param1;
                           if(!_loc4_)
                           {
                              this.y = param2;
                           }
                        }
                        §§goto(addr75);
                     }
                     return;
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr75);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.x = param1.x;
            if(_loc3_ || _loc2_)
            {
               this.y = param1.y;
            }
         }
      }
      
      public function §_-D§() : b2Vec2
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
         if(_loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §_-2F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || this)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            if(_loc1_ || _loc2_)
            {
               addr46:
               §§push(this);
               §§push(this.y);
               if(_loc1_ || this)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §_-Jv§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            if(!_loc3_)
            {
               addr45:
               §§push(this);
               §§push(this.y);
               if(_loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §_-XY§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            if(_loc2_)
            {
               addr38:
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §_-6z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            if(_loc3_)
            {
               addr45:
               §§push(this);
               §§push(this.y);
               if(_loc3_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §_-HG§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr60);
               }
               §§goto(addr56);
            }
            addr60:
            §§push(param1.col2.x);
            if(!(_loc3_ && this))
            {
               addr56:
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop() + §§pop();
            if(_loc4_)
            {
               addr63:
               §§push(this);
               §§push(param1.col1.y);
               if(_loc4_ || _loc2_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        addr80:
                        §§push(param1.col2.y);
                        if(_loc4_)
                        {
                           addr92:
                           §§push(§§pop() * this.y);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().y = §§pop();
                     §§goto(addr97);
                  }
                  §§goto(addr92);
               }
               §§goto(addr80);
            }
            addr97:
            return;
         }
         §§goto(addr63);
      }
      
      public function §_-85§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§_-Ly§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.y = b2Math.§_-Ly§(this,param1.col2);
            if(_loc4_)
            {
               addr53:
               this.x = _loc2_;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §_-a4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            if(!(_loc3_ && param1))
            {
               addr49:
               §§push(this);
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc4_ || this)
                  {
                     addr73:
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
                  §§goto(addr76);
               }
               §§goto(addr73);
            }
            addr76:
            return;
         }
         §§goto(addr49);
      }
      
      public function §_-dj§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(-§§pop());
               if(_loc3_ || param1)
               {
                  addr45:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               if(_loc3_)
               {
                  addr58:
                  §§push(this);
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr58);
      }
      
      public function §_-2j§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            if(_loc2_ || _loc2_)
            {
               §§push(this.x);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr41:
                     §§push(this.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr50:
                        §§push(Number(§§pop()));
                        if(!(_loc3_ && _loc2_))
                        {
                           addr76:
                           §§pop().x = §§pop();
                           if(!_loc3_)
                           {
                              addr79:
                              §§push(this);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(this.y);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr95:
                                       §§push(this.y);
                                       if(_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc3_ && _loc2_)
                                          {
                                             addr120:
                                             §§pop().y = Number(§§pop());
                                             return;
                                             addr119:
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1.y);
                                       if(_loc2_)
                                       {
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr76);
                     }
                     addr75:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr50);
            }
            §§goto(addr41);
         }
         §§goto(addr79);
      }
      
      public function §_-d§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() > param1.x)
                  {
                     addr37:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ || param1)
                        {
                        }
                        §§goto(addr67);
                     }
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr66);
                     }
                  }
               }
               addr67:
               §§pop().x = §§pop();
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this);
                  if(!_loc2_)
                  {
                     §§push(this.y);
                     if(_loc3_ || this)
                     {
                        if(§§pop() > param1.y)
                        {
                           addr91:
                           §§push(this.y);
                           if(!(_loc2_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc2_ && _loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           §§push(param1.y);
                           if(!_loc2_)
                           {
                              §§goto(addr120);
                           }
                        }
                        §§pop().y = §§pop();
                        §§goto(addr122);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr91);
               }
               §§goto(addr122);
            }
            §§goto(addr37);
         }
         addr122:
      }
      
      public function §_-xY§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.x);
            if(_loc1_ || this)
            {
               §§push(0);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr47:
                        §§push(this);
                        §§push(this.x);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc1_)
                        {
                           addr61:
                           if(this.y < 0)
                           {
                              if(_loc2_ && _loc2_)
                              {
                              }
                           }
                           §§goto(addr91);
                        }
                        §§push(this);
                        §§push(this.y);
                        if(!(_loc2_ && this))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                     }
                     addr91:
                     return;
                  }
               }
            }
            §§goto(addr61);
         }
         §§goto(addr47);
      }
      
      public function §_-dP§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §_-Un§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_ || this)
         {
            §§push(this.x);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
               }
               §§goto(addr57);
            }
            §§goto(addr53);
         }
         addr57:
         §§push(this.y);
         if(!_loc1_)
         {
            addr53:
            §§push(§§pop() * this.y);
         }
         return §§pop() + §§pop();
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr56:
                     §§push(0);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(1 / _loc1_);
                     if(!(_loc3_ && this))
                     {
                        addr70:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc4_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                     if(_loc4_)
                     {
                        addr89:
                        §§push(this);
                        §§push(this.y);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                     }
                     return _loc1_;
                  }
                  §§goto(addr89);
               }
               §§goto(addr60);
            }
            §§goto(addr70);
         }
         §§goto(addr56);
      }
      
      public function §_-yU§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(b2Math.§_-yU§(this.x));
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr46:
                        §§push(b2Math.§_-yU§(this.y));
                        if(_loc2_ && this)
                        {
                        }
                        §§goto(addr65);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
            }
            addr65:
            return §§pop();
         }
         §§goto(addr46);
      }
   }
}
