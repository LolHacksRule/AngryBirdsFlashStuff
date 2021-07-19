package §9"§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr105:
                        while(!_loc4_)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           this.x = param1;
                           loop6:
                           while(!(_loc4_ && param1))
                           {
                              while(true)
                              {
                                 this.y = param2;
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              return;
                           }
                        }
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§goto(addr105);
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §"!&§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §^!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr89:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        throw new Error("b2Vec2: X and Y cannot be NaN.");
                     }
                     loop1:
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
                           while(_loc3_ && _loc3_);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr50);
               }
               return;
               addr49:
            }
            §§goto(addr89);
         }
         §§goto(addr49);
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
         while(_loc2_ && _loc3_);
         
      }
      
      public function §<!#§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc1_ || this)
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
      
      public function §[X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc2_)
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
         while(_loc1_);
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §`!§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || param1)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_ || this)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §5y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
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
         while(!_loc3_);
         
      }
      
      public function §?Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc2_ && this);
         
      }
      
      public function §7!&§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     addr102:
                     §§push(param1.col2.x);
                     if(!(_loc4_ && param1))
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
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           §§push(param1.col2.y);
                           if(_loc3_)
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
                  while(§§pop().y = §§pop(), _loc4_);
                  
                  return;
                  addr127:
               }
               §§goto(addr125);
            }
            §§goto(addr102);
         }
         §§goto(addr127);
      }
      
      public function §;!O§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§9-§(this,param1.col1));
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.y = b2Math.§9-§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function §"!L§(param1:Number) : void
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
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(-§§pop());
               if(_loc4_)
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), _loc4_);
         
      }
      
      public function §@!"§(param1:Number) : void
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
            §§push(param1);
            if(_loc3_)
            {
               §§push(-§§pop());
               if(!(_loc4_ && param1))
               {
                  addr72:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc4_);
               
               return;
               addr76:
            }
            §§goto(addr72);
         }
         §§goto(addr76);
      }
      
      public function §!i§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr89:
                     §§push(this.x);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           addr116:
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc2_ && param1))
                     {
                        §§goto(addr116);
                     }
                  }
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  if(!_loc2_)
                  {
                     §§push(this.y);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop() >= param1.y)
                        {
                           §§push(param1.y);
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           continue;
                        }
                        addr46:
                        §§push(this.y);
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           continue;
                        }
                     }
                     continue;
                  }
                  §§goto(addr46);
               }
               while(§§pop().y = §§pop(), !_loc3_);
               
               return;
               addr77:
            }
            §§goto(addr89);
         }
         §§goto(addr77);
      }
      
      public function §<!K§(param1:b2Vec2) : void
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
                  if(§§pop() > param1.x)
                  {
                     addr98:
                     §§push(this.x);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc3_ && param1))
                        {
                           addr131:
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(this);
                              if(_loc2_)
                              {
                                 §§push(this.y);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(§§pop() > param1.y)
                                    {
                                       addr40:
                                       §§push(this.y);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             addr77:
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
                                 §§goto(addr77);
                              }
                              §§goto(addr40);
                           }
                           while(§§pop().y = §§pop(), !_loc2_);
                           
                           return;
                           addr110:
                           addr132:
                        }
                        §§goto(addr131);
                     }
                     addr130:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr110);
            }
            §§goto(addr98);
         }
         §§goto(addr132);
      }
      
      public function §>8§() : void
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
               addr94:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc1_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        continue loop0;
                        addr66:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc1_ || this)
                              {
                                 addr19:
                                 return;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §8!%§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §?a§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.x);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr47:
                  §§push(this.y);
                  if(!(_loc2_ && this))
                  {
                     addr69:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr69);
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr47);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_)
                  {
                     addr41:
                     §§push(0);
                     if(_loc3_)
                     {
                        §§goto(addr44);
                     }
                  }
                  else
                  {
                     addr55:
                     §§push(1 / _loc1_);
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_ || _loc1_)
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
                     while(!(_loc3_ || _loc3_));
                     
                  }
                  return _loc1_;
               }
               §§goto(addr55);
            }
            addr44:
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function §6!W§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(b2Math.§6!W§(this.x));
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr61:
                        §§pop();
                        addr62:
                        §§push(b2Math.§6!W§(this.y));
                        if(_loc2_)
                        {
                        }
                        §§goto(addr69);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr69:
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr62);
      }
   }
}
