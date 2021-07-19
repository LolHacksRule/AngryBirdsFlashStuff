package §9t§
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
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               if(_loc3_ || _loc3_)
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
                              loop3:
                              while(_loc3_ || this)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    while(true)
                                    {
                                       this.y = param2;
                                       if(_loc3_ || param1)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr63:
                                 }
                              }
                           }
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(Boolean(isNaN(param2)));
                        addr112:
                        continue loop0;
                        if(!_loc4_)
                        {
                           continue;
                        }
                        addr94:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr94:
                     }
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
               }
               §§goto(addr94);
            }
         }
         §§goto(addr63);
      }
      
      public static function §^!l§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §@!d§() : void
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
            while(_loc2_ && this);
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr105:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop2:
               while(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.x = param1;
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           this.y = param2;
                           if(!(_loc3_ && param2))
                           {
                              if(!_loc3_)
                              {
                                 return;
                              }
                              break loop2;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     §§goto(addr105);
                  }
               }
               throw new Error("b2Vec2: X and Y cannot be NaN.");
            }
         }
         §§goto(addr105);
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
         while(_loc2_);
         
      }
      
      public function §2!D§() : b2Vec2
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
      
      public function §9!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
      
      public function §]!H§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || this)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §0"-§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
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
         while(!(_loc2_ || param1));
         
      }
      
      public function §-!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §""-§(param1:b2Mat22) : void
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
            if(!(_loc3_ && this))
            {
               §§push(_loc2_);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || this)
                  {
                     addr108:
                     §§push(param1.col2.x);
                     if(!_loc3_)
                     {
                        addr123:
                        §§push(§§pop() * this.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!(_loc3_ && this))
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
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
                  while(§§pop().y = §§pop(), !_loc4_);
                  
                  return;
                  addr80:
               }
               §§goto(addr123);
            }
            §§goto(addr108);
         }
         §§goto(addr80);
      }
      
      public function §^L§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§<"E§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.y = b2Math.§<"E§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §^!;§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
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
               if(_loc3_)
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §@N§(param1:Number) : void
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
            if(_loc3_ || _loc3_)
            {
               §§push(-§§pop());
               if(!(_loc4_ && this))
               {
                  addr87:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(!(_loc3_ || _loc3_));
               
               return;
               addr59:
            }
            §§goto(addr87);
         }
         §§goto(addr59);
      }
      
      public function §[!g§(param1:b2Vec2) : void
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
                  if(§§pop() < param1.x)
                  {
                     addr78:
                     §§push(this.x);
                     if(_loc2_ || param1)
                     {
                        addr87:
                        §§push(Number(§§pop()));
                        if(_loc3_ && param1)
                        {
                           addr116:
                           §§pop().x = Number(§§pop());
                           addr115:
                           do
                           {
                              §§push(this);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(this.y);
                                 if(_loc2_)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr40:
                                       §§push(this.y);
                                       if(!_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc2_)
                                          {
                                             addr62:
                                             §§push(Number(§§pop()));
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
                                 §§goto(addr62);
                              }
                              §§goto(addr40);
                           }
                           while(§§pop().y = §§pop(), !_loc2_);
                           
                           return;
                           addr117:
                        }
                        §§goto(addr116);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr87);
            }
            §§goto(addr78);
         }
         §§goto(addr117);
      }
      
      public function §&";§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
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
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr120:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§goto(addr120);
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
                     if(_loc2_)
                     {
                        if(§§pop() <= param1.y)
                        {
                           §§push(param1.y);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           continue;
                        }
                        addr40:
                        §§push(this.y);
                        if(_loc2_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr40);
               }
               while(§§pop().y = §§pop(), _loc3_ && _loc3_);
               
               return;
               addr122:
            }
            §§goto(addr93);
         }
         §§goto(addr122);
      }
      
      public function §<D§() : void
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
                     while(true)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(!(_loc1_ && this))
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
                        if(!(_loc1_ && this))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc1_ && this))
                              {
                                 §§push(this);
                                 §§push(this.y);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              if(_loc2_)
                              {
                                 if(!_loc1_)
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
         §§goto(addr98);
      }
      
      public function §2+§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §"z§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(!_loc1_)
         {
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr66);
            }
            §§goto(addr62);
         }
         addr66:
         §§push(this.y);
         if(_loc2_ || _loc2_)
         {
            addr62:
            §§push(§§pop() * this.y);
         }
         return §§pop() + §§pop();
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                     addr65:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr60:
                     §§push(1 / _loc1_);
                     if(!_loc4_)
                     {
                        §§goto(addr65);
                     }
                  }
               }
               §§goto(addr60);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
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
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc4_ && _loc2_);
               
            }
            return _loc1_;
         }
         §§goto(addr60);
      }
      
      public function §,8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(b2Math.§,8§(this.x));
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr61:
                        §§pop();
                        §§push(b2Math.§,8§(this.y));
                        if(!_loc2_)
                        {
                           addr68:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr61);
      }
   }
}
