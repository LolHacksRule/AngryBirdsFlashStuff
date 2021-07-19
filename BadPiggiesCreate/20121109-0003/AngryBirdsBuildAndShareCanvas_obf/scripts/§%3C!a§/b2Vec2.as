package §<!a§
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
            if(_loc3_)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr112:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_ || param2)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr111:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.x = param1;
                        addr41:
                        while(true)
                        {
                           if(_loc4_ && this)
                           {
                              continue loop2;
                           }
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                     }
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  §§goto(addr112);
               }
               return;
               addr36:
            }
            §§goto(addr111);
         }
      }
      
      public static function §[]§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §?b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
                     addr115:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_ && param1)
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
               while(§§pop())
               {
                  if(!(_loc4_ || param2))
                  {
                     addr107:
                     break;
                  }
                  if(!(_loc3_ && param1))
                  {
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                  }
                  §§goto(addr115);
               }
               this.x = param1;
               addr45:
               if(_loc4_ || param2)
               {
                  this.y = param2;
                  if(!(_loc4_ || this))
                  {
                     §§goto(addr45);
                  }
                  return;
               }
               §§goto(addr107);
            }
         }
         §§goto(addr115);
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
         while(_loc3_ && _loc3_);
         
      }
      
      public function §5E§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc2_ || _loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(_loc2_ || this)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §<!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
               if(_loc1_ || _loc2_)
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
      
      public function §<!n§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
         while(!(_loc2_ || this));
         
      }
      
      public function §&"1§(param1:b2Vec2) : void
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
            while(_loc2_ && param1);
            
         }
      }
      
      public function §7H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §4!L§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && _loc2_))
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
                     if(_loc3_ || param1)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           addr67:
                           §§push(param1.col2.y);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr67);
                  }
                  while(§§pop().y = §§pop(), !_loc3_);
                  
                  return;
                  addr127:
               }
               §§goto(addr125);
            }
            §§goto(addr102);
         }
         §§goto(addr127);
      }
      
      public function §"!R§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§8n§(this,param1.col1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.y = b2Math.§8n§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc3_ && this);
         
      }
      
      public function §>O§(param1:Number) : void
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
            do
            {
               §§push(this);
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     continue;
                  }
               }
            }
            while(§§pop().y = §§pop(), _loc3_ && param1);
            
         }
      }
      
      public function §!!R§(param1:Number) : void
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
            if(!(_loc3_ && _loc3_))
            {
               §§push(-§§pop());
               if(!(_loc3_ && _loc2_))
               {
                  addr83:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc3_);
               
               return;
               addr87:
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
      
      public function §#!N§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(!_loc3_)
                     {
                        addr97:
                        §§push(Number(§§pop()));
                        if(_loc2_ || param1)
                        {
                           addr126:
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(this);
                              if(_loc2_ || param1)
                              {
                                 §§push(this.y);
                                 if(_loc2_)
                                 {
                                    if(§§pop() >= param1.y)
                                    {
                                       §§push(param1.y);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       continue;
                                    }
                                    addr40:
                                    §§push(this.y);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                                 continue;
                              }
                              §§goto(addr40);
                           }
                           while(§§pop().y = §§pop(), _loc3_ && param1);
                           
                           return;
                           addr81:
                        }
                        §§goto(addr126);
                     }
                     addr125:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr97);
            }
            §§goto(addr93);
         }
         §§goto(addr81);
      }
      
      public function §0" §(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!(_loc3_ && param1))
            {
               §§push(this.x);
               if(!_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(!(_loc3_ && _loc2_))
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
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.y);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() > param1.y)
                        {
                           addr45:
                           §§push(this.y);
                           if(!_loc2_)
                           {
                              continue;
                           }
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
                     }
                     continue;
                  }
                  §§goto(addr45);
               }
               while(§§pop().y = §§pop(), !_loc2_);
               
               return;
               addr76:
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public function §1!`§() : void
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
                  while(true)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc1_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     addr102:
                     loop3:
                     while(true)
                     {
                        continue loop0;
                        addr73:
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              addr19:
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §?!]§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §`2§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_ || this)
         {
            §§push(this.x);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  addr53:
                  §§push(this.y);
                  if(_loc2_ || _loc1_)
                  {
                     addr75:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr75);
               }
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr53);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!(_loc4_ && this))
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_ || this)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§goto(addr64);
                     }
                     else
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr65:
                     §§push(1 / _loc1_);
                     if(_loc3_ || this)
                     {
                        §§goto(addr75);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                  }
                  do
                  {
                     §§push(this);
                     §§push(this.y);
                     if(_loc3_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().y = §§pop();
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return _loc1_;
               }
               §§goto(addr65);
            }
            addr64:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function §7S§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(b2Math.§7S§(this.x));
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr46:
                        §§pop();
                        §§push(b2Math.§7S§(this.y));
                        if(_loc1_ || _loc1_)
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
         §§goto(addr46);
      }
   }
}
