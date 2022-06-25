package §&H§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            loop0:
            do
            {
               §§push(Boolean(isNaN(param1)));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr108:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr107:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr108))
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || param1)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        break loop1;
                        §§goto(addr40);
                     }
                  }
                  this.x = param1;
                  addr40:
                  do
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     continue loop4;
                  }
                  while(this.y = param2, _loc3_);
                  
                  return;
               }
               §§goto(addr107);
            }
            while(!_loc4_);
            
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         §§goto(addr97);
      }
      
      public static function §5U§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         if(!(_loc3_ && this))
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.x = param1;
                           while(_loc4_ || param1)
                           {
                              this.y = param2;
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              if(_loc4_ || this)
                              {
                                 break loop3;
                              }
                           }
                        }
                     }
                     if(_loc4_)
                     {
                        throw new Error("b2Vec2: X and Y cannot be NaN.");
                     }
                     addr110:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop0;
                  }
                  return;
                  addr94:
                  addr57:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr57);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §=,§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!(_loc1_ && _loc2_))
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §6!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(_loc1_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §2!3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc3_ && this);
         
      }
      
      public function §#!<§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §9""§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §%G§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr122:
                     §§push(param1.col2.x);
                     if(_loc4_ || _loc2_)
                     {
                        addr118:
                        §§push(§§pop() * this.y);
                     }
                     §§pop().x = §§pop() + §§pop();
                     do
                     {
                        §§push(this);
                        §§push(param1.col1.y);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(param1.col2.y);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * this.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                     }
                     while(§§pop().y = §§pop(), _loc3_);
                     
                     return;
                     addr123:
                  }
                  §§goto(addr122);
               }
               §§goto(addr118);
            }
            §§goto(addr122);
         }
         §§goto(addr123);
      }
      
      public function §]!d§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§#D§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.y = b2Math.§#D§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      public function §66§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(_loc4_ || _loc2_)
               {
                  §§push(-§§pop());
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
               }
            }
            while(§§pop().y = §§pop(), _loc3_);
            
         }
      }
      
      public function §<G§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(_loc3_)
               {
                  addr77:
                  §§push(§§pop() * this.y);
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
               while(_loc4_ && _loc2_);
               
               return;
               addr69:
            }
            §§goto(addr77);
         }
         §§goto(addr69);
      }
      
      public function §7!5§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr113:
                     §§push(this.x);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_ || param1)
                        {
                        }
                     }
                     else
                     {
                        addr135:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§goto(addr135);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.y);
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() < param1.y)
                           {
                              addr50:
                              §§push(this.y);
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_ && this)
                                 {
                                    addr82:
                                    §§push(Number(§§pop()));
                                    continue;
                                 }
                              }
                              continue;
                           }
                           §§push(param1.y);
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr50);
                  }
                  while(§§pop().y = §§pop(), !(_loc2_ || this));
                  
                  return;
                  addr137:
               }
               §§goto(addr135);
            }
            §§goto(addr113);
         }
         §§goto(addr137);
      }
      
      public function §1!L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!(_loc3_ && this))
            {
               §§push(this.x);
               if(_loc2_ || this)
               {
                  if(§§pop() > param1.x)
                  {
                     addr108:
                     §§push(this.x);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           addr125:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§goto(addr125);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!_loc3_)
                     {
                        §§push(this.y);
                        if(_loc2_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr35:
                              §§push(this.y);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue;
                                 }
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                        }
                        continue;
                     }
                     §§goto(addr35);
                  }
                  while(§§pop().y = §§pop(), !(_loc2_ || param1));
                  
                  return;
                  addr127:
               }
               §§goto(addr125);
            }
            §§goto(addr108);
         }
         §§goto(addr127);
      }
      
      public function §0@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr83:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
                  if(_loc2_)
                  {
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
                     addr86:
                  }
                  while(true)
                  {
                     continue loop0;
                     addr50:
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this);
                        §§push(this.y);
                        if(_loc2_ || this)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        addr20:
                        return;
                        addr79:
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §,!t§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §%!]§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_)
         {
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && this))
               {
                  addr43:
                  §§push(this.y);
                  if(_loc2_)
                  {
                     addr47:
                     §§push(§§pop() * this.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_ || _loc3_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr62:
                     §§push(0);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr77);
               }
               §§push(1 / _loc1_);
               if(_loc4_ || _loc1_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr77:
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this);
               §§push(this.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(this.y);
                  if(_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc3_);
               
            }
            return _loc1_;
         }
         §§goto(addr62);
      }
      
      public function §-!<§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(b2Math.§-!<§(this.x));
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  addr58:
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr63:
                        §§push(b2Math.§-!<§(this.y));
                        if(_loc2_ || _loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr63);
      }
   }
}
