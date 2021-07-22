package §6!^§
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
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr122:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr121:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        throw new Error("b2Vec2: X and Y cannot be NaN.");
                     }
                     loop2:
                     while(true)
                     {
                        this.x = param1;
                        addr44:
                        while(_loc3_ || this)
                        {
                           if(!(_loc4_ && param1))
                           {
                              continue loop0;
                           }
                        }
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr121);
            }
         }
         §§goto(addr106);
      }
      
      public static function §&!q§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §%y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.x = 0;
         }
         do
         {
            this.y = 0;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr115:
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
                  addr114:
               }
               loop0:
               for(; !§§pop(); §§goto(addr115))
               {
                  while(true)
                  {
                     this.x = param1;
                     loop2:
                     while(_loc4_ || _loc3_)
                     {
                        if(!(_loc4_ || param2))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.y = param2;
                           if(!(_loc3_ && param1))
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 return;
                              }
                              break loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               throw new Error("b2Vec2: X and Y cannot be NaN.");
            }
            §§goto(addr114);
         }
         §§goto(addr86);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §9l§() : b2Vec2
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
         if(!(_loc2_ && _loc2_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §-"I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
               if(!_loc2_)
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
      
      public function §6"3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc3_)
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function §9!Y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc2_);
         
      }
      
      public function §!!L§(param1:Number) : void
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
               if(_loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §8"C§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(this);
            §§push(param1.col1.x);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_ || _loc3_)
                  {
                     addr113:
                     §§push(param1.col2.x);
                     if(!(_loc3_ && this))
                     {
                        addr126:
                        §§push(§§pop() + §§pop() * this.y);
                     }
                     §§goto(addr126);
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§push(param1.col2.y);
                           if(_loc4_)
                           {
                              addr68:
                              §§push(§§pop() * this.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        continue;
                     }
                     §§goto(addr68);
                  }
                  while(§§pop().y = §§pop(), _loc3_);
                  
                  return;
                  addr128:
               }
               §§goto(addr126);
            }
            §§goto(addr113);
         }
         §§goto(addr128);
      }
      
      public function §;"?§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§[!3§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.y = b2Math.§[!3§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §@!§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(this);
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(-§§pop());
               if(_loc3_ && this)
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), _loc3_);
         
      }
      
      public function §6!?§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_ || _loc2_)
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
               §§push(-§§pop());
               if(!_loc3_)
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
            if(!_loc3_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().y = §§pop();
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function §+!5§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            if(!(_loc2_ && this))
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() < param1.x)
                  {
                     addr119:
                     §§push(this.x);
                     if(_loc3_)
                     {
                        addr123:
                        §§push(Number(§§pop()));
                        if(_loc3_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc3_ || _loc2_)
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
                     if(!(_loc2_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                     }
                  }
                  while(§§pop().y = §§pop(), _loc2_ && _loc2_);
                  
                  return;
                  addr143:
               }
               §§goto(addr123);
            }
            §§goto(addr119);
         }
         §§goto(addr143);
      }
      
      public function §0M§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.x);
               if(_loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc3_ || this))
                        {
                           addr127:
                           §§pop().x = Number(§§pop());
                           addr126:
                           do
                           {
                              §§push(this);
                              if(!_loc2_)
                              {
                                 §§push(this.y);
                                 if(_loc3_)
                                 {
                                    if(§§pop() <= param1.y)
                                    {
                                       §§push(param1.y);
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       continue;
                                    }
                                    addr41:
                                    §§push(this.y);
                                    if(!_loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           while(§§pop().y = §§pop(), !(_loc3_ || param1));
                           
                           return;
                           addr128:
                        }
                        §§goto(addr127);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        §§goto(addr126);
                     }
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr104);
         }
         §§goto(addr128);
      }
      
      public function §#X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
                        if(_loc1_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        addr92:
                        while(true)
                        {
                        }
                     }
                     addr85:
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc1_ || _loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(this);
                                 §§push(this.y);
                                 if(_loc1_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr85);
                              }
                              §§goto(addr92);
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
         §§goto(addr92);
      }
      
      public function §`"I§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §03§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.x);
         if(_loc2_)
         {
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc1_)
               {
                  addr58:
                  §§push(this.y);
                  if(!(_loc1_ && this))
                  {
                     addr70:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr70);
               }
               return §§pop();
            }
            §§goto(addr70);
         }
         §§goto(addr58);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
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
               if(!(_loc4_ && _loc1_))
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
            while(_loc4_ && _loc2_);
            
            return _loc1_;
         }
         §§goto(addr60);
      }
      
      public function §4!d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(b2Math.§4!d§(this.x));
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§pop();
                        addr62:
                        §§push(b2Math.§4!d§(this.y));
                        if(!_loc2_)
                        {
                           addr68:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr68);
         }
         §§goto(addr62);
      }
   }
}
