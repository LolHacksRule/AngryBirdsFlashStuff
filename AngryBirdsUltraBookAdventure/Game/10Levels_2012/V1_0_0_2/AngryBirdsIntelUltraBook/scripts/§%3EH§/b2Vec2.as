package §>H§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           this.x = param1;
                           continue loop0;
                           addr108:
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                     }
                     addr102:
                     throw new Error("b2Vec2: X and Y cannot be NaN.");
                     addr100:
                  }
                  addr117:
                  while(true)
                  {
                     §§pop();
                  }
                  addr116:
                  while(true)
                  {
                     addr71:
                     §§push(Boolean(isNaN(param2)));
                     if(!(_loc4_ && param1))
                     {
                        continue loop1;
                     }
                     §§goto(addr116);
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function §5!3§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §`!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(!(_loc3_ && param1))
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
                        if(_loc3_ && this)
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
                  if(!§§pop())
                  {
                     loop4:
                     do
                     {
                        this.x = param1;
                        while(_loc4_)
                        {
                           this.y = param2;
                           if(_loc4_)
                           {
                              continue loop4;
                           }
                        }
                     }
                     while(_loc3_);
                     
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr95);
                  }
               }
               return;
            }
         }
         throw new Error("b2Vec2: X and Y cannot be NaN.");
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!_loc2_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(_loc1_ || _loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §2[§() : void
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
         }
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
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §7x§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
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
      
      public function §5!&§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            if(_loc2_ || param1)
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!_loc2_);
         
      }
      
      public function §^$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(_loc3_);
            
         }
      }
      
      public function §7M§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr118:
                     §§push(param1.col2.x);
                     if(!(_loc3_ && _loc2_))
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
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           §§push(param1.col2.y);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  while(§§pop().y = §§pop(), _loc3_ && this);
                  
                  return;
                  addr90:
               }
               §§goto(addr131);
            }
            §§goto(addr118);
         }
         §§goto(addr90);
      }
      
      public function §>!9§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§'l§(this,param1.col1));
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.y = b2Math.§'l§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc4_);
         
      }
      
      public function §^!P§(param1:Number) : void
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
            §§push(param1);
            if(_loc4_ || param1)
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
               if(_loc4_)
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().y = §§pop();
         }
         while(_loc3_);
         
      }
      
      public function §;C§(param1:Number) : void
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
            §§push(param1);
            if(_loc4_ || param1)
            {
               §§push(-§§pop());
               if(_loc4_ || param1)
               {
                  addr88:
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
               while(!(_loc4_ || param1));
               
               return;
               addr70:
            }
            §§goto(addr88);
         }
         §§goto(addr70);
      }
      
      public function §3!]§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr109:
                     §§push(this.x);
                     if(_loc3_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_ && _loc2_)
                        {
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
                     if(!_loc2_)
                     {
                        §§goto(addr131);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!(_loc2_ && this))
                     {
                        §§push(this.y);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop() < param1.y)
                           {
                              addr51:
                              §§push(this.y);
                              if(_loc3_ || param1)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_)
                                 {
                                    addr73:
                                    continue;
                                 }
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                           continue;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr51);
                  }
                  while(§§pop().y = §§pop(), !_loc3_);
                  
                  return;
                  addr133:
               }
               §§goto(addr131);
            }
            §§goto(addr109);
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
            if(!(_loc3_ && _loc2_))
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
                        if(!(_loc2_ || this))
                        {
                           addr115:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr115);
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§goto(addr115);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.y);
                        if(!_loc3_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr40:
                              §§push(this.y);
                              if(_loc3_ && _loc3_)
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
                              if(!_loc2_)
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                        }
                        continue;
                     }
                     §§goto(addr40);
                  }
                  while(§§pop().y = §§pop(), _loc3_);
                  
                  return;
                  addr117:
               }
               §§goto(addr115);
            }
            §§goto(addr98);
         }
         §§goto(addr117);
      }
      
      public function §-n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr100:
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
                     if(_loc2_ || _loc1_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §>!7§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function § !W§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(!_loc2_)
         {
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ && _loc1_)
               {
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         addr55:
         §§push(this.y);
         if(_loc1_)
         {
            addr51:
            §§push(§§pop() * this.y);
         }
         return §§pop() + §§pop();
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr57:
                     §§push(0);
                     if(!(_loc3_ && this))
                     {
                        return §§pop();
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr72);
               }
               §§push(1 / _loc1_);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            addr72:
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
            }
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
            while(_loc3_ && _loc3_);
            
            return _loc1_;
         }
         §§goto(addr57);
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
               if(!_loc1_)
               {
                  §§goto(addr53);
               }
               §§goto(addr69);
            }
            addr53:
            if(§§pop())
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§pop();
                  addr63:
                  §§push(b2Math.§3!W§(this.y));
                  if(_loc2_)
                  {
                     addr69:
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr69);
            }
            return §§pop();
         }
         §§goto(addr63);
      }
   }
}
