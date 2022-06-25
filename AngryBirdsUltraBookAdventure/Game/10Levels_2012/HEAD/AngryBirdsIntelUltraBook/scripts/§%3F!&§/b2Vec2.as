package §?!&§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            loop0:
            do
            {
               §§push(Boolean(isNaN(param1)));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr121:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr120:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.x = param1;
                           while(_loc4_ || this)
                           {
                              this.y = param2;
                              if(!_loc3_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    break loop2;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        return;
                     }
                     addr42:
                     continue loop0;
                  }
               }
               §§goto(addr120);
            }
            while(_loc3_ && param2);
            
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         §§goto(addr42);
      }
      
      public static function §<3§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §@l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(_loc2_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc3_ && this))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr118:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
                  addr117:
               }
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.x = param1;
                        while(!(_loc3_ && _loc3_))
                        {
                           this.y = param2;
                           if(!_loc3_)
                           {
                              if(_loc4_ || param2)
                              {
                                 return;
                              }
                              addr79:
                              if(!(_loc3_ && param2))
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr96);
            }
            §§goto(addr117);
         }
         addr96:
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §7!F§() : b2Vec2
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
         if(!_loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §;+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc1_)
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
         while(_loc1_ && this);
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §1"§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!_loc3_)
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_ && this);
         
      }
      
      public function §=L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §49§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         while(_loc2_);
         
      }
      
      public function § `§(param1:b2Mat22) : void
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
            §§push(param1.col1.x);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     addr97:
                     §§push(param1.col2.x);
                     if(!_loc4_)
                     {
                        addr105:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr105);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr57:
                           §§push(param1.col2.y);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr57);
                  }
                  while(§§pop().y = §§pop(), _loc4_);
                  
                  return;
                  addr84:
               }
               §§goto(addr105);
            }
            §§goto(addr97);
         }
         §§goto(addr84);
      }
      
      public function § O§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§6!F§(this,param1.col1));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            this.y = b2Math.§6!F§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc3_);
         
      }
      
      public function §7!&§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(-§§pop());
               if(!_loc3_)
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), _loc4_ && _loc2_);
         
      }
      
      public function §6!§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(-§§pop());
               if(!(_loc3_ && this))
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
         while(_loc3_);
         
      }
      
      public function §!s§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(!(_loc3_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ && param1)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && _loc2_))
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
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop() < param1.y)
                        {
                           addr40:
                           §§push(this.y);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr49:
                              §§push(Number(§§pop()));
                              if(_loc2_ || _loc3_)
                              {
                              }
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
                     §§goto(addr49);
                  }
                  §§goto(addr40);
               }
               while(§§pop().y = §§pop(), _loc3_);
               
               return;
               addr132:
            }
            §§goto(addr93);
         }
         §§goto(addr132);
      }
      
      public function §5!2§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr99:
                     §§push(this.x);
                     if(_loc3_)
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
                     if(_loc3_ || param1)
                     {
                        addr121:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.y);
                        if(!_loc2_)
                        {
                           if(§§pop() <= param1.y)
                           {
                              §§push(param1.y);
                              if(_loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue;
                           }
                           addr41:
                           §§push(this.y);
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§push(Number(§§pop()));
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                     §§goto(addr41);
                  }
                  while(§§pop().y = §§pop(), _loc2_ && this);
                  
                  return;
                  addr77:
               }
               §§goto(addr121);
            }
            §§goto(addr99);
         }
         §§goto(addr77);
      }
      
      public function §'!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                     }
                     while(true)
                     {
                        addr49:
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        §§push(this);
                        §§push(this.y);
                        if(_loc1_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        addr19:
                        return;
                        addr73:
                     }
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr49);
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
         §§goto(addr56);
      }
      
      public function §2o§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function § 8§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_ || _loc2_)
         {
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc1_ && this)
               {
               }
               §§goto(addr71);
            }
            §§goto(addr67);
         }
         addr71:
         §§push(this.y);
         if(!(_loc1_ && _loc2_))
         {
            addr67:
            §§push(§§pop() * this.y);
         }
         return §§pop() + §§pop();
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc4_)
                  {
                     addr64:
                     §§push(0);
                     if(_loc4_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr73:
                     §§push(1 / _loc1_);
                     if(_loc4_)
                     {
                        addr78:
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
                     do
                     {
                        §§push(this);
                        §§push(this.y);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                     }
                     while(!(_loc4_ || _loc2_));
                     
                  }
                  return _loc1_;
               }
               §§goto(addr73);
            }
            §§goto(addr78);
         }
         §§goto(addr64);
      }
      
      public function §!3§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§!3§(this.x));
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§goto(addr49);
               }
               §§goto(addr56);
            }
            addr49:
            §§push(§§pop());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  addr56:
                  §§pop();
                  addr57:
                  §§push(b2Math.§!3§(this.y));
                  if(_loc1_ && this)
                  {
                  }
                  §§goto(addr70);
               }
               §§push(Boolean(§§pop()));
            }
            addr70:
            return §§pop();
         }
         §§goto(addr57);
      }
   }
}
