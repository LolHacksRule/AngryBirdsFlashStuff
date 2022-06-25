package §&L§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    this.x = param1;
                                    addr62:
                                    while(_loc4_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              addr100:
                              throw new Error("b2Vec2: X and Y cannot be NaN.");
                              addr98:
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr98);
               }
            }
         }
         while(true)
         {
            this.y = param2;
            if(!(_loc3_ && this))
            {
               if(_loc4_ || param1)
               {
                  return;
               }
            }
            else
            {
               §§goto(addr62);
            }
            §§goto(addr100);
         }
      }
      
      public static function §;!+§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §5b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
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
                           while(_loc4_)
                           {
                              this.y = param2;
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                        addr107:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc3_ && param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr108);
                        }
                        addr108:
                     }
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
                  return;
                  addr86:
               }
               §§goto(addr107);
            }
         }
         §§goto(addr92);
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
         while(_loc3_);
         
      }
      
      public function §[3§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(_loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §%`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
         }
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
         while(!_loc1_);
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §4!0§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
            while(!_loc2_);
            
         }
      }
      
      public function §8O§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §%!U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §%!^§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr112:
                     §§push(param1.col2.x);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr125:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr125);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || this)
                        {
                           §§push(param1.col2.y);
                           if(!_loc4_)
                           {
                              addr72:
                              §§push(§§pop() * this.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        continue;
                     }
                     §§goto(addr72);
                  }
                  while(§§pop().y = §§pop(), _loc4_ && param1);
                  
                  return;
                  addr84:
               }
               §§goto(addr125);
            }
            §§goto(addr112);
         }
         §§goto(addr84);
      }
      
      public function §?-§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§2&§(this,param1.col1));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.y = b2Math.§2&§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §#!%§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
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
               if(_loc3_)
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
            }
            while(§§pop().y = §§pop(), !_loc3_);
            
         }
      }
      
      public function §2E§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
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
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().y = §§pop();
         }
         while(_loc4_ && this);
         
      }
      
      public function §!!G§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            if(!(_loc2_ && param1))
            {
               §§push(this.x);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr109:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
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
                                 if(!(_loc2_ && param1))
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr46:
                                       §§push(this.y);
                                       if(_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc3_)
                                          {
                                             addr68:
                                             §§push(Number(§§pop()));
                                             continue;
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(param1.y);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr46);
                           }
                           while(§§pop().y = §§pop(), !(_loc3_ || _loc3_));
                           
                           return;
                           addr77:
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
            §§goto(addr109);
         }
         §§goto(addr77);
      }
      
      public function §,_§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr94:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        addr98:
                        §§push(Number(§§pop()));
                        if(_loc2_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr111:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§goto(addr111);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc3_ || param1)
                     {
                        §§push(this.y);
                        if(!_loc2_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr41:
                              §§push(this.y);
                              if(_loc3_ || _loc3_)
                              {
                                 addr60:
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
                              if(!_loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           continue;
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr41);
                  }
                  while(§§pop().y = §§pop(), _loc2_);
                  
                  return;
                  addr113:
               }
               §§goto(addr98);
            }
            §§goto(addr94);
         }
         §§goto(addr113);
      }
      
      public function §"b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                     }
                     loop2:
                     while(true)
                     {
                        addr82:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr25);
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc1_)
                     {
                        §§push(0);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.y);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 addr60:
                              }
                              §§goto(addr82);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function § >§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §+!I§() : Number
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
               if(_loc1_)
               {
               }
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         addr46:
         §§push(this.y);
         if(_loc2_)
         {
            addr42:
            §§push(§§pop() * this.y);
         }
         return §§pop() + §§pop();
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_)
                  {
                     addr43:
                     §§push(0);
                     if(!(_loc4_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     §§push(1 / _loc1_);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                  }
                  do
                  {
                     §§push(this);
                     §§push(this.y);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return _loc1_;
               }
               §§goto(addr62);
            }
            §§goto(addr72);
         }
         §§goto(addr43);
      }
      
      public function §9M§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§9M§(this.x));
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr67:
                        §§push(b2Math.§9M§(this.y));
                        if(!_loc2_)
                        {
                        }
                     }
                  }
                  §§goto(addr75);
               }
               §§push(Boolean(§§pop()));
            }
            addr75:
            return §§pop();
         }
         §§goto(addr67);
      }
   }
}
