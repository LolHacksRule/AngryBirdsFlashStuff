package §[R§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §§push(Boolean(isNaN(param1)));
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        loop2:
                        while(_loc4_ || _loc3_)
                        {
                           while(true)
                           {
                              this.x = param1;
                              do
                              {
                                 this.y = param2;
                              }
                              while(_loc3_);
                              
                              if(!(_loc3_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        continue loop0;
                     }
                     §§goto(addr38);
                     addr118:
                     §§push(Boolean(isNaN(param2)));
                     if(_loc4_ || this)
                     {
                        continue;
                     }
                     addr100:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr100:
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
               }
            }
            §§goto(addr100);
         }
      }
      
      public static function §+!S§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §&"Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.x = 0;
            do
            {
               this.y = 0;
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        addr105:
                        while(_loc4_ || _loc3_)
                        {
                        }
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc4_ || param2)
                           {
                              continue loop0;
                           }
                           addr104:
                           while(true)
                           {
                              §§pop();
                              continue loop6;
                           }
                        }
                        addr80:
                     }
                     while(true)
                     {
                        this.x = param1;
                        while(!_loc3_)
                        {
                           this.y = param2;
                           if(!_loc3_)
                           {
                              return;
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  addr67:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr105);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function §5!]§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §=" §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || _loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function § true§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §-p§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!_loc3_)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!_loc2_);
         
      }
      
      public function §?1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §=Y§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr93:
                     §§push(param1.col2.x);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr116:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr116);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr63:
                           §§push(param1.col2.y);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr63);
                  }
                  while(§§pop().y = §§pop(), !(_loc4_ || param1));
                  
                  return;
                  addr118:
               }
               §§goto(addr116);
            }
            §§goto(addr93);
         }
         §§goto(addr118);
      }
      
      public function §98§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§+#>§(this,param1.col1));
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            this.y = b2Math.§+#>§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc4_);
         
      }
      
      public function §`0§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this);
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(-§§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(_loc3_ && this);
         
      }
      
      public function §7!m§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(-§§pop());
               if(_loc3_)
               {
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().y = §§pop();
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §;"H§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr94:
                     §§push(this.x);
                     if(_loc3_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           addr122:
                           §§pop().x = Number(§§pop());
                           addr121:
                           do
                           {
                              §§push(this);
                              if(!_loc2_)
                              {
                                 §§push(this.y);
                                 if(_loc3_ || param1)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr46:
                                       §§push(this.y);
                                       if(_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc2_ && _loc2_)
                                          {
                                          }
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1.y);
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 continue;
                              }
                              §§goto(addr46);
                           }
                           while(§§pop().y = §§pop(), !_loc3_);
                           
                           return;
                           addr82:
                        }
                        §§goto(addr122);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr94);
         }
         §§goto(addr82);
      }
      
      public function §;V§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            if(_loc3_ || _loc2_)
            {
               §§push(this.x);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        addr136:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!_loc2_)
                     {
                        §§push(this.y);
                        if(_loc3_ || param1)
                        {
                           if(§§pop() <= param1.y)
                           {
                              §§push(param1.y);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue;
                           }
                           addr46:
                           §§push(this.y);
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc2_ && param1)
                        {
                        }
                        continue;
                     }
                     §§goto(addr46);
                  }
                  while(§§pop().y = §§pop(), _loc2_);
                  
                  return;
                  addr138:
               }
               §§goto(addr136);
            }
            §§goto(addr104);
         }
         §§goto(addr138);
      }
      
      public function §6"%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr85:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!_loc1_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function Length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §1"t§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.x);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && this))
               {
                  addr63:
                  §§push(this.y);
                  if(_loc2_)
                  {
                     addr70:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr70);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr63);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!(_loc3_ && this))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        §§goto(addr65);
                     }
                  }
                  else
                  {
                     addr66:
                     §§push(1 / _loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                  }
                  do
                  {
                     §§push(this);
                     §§push(this.y);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!_loc4_);
                  
                  return _loc1_;
               }
               §§goto(addr66);
            }
            addr65:
            return §§pop();
         }
         §§goto(addr66);
      }
      
      public function §&" §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§&" §(this.x));
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        addr53:
                        §§push(b2Math.§&" §(this.y));
                        if(_loc2_ || _loc2_)
                        {
                           addr74:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr74);
                  }
               }
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr53);
      }
   }
}
