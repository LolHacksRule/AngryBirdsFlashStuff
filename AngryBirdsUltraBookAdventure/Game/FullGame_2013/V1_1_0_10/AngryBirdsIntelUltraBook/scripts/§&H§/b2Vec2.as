package §&H§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr117:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr116:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.x = param1;
                           addr39:
                           while(!(_loc4_ && param2))
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || param2)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
               }
               §§goto(addr116);
            }
         }
         while(true)
         {
            this.y = param2;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr39);
         }
      }
      
      public static function §5U§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.x = 0;
            do
            {
               this.y = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           this.x = param1;
                           while(!(_loc4_ && this))
                           {
                              this.y = param2;
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                              if(!_loc4_)
                              {
                                 continue loop4;
                              }
                              addr103:
                              while(true)
                              {
                                 §§push(Boolean(isNaN(param2)));
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr104);
                              }
                              addr104:
                           }
                        }
                        return;
                     }
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
                  addr88:
               }
               §§goto(addr103);
            }
         }
         §§goto(addr96);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(_loc2_);
            
         }
      }
      
      public function §=,§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!(_loc2_ && this))
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!_loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §6!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
         }
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
         while(_loc1_ && _loc1_);
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §2!3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §#!<§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc2_);
            
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
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_ && this);
         
      }
      
      public function §%G§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     addr112:
                     §§push(param1.col2.x);
                     if(_loc3_)
                     {
                        addr117:
                        §§push(§§pop() * this.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ || param1))
                           {
                              continue;
                           }
                           addr67:
                           §§push(param1.col2.y);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr67);
                  }
                  while(§§pop().y = §§pop(), !_loc3_);
                  
                  return;
                  addr94:
               }
               §§goto(addr117);
            }
            §§goto(addr112);
         }
         §§goto(addr94);
      }
      
      public function §]!d§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§#D§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this.y = b2Math.§#D§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(_loc4_);
            
         }
      }
      
      public function §66§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §<G§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(-§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  addr87:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc4_ && _loc3_);
               
               return;
               addr74:
            }
            §§goto(addr87);
         }
         §§goto(addr74);
      }
      
      public function §7!5§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(_loc2_ || this)
            {
               §§push(this.x);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() < param1.x)
                  {
                     addr108:
                     §§push(this.x);
                     if(!_loc3_)
                     {
                        addr112:
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           addr121:
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(this);
                              if(!_loc3_)
                              {
                                 §§push(this.y);
                                 if(_loc2_ || param1)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr40:
                                       §§push(this.y);
                                       if(_loc2_)
                                       {
                                          addr44:
                                          §§push(Number(§§pop()));
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1.y);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    continue;
                                 }
                                 §§goto(addr44);
                              }
                              §§goto(addr40);
                           }
                           while(§§pop().y = §§pop(), _loc3_ && this);
                           
                           return;
                           addr76:
                        }
                        §§goto(addr121);
                     }
                     addr120:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr112);
            }
            §§goto(addr108);
         }
         §§goto(addr76);
      }
      
      public function §1!L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr94:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           addr111:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§goto(addr111);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc3_ || this)
                     {
                        §§push(this.y);
                        if(_loc3_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr56:
                              §§push(this.y);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§push(Number(§§pop()));
                              if(!_loc2_)
                              {
                                 addr63:
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(_loc2_)
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                           continue;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr56);
                  }
                  while(§§pop().y = §§pop(), !_loc3_);
                  
                  return;
                  addr72:
               }
               §§goto(addr111);
            }
            §§goto(addr94);
         }
         §§goto(addr72);
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
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc2_ || this)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        addr93:
                        while(true)
                        {
                        }
                     }
                     addr81:
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(_loc2_)
                     {
                        §§push(0);
                        if(!_loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       addr54:
                                       §§push(this);
                                       §§push(this.y);
                                       if(_loc2_ || this)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().y = §§pop();
                                       addr76:
                                       break;
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr76);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
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
         if(_loc2_ || _loc2_)
         {
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  addr58:
                  §§push(this.y);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr67:
                     §§push(§§pop() * this.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr67);
         }
         §§goto(addr58);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!_loc4_)
                  {
                     addr56:
                     §§push(0);
                     if(!(_loc4_ && this))
                     {
                        return §§pop();
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
               §§push(1 / _loc1_);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr71:
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.x);
               if(!_loc4_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(this.y);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(!_loc3_);
               
            }
            return _loc1_;
         }
         §§goto(addr56);
      }
      
      public function §-!<§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(b2Math.§-!<§(this.x));
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr71:
                        §§pop();
                        §§push(b2Math.§-!<§(this.y));
                        if(_loc1_ || _loc2_)
                        {
                           addr83:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr83);
            }
         }
         §§goto(addr71);
      }
   }
}
