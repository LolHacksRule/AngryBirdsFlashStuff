package §&L§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            loop0:
            do
            {
               §§push(Boolean(isNaN(param1)));
               if(_loc3_ || param1)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop1:
                     while(!§§pop())
                     {
                        do
                        {
                           this.x = param1;
                           while(!_loc4_)
                           {
                              this.y = param2;
                              if(_loc3_)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(!_loc4_);
                        
                        loop5:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!(_loc4_ && param2))
                           {
                              continue loop1;
                           }
                           addr114:
                           while(true)
                           {
                              §§pop();
                              continue loop5;
                           }
                        }
                     }
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
               }
               §§goto(addr114);
            }
            while(!(_loc3_ || _loc3_));
            
            return;
         }
         §§goto(addr115);
      }
      
      public static function §;!+§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §5b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.x = 0;
            do
            {
               this.y = 0;
            }
            while(!_loc2_);
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc4_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop3:
                  while(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.x = param1;
                        while(_loc4_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              this.y = param2;
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 break loop3;
                              }
                              continue;
                           }
                           addr112:
                           while(true)
                           {
                              §§push(Boolean(isNaN(param2)));
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr113);
                           }
                           addr113:
                        }
                        addr97:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  addr91:
               }
               §§goto(addr112);
            }
         }
         §§goto(addr97);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function §[3§() : b2Vec2
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
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §%`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || this)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc1_ || this)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(_loc2_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §4!0§(param1:b2Vec2) : void
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
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!_loc2_);
         
      }
      
      public function §8O§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §%!U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && this))
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
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §%!^§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr122:
                     §§push(param1.col2.x);
                     if(_loc4_)
                     {
                        addr118:
                        §§push(§§pop() * this.y);
                     }
                     §§pop().x = §§pop() + §§pop();
                     do
                     {
                        §§push(this);
                        §§push(param1.col1.y);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ || param1))
                              {
                                 continue;
                              }
                              §§push(param1.col2.y);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() * this.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                     }
                     while(§§pop().y = §§pop(), !(_loc4_ || _loc3_));
                     
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
      
      public function §?-§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§2&§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.y = b2Math.§2&§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc4_ && param1);
         
      }
      
      public function §#!%§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(param1);
            if(!_loc3_)
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
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function §2E§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(!_loc4_)
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
               while(!(_loc3_ || _loc3_));
               
               return;
               addr91:
            }
            §§goto(addr87);
         }
         §§goto(addr91);
      }
      
      public function §!!G§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc3_)
            {
               §§push(this.x);
               if(_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr103:
                     §§push(this.x);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ && _loc2_)
                        {
                        }
                        addr126:
                        §§pop().x = §§pop();
                        do
                        {
                           §§push(this);
                           if(_loc2_ || this)
                           {
                              §§push(this.y);
                              if(_loc2_)
                              {
                                 if(§§pop() < param1.y)
                                 {
                                    addr40:
                                    §§push(this.y);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    addr44:
                                    §§push(Number(§§pop()));
                                    if(_loc2_)
                                    {
                                       continue;
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
                        while(§§pop().y = §§pop(), _loc3_ && param1);
                        
                        return;
                        addr76:
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr125:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr125);
            }
            §§goto(addr103);
         }
         §§goto(addr76);
      }
      
      public function §,_§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            if(!(_loc3_ && this))
            {
               §§push(this.x);
               if(_loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr111:
                           §§pop().x = Number(§§pop());
                           addr110:
                           do
                           {
                              §§push(this);
                              if(!_loc3_)
                              {
                                 §§push(this.y);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() <= param1.y)
                                    {
                                       §§push(param1.y);
                                       if(_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       continue;
                                    }
                                    addr40:
                                    §§push(this.y);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr40);
                           }
                           while(§§pop().y = §§pop(), _loc3_);
                           
                           return;
                           addr112:
                        }
                        §§goto(addr111);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§goto(addr110);
                     }
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr93);
         }
         §§goto(addr112);
      }
      
      public function §"b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr79:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function § >§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §+!I§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(!_loc2_)
         {
            §§push(this.x);
            if(_loc1_ || _loc1_)
            {
               §§goto(addr55);
            }
            §§push(§§pop() + §§pop());
         }
         addr55:
         §§push(§§pop() * §§pop());
         if(!(_loc2_ && this))
         {
            §§push(this.y);
            if(!_loc2_)
            {
               return §§pop() * this.y;
            }
         }
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr63:
                     §§push(0);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr67:
                     §§push(1 / _loc1_);
                     if(!_loc4_)
                     {
                        §§goto(addr72);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc3_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                     do
                     {
                        §§push(this);
                        §§push(this.y);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                     }
                     while(_loc4_ && _loc2_);
                     
                  }
                  return _loc1_;
               }
               §§goto(addr67);
            }
            §§goto(addr72);
         }
         §§goto(addr63);
      }
      
      public function §9M§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(b2Math.§9M§(this.x));
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr66:
                        §§pop();
                        addr67:
                        §§push(b2Math.§9M§(this.y));
                        if(_loc1_ && _loc1_)
                        {
                        }
                        §§goto(addr80);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr80:
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr67);
      }
   }
}
