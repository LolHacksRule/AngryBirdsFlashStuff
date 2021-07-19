package §6A§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
         }
         loop0:
         while(true)
         {
            §§push(Boolean(isNaN(param1)));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     addr103:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop6;
                     }
                  }
                  addr102:
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        this.x = param1;
                        while(!_loc3_)
                        {
                           this.y = param2;
                           if(_loc4_)
                           {
                              return;
                           }
                        }
                     }
                     addr36:
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               throw new Error("b2Vec2: X and Y cannot be NaN.");
            }
            §§goto(addr102);
         }
      }
      
      public static function § !Q§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §^!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.x = 0;
            do
            {
               this.y = 0;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(Boolean(isNaN(param1)));
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr99:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr98:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param2)
                     {
                        throw new Error("b2Vec2: X and Y cannot be NaN.");
                     }
                     loop1:
                     while(true)
                     {
                        addr54:
                        while(true)
                        {
                           this.x = param1;
                           do
                           {
                              this.y = param2;
                           }
                           while(!(_loc3_ || this));
                           
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr54);
               }
               return;
               addr53:
            }
            §§goto(addr98);
         }
         §§goto(addr53);
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
            while(_loc3_);
            
         }
      }
      
      public function §^!b§() : b2Vec2
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
         if(_loc2_ || _loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §#!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
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
            while(_loc2_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function § v§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §&!S§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §0O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc3_ || this)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §-[§(param1:b2Mat22) : void
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
            §§push(param1.col1.x);
            if(_loc3_ || param1)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     addr112:
                     §§push(param1.col2.x);
                     if(!_loc4_)
                     {
                        addr130:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr130);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || this)
                           {
                              addr57:
                              §§push(param1.col2.y);
                              if(_loc3_ || this)
                              {
                                 addr77:
                                 §§push(§§pop() * this.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           continue;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr57);
                  }
                  while(§§pop().y = §§pop(), _loc4_ && this);
                  
                  return;
                  addr89:
               }
               §§goto(addr130);
            }
            §§goto(addr112);
         }
         §§goto(addr89);
      }
      
      public function §#@§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§[!N§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.y = b2Math.§[!N§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(_loc4_);
            
         }
      }
      
      public function §!!3§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
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
            if(_loc4_ || _loc3_)
            {
               §§push(-§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(_loc3_);
         
      }
      
      public function §8V§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(_loc3_)
               {
                  addr72:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(!_loc3_);
               
               return;
               addr54:
            }
            §§goto(addr72);
         }
         §§goto(addr54);
      }
      
      public function §&!]§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(!(_loc3_ && this))
               {
                  if(§§pop() < param1.x)
                  {
                     addr98:
                     §§push(this.x);
                     if(_loc2_ || _loc2_)
                     {
                        addr107:
                        §§push(Number(§§pop()));
                        if(_loc2_ || _loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(this.y);
                        if(_loc2_ || param1)
                        {
                           if(§§pop() < param1.y)
                           {
                              addr50:
                              §§push(this.y);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                              }
                              continue;
                           }
                           §§push(param1.y);
                           if(_loc3_)
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                     §§goto(addr50);
                  }
                  while(§§pop().y = §§pop(), !_loc2_);
                  
                  return;
                  addr81:
               }
               §§goto(addr107);
            }
            §§goto(addr98);
         }
         §§goto(addr81);
      }
      
      public function §7!Q§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.x);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() > param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(!(_loc3_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  if(!_loc3_)
                  {
                     §§push(this.y);
                     if(!_loc3_)
                     {
                        if(§§pop() > param1.y)
                        {
                           addr40:
                           §§push(this.y);
                           if(!_loc2_)
                           {
                              continue;
                           }
                           addr44:
                           §§push(Number(§§pop()));
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           §§push(param1.y);
                           if(!(_loc2_ || param1))
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
               while(§§pop().y = §§pop(), _loc3_ && _loc2_);
               
               return;
               addr76:
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public function §!V§() : void
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
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(!(_loc2_ && this))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        while(true)
                        {
                           addr44:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this);
                              §§push(this.y);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().y = §§pop();
                              addr73:
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr19:
                                 return;
                                 addr80:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§goto(addr44);
                              }
                              §§goto(addr73);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §--§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §,H§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(_loc1_ || this)
         {
            §§push(this.x);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc1_))
               {
                  addr52:
                  §§push(this.y);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr71:
                     §§push(§§pop() * this.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr71);
         }
         §§goto(addr52);
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
                  if(_loc4_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr56:
                     §§push(1 / _loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        addr76:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                     do
                     {
                        §§push(this);
                        §§push(this.y);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                     }
                     while(!(_loc4_ || this));
                     
                  }
                  return _loc1_;
               }
               §§goto(addr56);
            }
            §§goto(addr76);
         }
         §§goto(addr56);
      }
      
      public function § if§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(b2Math.§ if§(this.x));
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  addr42:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        addr47:
                        §§push(b2Math.§ if§(this.y));
                        if(_loc1_ || _loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr42);
         }
         §§goto(addr47);
      }
   }
}
