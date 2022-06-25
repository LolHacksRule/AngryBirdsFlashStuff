package §>H§
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
            do
            {
               §§push(Boolean(isNaN(param1)));
               if(!(_loc3_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr103:
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!(_loc3_ && this))
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr87:
                                 }
                                 while(true)
                                 {
                                    this.x = param1;
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop6;
                                 }
                                 return;
                                 continue loop6;
                              }
                              continue loop0;
                              addr62:
                           }
                        }
                     }
                     addr102:
                  }
                  §§goto(addr62);
               }
               §§goto(addr102);
            }
            while(!(_loc4_ || this));
            
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         §§goto(addr103);
      }
      
      public static function §5!3§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §`!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(!_loc1_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(Boolean(isNaN(param1)));
            if(_loc4_ || param2)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr110:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
                  addr109:
               }
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.x = param1;
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc4_ || param2))
                              {
                                 break;
                              }
                              this.y = param2;
                              if(!(_loc3_ && this))
                              {
                                 if(_loc4_ || param2)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr91);
               }
               return;
            }
            §§goto(addr109);
         }
         addr91:
         throw new Error("b2Vec2: X and Y cannot be NaN.");
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
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §@H§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!(_loc1_ && _loc2_))
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
      
      public function §2[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
               if(!(_loc2_ && _loc2_))
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §7x§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §5!&§(param1:b2Vec2) : void
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
         while(_loc3_);
         
      }
      
      public function §^$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
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
            while(_loc3_ && param1);
            
         }
      }
      
      public function §7M§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_ || param1)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || param1)
                  {
                     addr123:
                     §§push(param1.col2.x);
                     if(!_loc3_)
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
                     if(!_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr68:
                              §§push(param1.col2.y);
                              if(_loc4_ || this)
                              {
                                 addr78:
                                 §§push(§§pop() * this.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           continue;
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr68);
                  }
                  while(§§pop().y = §§pop(), !(_loc4_ || param1));
                  
                  return;
                  addr90:
               }
               §§goto(addr131);
            }
            §§goto(addr123);
         }
         §§goto(addr90);
      }
      
      public function §>!9§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§'l§(this,param1.col1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.y = b2Math.§'l§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc3_ && param1);
         
      }
      
      public function §^!P§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(-§§pop());
               if(!_loc4_)
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), !(_loc4_ || _loc3_));
         
      }
      
      public function §;C§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || _loc2_)
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
               if(!_loc4_)
               {
                  addr77:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc4_);
               
               return;
               addr81:
            }
            §§goto(addr77);
         }
         §§goto(addr81);
      }
      
      public function §3!]§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_ || this)
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr114:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc2_ && _loc2_))
                        {
                           addr126:
                        }
                     }
                     else
                     {
                        addr131:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§goto(addr131);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.y);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop() >= param1.y)
                           {
                              §§push(param1.y);
                              if(!_loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue;
                           }
                           addr46:
                           §§push(this.y);
                           if(!(_loc3_ || param1))
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc3_ || _loc2_)
                        {
                        }
                        continue;
                     }
                     §§goto(addr46);
                  }
                  while(§§pop().y = §§pop(), _loc2_ && param1);
                  
                  return;
                  addr133:
               }
               §§goto(addr126);
            }
            §§goto(addr114);
         }
         §§goto(addr133);
      }
      
      public function §'!"§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!(_loc3_ && param1))
            {
               §§push(this.x);
               if(_loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr103:
                     §§push(this.x);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ && _loc2_)
                        {
                        }
                        addr121:
                        §§pop().x = §§pop();
                        do
                        {
                           §§push(this);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this.y);
                              if(!_loc3_)
                              {
                                 if(§§pop() > param1.y)
                                 {
                                    addr40:
                                    §§push(this.y);
                                    if(!_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc3_ && _loc2_)
                                       {
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
                           §§goto(addr40);
                        }
                        while(§§pop().y = §§pop(), _loc3_ && this);
                        
                        return;
                        addr76:
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
               }
               §§goto(addr121);
            }
            §§goto(addr103);
         }
         §§goto(addr76);
      }
      
      public function §-n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
                     if(_loc1_)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(!_loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                     }
                     while(true)
                     {
                        addr47:
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this);
                           §§push(this.y);
                           if(_loc1_ || this)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().y = §§pop();
                        }
                        if(!_loc2_)
                        {
                           addr24:
                           return;
                           addr78:
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr47);
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §>!7§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function § !W§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_)
         {
            §§push(this.x);
            if(_loc2_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr66:
                     §§push(1 / _loc1_);
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr76);
                     }
                  }
               }
               §§goto(addr66);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(this);
               §§push(this.x);
               if(_loc4_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().x = §§pop();
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
               while(!(_loc4_ || _loc2_));
               
            }
            return _loc1_;
         }
         §§goto(addr66);
      }
      
      public function §3!W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§3!W§(this.x));
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  addr53:
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop();
                        addr63:
                        §§push(b2Math.§3!W§(this.y));
                        if(!(_loc1_ && _loc2_))
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr63);
      }
   }
}
