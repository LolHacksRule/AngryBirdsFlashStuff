package §_-Yp§
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
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr102:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr101:
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
                           while(_loc3_ || _loc3_)
                           {
                              this.y = param2;
                              if(!(_loc4_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                                 if(!_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr83);
                        }
                        continue loop0;
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr101);
            }
         }
         addr83:
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public static function §_-Wk§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §_-el§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(!_loc2_);
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param2))
                        {
                           break;
                        }
                        addr104:
                        while(!(_loc3_ && _loc3_))
                        {
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr105);
                        }
                        addr105:
                        addr90:
                     }
                     while(true)
                     {
                        this.x = param1;
                        while(!_loc3_)
                        {
                           this.y = param2;
                           if(!(_loc3_ && param2))
                           {
                              return;
                           }
                        }
                        §§goto(addr90);
                     }
                  }
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  addr77:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr97);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §_-5M§() : b2Vec2
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
         if(!(_loc2_ && _loc2_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §_-03q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(!_loc2_);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §_-M6§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
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
      
      public function §_-w3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §_-mx§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc3_ && this);
         
      }
      
      public function §_-VF§(param1:b2Mat22) : void
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
            §§push(param1.col1.x);
            if(!(_loc3_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr132:
                     §§push(param1.col2.x);
                     if(!(_loc3_ && this))
                     {
                        addr128:
                        §§push(§§pop() * this.y);
                     }
                     §§pop().x = §§pop() + §§pop();
                     do
                     {
                        §§push(this);
                        §§push(param1.col1.y);
                        if(_loc4_ || param1)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              addr63:
                              §§push(param1.col2.y);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop() * this.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           continue;
                        }
                        §§goto(addr63);
                     }
                     while(§§pop().y = §§pop(), _loc3_ && _loc3_);
                     
                     return;
                     addr85:
                  }
                  §§goto(addr132);
               }
               §§goto(addr128);
            }
            §§goto(addr132);
         }
         §§goto(addr85);
      }
      
      public function §_-we§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§_-r8§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.y = b2Math.§_-r8§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §_-bM§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(!_loc3_);
         
      }
      
      public function §_-2t§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && _loc2_))
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
               §§push(-§§pop());
               if(_loc4_)
               {
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().y = §§pop();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §_-hv§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.x);
               if(_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr93:
                     §§push(this.x);
                     if(_loc2_ || param1)
                     {
                        addr112:
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
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr130);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!(_loc3_ && this))
                     {
                        §§push(this.y);
                        if(!_loc3_)
                        {
                           if(§§pop() < param1.y)
                           {
                              addr45:
                              §§push(this.y);
                              if(!_loc2_)
                              {
                                 continue;
                              }
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
                        }
                        continue;
                     }
                     §§goto(addr45);
                  }
                  while(§§pop().y = §§pop(), !(_loc2_ || _loc3_));
                  
                  return;
                  addr76:
               }
               §§goto(addr112);
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public function §_-Qg§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.x);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr108:
                     §§push(this.x);
                     if(_loc2_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr130:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr130);
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr130);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc2_)
                     {
                        §§push(this.y);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop() > param1.y)
                           {
                              addr45:
                              §§push(this.y);
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(Number(§§pop()));
                              if(_loc2_ || _loc2_)
                              {
                                 addr72:
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                           continue;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr45);
                  }
                  while(§§pop().y = §§pop(), !_loc2_);
                  
                  return;
                  addr81:
               }
               §§goto(addr130);
            }
            §§goto(addr108);
         }
         §§goto(addr81);
      }
      
      public function §_-010§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr85:
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
                     if(!_loc1_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     while(true)
                     {
                        continue loop0;
                        addr55:
                        if(_loc1_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this);
                           §§push(this.y);
                           if(_loc2_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().y = §§pop();
                           addr74:
                           while(true)
                           {
                              if(!(_loc1_ && this))
                              {
                                 addr25:
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §_-YT§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §_-wN§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_ || _loc2_)
         {
            §§push(this.x);
            if(!_loc1_)
            {
               §§goto(addr51);
            }
            §§push(§§pop() + §§pop());
         }
         addr51:
         §§push(§§pop() * §§pop());
         if(!_loc1_)
         {
            §§push(this.y);
            if(!_loc1_)
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
            if(!_loc4_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc4_ && this))
                  {
                     addr56:
                     §§push(0);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr71);
                  }
                  addr71:
                  var _loc2_:Number = §§pop();
                  §§goto(addr70);
               }
               §§push(1 / _loc1_);
               if(!(_loc4_ && _loc1_))
               {
                  addr70:
                  if(_loc3_ || _loc3_)
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
                        if(_loc3_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                     }
                     while(!(_loc3_ || _loc1_));
                     
                  }
                  return _loc1_;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr56);
      }
      
      public function §_-a8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(b2Math.§_-a8§(this.x));
            if(!(_loc2_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr71:
                        §§pop();
                        §§push(b2Math.§_-a8§(this.y));
                        if(!_loc2_)
                        {
                           addr78:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr71);
      }
   }
}
