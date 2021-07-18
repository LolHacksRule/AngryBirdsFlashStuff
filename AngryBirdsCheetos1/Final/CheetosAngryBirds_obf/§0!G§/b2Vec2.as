package §0!G§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr107:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr106:
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                     addr37:
                  }
                  while(true)
                  {
                     this.x = param1;
                     while(_loc3_)
                     {
                        if(_loc3_ || this)
                        {
                           this.y = param2;
                           if(_loc3_)
                           {
                              if(_loc3_ || this)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr106);
         }
      }
      
      public static function §?!<§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     do
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc4_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        addr50:
                        while(true)
                        {
                           this.x = param1;
                           do
                           {
                              this.y = param2;
                           }
                           while(!_loc4_);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        if(_loc4_ || param1)
                        {
                           return;
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr50);
               }
            }
         }
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §0R§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && this))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §-!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
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
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_ || _loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().y = §§pop();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §-i§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
               if(!_loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §-k§(param1:b2Vec2) : void
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
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc3_ || param1)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function §@-§(param1:Number) : void
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
               if(!_loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §#m§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     addr108:
                     §§push(param1.col2.x);
                     if(!(_loc3_ && this))
                     {
                        addr131:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr131);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(param1.col2.y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  while(§§pop().y = §§pop(), _loc3_ && this);
                  
                  return;
                  addr133:
               }
               §§goto(addr131);
            }
            §§goto(addr108);
         }
         §§goto(addr133);
      }
      
      public function §+y§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.static(this,param1.col1));
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.y = b2Math.static(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc4_ && _loc2_);
         
      }
      
      public function §8!;§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && param1))
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
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §28§(param1:Number) : void
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
               §§push(-§§pop());
               if(!_loc3_)
               {
                  addr73:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(!(_loc4_ || _loc3_));
               
               return;
               addr77:
            }
            §§goto(addr73);
         }
         §§goto(addr77);
      }
      
      public function §>!;§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            if(_loc3_ || param1)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr94:
                     §§push(this.x);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ || _loc3_)
                        {
                           addr121:
                        }
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc2_)
                     {
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
                        if(_loc3_)
                        {
                           if(§§pop() < param1.y)
                           {
                              addr41:
                              §§push(this.y);
                              if(_loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_ || param1)
                                 {
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(_loc2_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                     §§goto(addr41);
                  }
                  while(§§pop().y = §§pop(), _loc2_);
                  
                  return;
                  addr128:
               }
               §§goto(addr121);
            }
            §§goto(addr94);
         }
         §§goto(addr128);
      }
      
      public function §,M§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_ || param1)
            {
               §§push(this.x);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           addr127:
                           §§pop().x = Number(§§pop());
                           addr126:
                           do
                           {
                              §§push(this);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(this.y);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() <= param1.y)
                                 {
                                    §§push(param1.y);
                                    if(!_loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    continue;
                                 }
                              }
                              §§push(this.y);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           while(§§pop().y = §§pop(), !(_loc3_ || _loc3_));
                           
                           return;
                           addr128:
                        }
                        §§goto(addr127);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§goto(addr126);
                     }
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr104);
         }
         §§goto(addr128);
      }
      
      public function §8M§() : void
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
               addr69:
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
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §!Y§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §27§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(_loc1_ || _loc1_)
         {
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr57:
                  §§push(this.y);
                  if(_loc1_)
                  {
                     addr61:
                     §§push(§§pop() * this.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr61);
         }
         §§goto(addr57);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc4_ || this)
                     {
                        §§goto(addr70);
                     }
                     else
                     {
                        addr81:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr71:
                     §§push(1 / _loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§goto(addr81);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!(_loc3_ && this))
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
               §§goto(addr71);
            }
            addr70:
            return §§pop();
         }
         §§goto(addr71);
      }
      
      public function §6m§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§6m§(this.x));
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        addr58:
                        §§push(b2Math.§6m§(this.y));
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr65);
               }
               §§push(Boolean(§§pop()));
            }
            addr65:
            return §§pop();
         }
         §§goto(addr58);
      }
   }
}
