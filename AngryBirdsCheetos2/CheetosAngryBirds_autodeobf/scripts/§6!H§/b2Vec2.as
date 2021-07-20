package §6!H§
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
         }
         loop0:
         while(true)
         {
            §§push(Boolean(isNaN(param1)));
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.x = param1;
                           continue loop0;
                        }
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     addr86:
                     addr41:
                     while(_loc3_ || this)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        addr111:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                     continue loop1;
                     return;
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  addr78:
               }
               §§goto(addr111);
            }
         }
      }
      
      public static function §6^§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §7_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(!_loc4_)
         {
            §§push(Boolean(isNaN(param1)));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr99:
                     loop4:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_ || param2)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    this.x = param1;
                                    while(_loc3_ || param1)
                                    {
                                       this.y = param2;
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 return;
                              }
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           throw new Error("b2Vec2: X and Y cannot be NaN.");
                           addr66:
                        }
                     }
                  }
                  addr98:
               }
               §§goto(addr66);
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §"n§() : b2Vec2
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
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §[A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && _loc1_))
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
      
      public function §!!,§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && param1))
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
         while(_loc3_ && _loc2_);
         
      }
      
      public function §>k§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
               if(!_loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §[!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §,$§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && this))
                  {
                     addr126:
                     §§push(param1.col2.x);
                     if(_loc3_ || this)
                     {
                        addr122:
                        §§push(§§pop() * this.y);
                     }
                     §§pop().x = §§pop() + §§pop();
                     do
                     {
                        §§push(this);
                        §§push(param1.col1.y);
                        if(_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 continue;
                              }
                              §§push(param1.col2.y);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * this.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                     }
                     while(§§pop().y = §§pop(), !(_loc3_ || _loc2_));
                     
                     return;
                     addr74:
                  }
                  §§goto(addr126);
               }
               §§goto(addr122);
            }
            §§goto(addr126);
         }
         §§goto(addr74);
      }
      
      public function § !A§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§%!a§(this,param1.col1));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.y = b2Math.§%!a§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(!(_loc4_ || this));
         
      }
      
      public function §>"§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
            while(_loc4_);
            
         }
      }
      
      public function §;!G§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(-§§pop());
               if(!_loc3_)
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
            if(!(_loc3_ && this))
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §4z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc3_ || param1)
            {
               §§push(this.x);
               if(_loc3_ || this)
               {
                  if(§§pop() < param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ || this)
                        {
                        }
                        addr137:
                        §§pop().x = §§pop();
                        do
                        {
                           §§push(this);
                           if(_loc3_)
                           {
                              §§push(this.y);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() < param1.y)
                                 {
                                    addr41:
                                    §§push(this.y);
                                    if(!_loc2_)
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
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                              }
                              continue;
                           }
                           §§goto(addr41);
                        }
                        while(§§pop().y = §§pop(), _loc2_ && this);
                        
                        return;
                        addr138:
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr104);
         }
         §§goto(addr138);
      }
      
      public function §>O§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc3_ || this)
            {
               §§push(this.x);
               if(!(_loc2_ && param1))
               {
                  if(§§pop() > param1.x)
                  {
                     addr99:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           addr121:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           addr116:
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§goto(addr121);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!_loc2_)
                     {
                        §§push(this.y);
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(§§pop() > param1.y)
                        {
                           addr36:
                           §§push(this.y);
                           if(_loc3_ || _loc3_)
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
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr36);
                  }
                  while(§§pop().y = §§pop(), _loc2_ && _loc3_);
                  
                  return;
                  addr123:
               }
               §§goto(addr116);
            }
            §§goto(addr99);
         }
         §§goto(addr123);
      }
      
      public function §1T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr94:
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
                     if(!_loc2_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §2P§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §0]§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§goto(addr71);
            }
            §§push(§§pop() + §§pop());
         }
         addr71:
         §§push(§§pop() * §§pop());
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.y);
            if(!_loc1_)
            {
               return §§pop() * this.y;
            }
         }
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!_loc3_)
                  {
                     addr42:
                     §§push(0);
                     if(_loc4_)
                     {
                        §§goto(addr45);
                     }
                  }
                  else
                  {
                     addr46:
                     §§push(1 / _loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                  }
                  do
                  {
                     §§push(this);
                     §§push(this.y);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!(_loc4_ || _loc1_));
                  
                  return _loc1_;
               }
               §§goto(addr46);
            }
            addr45:
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §&U§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(b2Math.§&U§(this.x));
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr53:
                        §§push(b2Math.§&U§(this.y));
                        if(_loc1_ && this)
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
         §§goto(addr53);
      }
   }
}
