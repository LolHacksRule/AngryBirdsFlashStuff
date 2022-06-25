package §>!8§
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
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              throw new Error("b2Vec2: X and Y cannot be NaN.");
                           }
                           loop3:
                           while(!_loc3_)
                           {
                              addr116:
                              §§push(Boolean(isNaN(param2)));
                              if(!(_loc3_ && param2))
                              {
                                 continue loop1;
                              }
                              addr113:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                                 §§goto(addr116);
                              }
                           }
                           continue loop0;
                        }
                        addr102:
                        while(true)
                        {
                           break loop4;
                           §§goto(addr40);
                        }
                     }
                     this.x = param1;
                     addr40:
                     do
                     {
                        if(!(_loc3_ && param2))
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     while(this.y = param2, !_loc4_);
                     
                     return;
                     addr77:
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr102);
      }
      
      public static function §]u§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §@!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.x = 0;
            do
            {
               this.y = 0;
            }
            while(!(_loc2_ || _loc1_));
            
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
               §§push(§§pop());
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr82:
                                 if(_loc4_)
                                 {
                                    throw new Error("b2Vec2: X and Y cannot be NaN.");
                                 }
                                 continue loop2;
                              }
                              this.x = param1;
                              while(true)
                              {
                                 this.y = param2;
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr82);
                              }
                              return;
                              addr72:
                              addr52:
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr52);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(_loc2_);
         
      }
      
      public function § !%§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!_loc2_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc2_ && _loc1_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §%!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc1_))
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc1_)
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
      
      public function §!V§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
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
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §%L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
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
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §2p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && this))
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
         while(_loc2_ && _loc3_);
         
      }
      
      public function §?P§(param1:b2Mat22) : void
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
            §§push(param1.col1.x);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr108:
                     §§push(param1.col2.x);
                     if(_loc4_ || _loc2_)
                     {
                        addr121:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr121);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           addr63:
                           §§push(param1.col2.y);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr63);
                  }
                  while(§§pop().y = §§pop(), !_loc4_);
                  
                  return;
                  addr123:
               }
               §§goto(addr121);
            }
            §§goto(addr108);
         }
         §§goto(addr123);
      }
      
      public function §`[§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§extends§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this.y = b2Math.§extends§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §`e§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
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
            if(_loc4_ || param1)
            {
               §§push(-§§pop());
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), _loc3_);
         
      }
      
      public function §2!Q§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(-§§pop());
               if(_loc4_)
               {
                  addr78:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc3_);
               
               return;
               addr82:
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
      
      public function §=3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(!(_loc2_ && param1))
                     {
                        addr113:
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr127:
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(this);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this.y);
                                 if(_loc3_)
                                 {
                                    if(§§pop() >= param1.y)
                                    {
                                       §§push(param1.y);
                                       if(_loc3_ || param1)
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
                           while(§§pop().y = §§pop(), !(_loc3_ || _loc3_));
                           
                           return;
                           addr82:
                        }
                        §§goto(addr127);
                     }
                     addr126:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr113);
            }
            §§goto(addr104);
         }
         §§goto(addr82);
      }
      
      public function §[3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(_loc3_ || this)
               {
                  if(§§pop() > param1.x)
                  {
                     addr94:
                     §§push(this.x);
                     if(_loc3_ || _loc2_)
                     {
                        addr113:
                        §§push(Number(§§pop()));
                        if(_loc3_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_ || _loc3_)
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
                           if(§§pop() > param1.y)
                           {
                              addr41:
                              §§push(this.y);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
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
                  while(§§pop().y = §§pop(), _loc2_ && _loc2_);
                  
                  return;
                  addr77:
               }
               §§goto(addr113);
            }
            §§goto(addr94);
         }
         §§goto(addr77);
      }
      
      public function §&!]§() : void
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
               addr90:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §[!K§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §3!M§() : Number
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
               if(_loc1_)
               {
                  addr57:
                  §§push(this.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr66:
                     §§push(§§pop() * this.y);
                  }
                  return §§pop() + §§pop();
               }
            }
            §§goto(addr66);
         }
         §§goto(addr57);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr69:
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr89);
               }
               §§push(1 / _loc1_);
               if(_loc4_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr89:
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(this);
               §§push(this.x);
               if(_loc4_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().x = §§pop();
            }
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
            while(_loc3_);
            
            return _loc1_;
         }
         §§goto(addr69);
      }
      
      public function §<`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(b2Math.§<`§(this.x));
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  addr54:
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        addr67:
                        §§push(b2Math.§<`§(this.y));
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr67);
      }
   }
}
