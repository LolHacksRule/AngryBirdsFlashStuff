package §@!E§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(isNaN(param1)));
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!_loc4_)
                           {
                              loop1:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    this.x = param1;
                                    loop3:
                                    while(_loc3_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.y = param2;
                                             if(!_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop1;
                                                }
                                                if(_loc3_ || param1)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
                                          }
                                          return;
                                          addr67:
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              throw new Error("b2Vec2: X and Y cannot be NaN.");
                              addr75:
                           }
                           break;
                        }
                     }
                     addr101:
                  }
                  §§goto(addr75);
               }
               §§goto(addr101);
            }
         }
         §§goto(addr67);
      }
      
      public static function §7!R§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §>![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                     addr94:
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
                  addr93:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                     }
                     addr74:
                  }
                  while(true)
                  {
                     this.x = param1;
                     loop3:
                     while(_loc3_ || param2)
                     {
                        while(true)
                        {
                           this.y = param2;
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
               throw new Error("b2Vec2: X and Y cannot be NaN.");
            }
            §§goto(addr93);
         }
         §§goto(addr53);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §2T§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(_loc1_)
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
      
      public function §`!!§() : void
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
               if(!_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §?4§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
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
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §[y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && param1))
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
            while(_loc3_ && this);
            
         }
      }
      
      public function §",§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || param1)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc2_);
         
      }
      
      public function §+S§(param1:b2Mat22) : void
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
               if(_loc3_)
               {
                  addr121:
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(param1.col2.x);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() * this.y);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr52:
                           §§push(param1.col2.y);
                           if(_loc3_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr52);
                  }
                  while(§§pop().y = §§pop(), _loc4_ && _loc2_);
                  
                  return;
                  addr79:
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr121);
         }
         §§goto(addr79);
      }
      
      public function §,!M§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§,w§(this,param1.col1));
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.y = b2Math.§,w§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function §'f§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(param1);
            if(!(_loc3_ && _loc3_))
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
               if(!(_loc4_ || this))
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), !(_loc4_ || _loc3_));
         
      }
      
      public function §0!p§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(-§§pop());
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().y = §§pop();
         }
         while(_loc4_);
         
      }
      
      public function §`!y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr89:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                        }
                        addr117:
                        §§pop().x = §§pop();
                        do
                        {
                           §§push(this);
                           if(!_loc2_)
                           {
                              §§push(this.y);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(§§pop() >= param1.y)
                              {
                                 §§push(param1.y);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 continue;
                              }
                           }
                           §§push(this.y);
                           if(!(_loc2_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ || this)
                              {
                              }
                           }
                        }
                        while(§§pop().y = §§pop(), _loc2_);
                        
                        return;
                        addr118:
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc2_ && this))
                     {
                        addr116:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr116);
            }
            §§goto(addr89);
         }
         §§goto(addr118);
      }
      
      public function §<p§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            if(!(_loc2_ && this))
            {
               §§push(this.x);
               if(_loc3_ || param1)
               {
                  if(§§pop() > param1.x)
                  {
                     addr99:
                     §§push(this.x);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_ && this)
                        {
                           addr131:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           addr126:
                        }
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
                     if(_loc3_)
                     {
                        §§push(this.y);
                        if(!_loc2_)
                        {
                           if(§§pop() > param1.y)
                           {
                              addr41:
                              §§push(this.y);
                              if(!(_loc2_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc2_)
                                 {
                                    addr53:
                                    continue;
                                 }
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                           continue;
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr41);
                  }
                  while(§§pop().y = §§pop(), !_loc3_);
                  
                  return;
                  addr133:
               }
               §§goto(addr126);
            }
            §§goto(addr99);
         }
         §§goto(addr133);
      }
      
      public function §71§() : void
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
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc1_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                     }
                     while(true)
                     {
                     }
                     addr92:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.y);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 addr54:
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr92);
                              }
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
         §§goto(addr54);
      }
      
      public function Length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §&l§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(_loc1_)
         {
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && this))
               {
                  addr52:
                  §§push(this.y);
                  if(_loc1_)
                  {
                     addr59:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr59);
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr52);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§goto(addr65);
                     }
                     else
                     {
                        addr76:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr66:
                     §§push(1 / _loc1_);
                     if(_loc4_ || this)
                     {
                        §§goto(addr76);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc3_ && this))
                  {
                     §§push(this);
                     §§push(this.x);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                  }
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
                  while(_loc3_ && _loc1_);
                  
                  return _loc1_;
               }
               §§goto(addr66);
            }
            addr65:
            return §§pop();
         }
         §§goto(addr66);
      }
      
      public function §'!]§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(b2Math.§'!]§(this.x));
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        §§pop();
                        addr58:
                        §§push(b2Math.§'!]§(this.y));
                        if(_loc2_ || _loc2_)
                        {
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr80);
               }
               §§push(Boolean(§§pop()));
            }
            addr80:
            return §§pop();
         }
         §§goto(addr58);
      }
   }
}
