package §2"=§
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
               addr88:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr90:
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           do
                           {
                              this.x = param1;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       break;
                                    }
                                    this.y = param2;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                           }
                           while(_loc4_);
                           
                           continue loop0;
                        }
                     }
                     addr74:
                  }
               }
            }
         }
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public static function § !z§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §@!s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                     addr104:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop2:
               while(!§§pop())
               {
                  do
                  {
                     this.x = param1;
                     do
                     {
                        this.y = param2;
                     }
                     while(_loc4_ && _loc3_);
                     
                     if(_loc3_ || _loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           return;
                        }
                        break loop2;
                     }
                  }
                  while(!(_loc4_ && _loc3_));
                  
                  §§goto(addr104);
               }
               throw new Error("b2Vec2: X and Y cannot be NaN.");
            }
         }
         §§goto(addr104);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §1"$§() : b2Vec2
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
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §!!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
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
            while(!_loc1_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §1v§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_);
         
      }
      
      public function §5!]§(param1:b2Vec2) : void
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
            if(_loc2_)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc3_);
         
      }
      
      public function §>!t§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §^l§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     addr122:
                     §§push(param1.col2.x);
                     if(_loc4_)
                     {
                        addr118:
                        §§push(§§pop() * this.y);
                     }
                     §§pop().x = §§pop() + §§pop();
                     do
                     {
                        §§push(this);
                        §§push(param1.col1.y);
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 addr63:
                                 §§push(param1.col2.y);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr73:
                                    §§push(§§pop() * this.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              continue;
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr63);
                     }
                     while(§§pop().y = §§pop(), !(_loc4_ || _loc2_));
                     
                     return;
                     addr123:
                  }
                  §§goto(addr122);
               }
               §§goto(addr118);
            }
            §§goto(addr122);
         }
         §§goto(addr123);
      }
      
      public function §4!e§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§@!y§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.y = b2Math.§@!y§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(!_loc4_);
         
      }
      
      public function §+Z§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(_loc4_ || this)
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * _loc2_);
                  }
               }
               §§pop().y = §§pop();
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      public function §4n§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(_loc3_ || _loc3_)
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
               while(_loc4_ && param1);
               
               return;
               addr64:
            }
            §§goto(addr87);
         }
         §§goto(addr64);
      }
      
      public function §!W§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!(_loc3_ && this))
            {
               §§push(this.x);
               if(!(_loc3_ && this))
               {
                  if(§§pop() < param1.x)
                  {
                     addr98:
                     §§push(this.x);
                     if(!(_loc3_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr130:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§goto(addr130);
                     }
                  }
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  if(_loc2_ || this)
                  {
                     §§push(this.y);
                     if(!_loc3_)
                     {
                        if(§§pop() < param1.y)
                        {
                           addr40:
                           §§push(this.y);
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           addr49:
                           §§push(Number(§§pop()));
                           if(_loc2_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           §§push(param1.y);
                           if(_loc3_)
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
               while(§§pop().y = §§pop(), _loc3_ && this);
               
               return;
               addr132:
            }
            §§goto(addr98);
         }
         §§goto(addr132);
      }
      
      public function §5!b§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.x);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() > param1.x)
                  {
                     addr98:
                     §§push(this.x);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                        }
                        addr121:
                        §§pop().x = §§pop();
                        do
                        {
                           §§push(this);
                           if(!_loc3_)
                           {
                              §§push(this.y);
                              if(_loc2_ || _loc2_)
                              {
                                 if(§§pop() > param1.y)
                                 {
                                    addr45:
                                    §§push(this.y);
                                    if(_loc2_)
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
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                              }
                              §§push(Number(§§pop()));
                              continue;
                           }
                           §§goto(addr45);
                        }
                        while(§§pop().y = §§pop(), !(_loc2_ || this));
                        
                        return;
                        addr81:
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr98);
         }
         §§goto(addr81);
      }
      
      public function §`U§() : void
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
               addr95:
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
                     if(_loc2_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     addr103:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §`g§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §%"§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(_loc1_ || this)
         {
            §§push(this.x);
            if(!_loc2_)
            {
               §§goto(addr65);
            }
            §§push(§§pop() + §§pop());
         }
         addr65:
         §§push(§§pop() * §§pop());
         if(!_loc2_)
         {
            §§push(this.y);
            if(_loc1_ || _loc1_)
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
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(0);
                     if(!(_loc4_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     §§push(1 / _loc1_);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr65);
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
               while(!_loc3_);
               
            }
            return _loc1_;
         }
         §§goto(addr65);
      }
      
      public function §1H§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(b2Math.§1H§(this.x));
            if(!(_loc1_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr47:
                        §§pop();
                        §§push(b2Math.§1H§(this.y));
                        if(!(_loc1_ && _loc1_))
                        {
                           addr69:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr47);
      }
   }
}
