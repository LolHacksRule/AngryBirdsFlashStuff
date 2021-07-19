package §6Z§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               if(_loc4_ || param2)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr118:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop6;
                        }
                     }
                     addr117:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr40:
                           while(true)
                           {
                              if(!(_loc3_ && param2))
                              {
                                 if(_loc4_ || param2)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                              addr71:
                              this.y = param2;
                              if(!(_loc3_ && _loc3_))
                              {
                                 return;
                              }
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        this.x = param1;
                        §§goto(addr40);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr117);
            }
         }
         addr88:
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public static function §0"0§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §5!H§() : void
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
         while(_loc2_ && this);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            if(_loc3_ || _loc3_)
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
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 do
                                 {
                                    this.x = param1;
                                    do
                                    {
                                       this.y = param2;
                                    }
                                    while(!_loc3_);
                                    
                                 }
                                 while(!_loc3_);
                                 
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                              }
                              if(!_loc4_)
                              {
                                 throw new Error("b2Vec2: X and Y cannot be NaN.");
                              }
                              continue loop4;
                           }
                           return;
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(_loc3_);
         
      }
      
      public function §4l§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc1_ || _loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc2_ && this))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §"!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || _loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
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
            while(_loc2_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §-!r§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
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
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §]!&§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || this)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc3_);
            
         }
      }
      
      public function §>[§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || param1)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(_loc3_);
            
         }
      }
      
      public function §=!T§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     addr93:
                     §§push(param1.col2.x);
                     if(_loc4_)
                     {
                        addr108:
                        §§push(§§pop() * this.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && param1))
                           {
                              addr58:
                              §§push(param1.col2.y);
                              if(_loc4_)
                              {
                                 addr63:
                                 §§push(§§pop() * this.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           continue;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr58);
                  }
                  while(§§pop().y = §§pop(), _loc3_ && this);
                  
                  return;
                  addr75:
               }
               §§goto(addr108);
            }
            §§goto(addr93);
         }
         §§goto(addr75);
      }
      
      public function §"J§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§7!c§(this,param1.col1));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.y = b2Math.§7!c§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §+2§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  §§push(-§§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
            while(_loc4_);
            
         }
      }
      
      public function §6"%§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || _loc2_)
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
                  if(!_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(!(_loc3_ || this));
               
               return;
               addr64:
            }
            §§goto(addr87);
         }
         §§goto(addr64);
      }
      
      public function §%!6§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(_loc2_ || param1)
               {
                  if(§§pop() < param1.x)
                  {
                     addr103:
                     §§push(this.x);
                     if(!(_loc3_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           addr131:
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(this);
                              if(_loc2_ || param1)
                              {
                                 §§push(this.y);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr45:
                                       §§push(this.y);
                                       if(_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc3_ && this))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1.y);
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 continue;
                              }
                              §§goto(addr45);
                           }
                           while(§§pop().y = §§pop(), _loc3_ && _loc3_);
                           
                           return;
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
                     if(!_loc3_)
                     {
                        §§goto(addr130);
                     }
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr103);
         }
         §§goto(addr132);
      }
      
      public function §9![§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr83:
                     §§push(this.x);
                     if(_loc2_ || param1)
                     {
                        addr92:
                        §§push(Number(§§pop()));
                        if(_loc3_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc2_)
                     {
                        §§push(this.y);
                        if(!_loc3_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr35:
                              §§push(this.y);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              continue;
                           }
                           §§push(param1.y);
                           if(!_loc2_)
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                     §§goto(addr35);
                  }
                  while(§§pop().y = §§pop(), _loc3_);
                  
                  return;
                  addr117:
               }
               §§goto(addr92);
            }
            §§goto(addr83);
         }
         §§goto(addr117);
      }
      
      public function §"!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                     addr76:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        addr98:
                        while(true)
                        {
                        }
                     }
                     addr76:
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc1_)
                     {
                        §§push(0);
                        if(!_loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.y);
                                 if(_loc2_ || this)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr98);
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
         §§goto(addr76);
      }
      
      public function Length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §<T§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.x);
            if(_loc2_)
            {
               §§goto(addr71);
            }
            §§push(§§pop() + §§pop());
         }
         addr71:
         §§push(§§pop() * §§pop());
         if(_loc2_ || this)
         {
            §§push(this.y);
            if(_loc2_ || _loc2_)
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
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr51:
                     §§push(0);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                     §§goto(addr81);
                  }
                  addr81:
                  var _loc2_:Number = §§pop();
                  §§goto(addr80);
               }
               §§push(1 / _loc1_);
               if(!(_loc4_ && _loc1_))
               {
                  addr80:
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc3_ || this)
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
                     while(!_loc3_);
                     
                  }
                  return _loc1_;
               }
            }
            §§goto(addr81);
         }
         §§goto(addr51);
      }
      
      public function §<?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(b2Math.§<?§(this.x));
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr67:
                        §§pop();
                        addr68:
                        §§push(b2Math.§<?§(this.y));
                        if(_loc1_)
                        {
                        }
                        §§goto(addr75);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  addr75:
                  return §§pop();
               }
            }
            §§goto(addr67);
         }
         §§goto(addr68);
      }
   }
}
