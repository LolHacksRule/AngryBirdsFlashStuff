package §#]§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           addr106:
                           loop5:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           while(true)
                           {
                              §§push(Boolean(isNaN(param2)));
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr107);
                           }
                           addr107:
                           addr96:
                        }
                        while(true)
                        {
                           this.x = param1;
                           do
                           {
                              this.y = param2;
                           }
                           while(_loc4_);
                           
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr96);
                        }
                        return;
                     }
                     if(!_loc4_)
                     {
                        throw new Error("b2Vec2: X and Y cannot be NaN.");
                     }
                     continue loop0;
                     addr81:
                  }
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr98);
      }
      
      public static function §>X§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §;v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(isNaN(param1)));
            if(!(_loc4_ && param2))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr104:
                     loop4:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(!_loc4_)
                        {
                           loop0:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 this.x = param1;
                                 do
                                 {
                                    this.y = param2;
                                 }
                                 while(!_loc3_);
                                 
                                 if(_loc3_ || param2)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       return;
                                    }
                                    break loop0;
                                 }
                                 if(!(_loc4_ && this))
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop4;
                           }
                           throw new Error("b2Vec2: X and Y cannot be NaN.");
                           addr76:
                        }
                     }
                  }
                  addr103:
               }
               §§goto(addr76);
            }
            §§goto(addr103);
         }
         §§goto(addr104);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §2!R§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.x);
         if(!(_loc1_ && this))
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
      
      public function § o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().y = §§pop();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §&3§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
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
            while(!_loc3_);
            
         }
      }
      
      public function §6z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §8`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
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
         while(_loc3_);
         
      }
      
      public function §@C§(param1:b2Mat22) : void
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
            §§push(param1.col1.x);
            if(_loc4_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     addr108:
                     §§push(param1.col2.x);
                     if(!_loc3_)
                     {
                        addr113:
                        §§push(§§pop() * this.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           §§push(param1.col2.y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  while(§§pop().y = §§pop(), _loc3_);
                  
                  return;
                  addr118:
               }
               §§goto(addr113);
            }
            §§goto(addr108);
         }
         §§goto(addr118);
      }
      
      public function §]";§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Math.§+'§(this,param1.col1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.y = b2Math.§+'§(this,param1.col2);
         }
         do
         {
            this.x = _loc2_;
         }
         while(_loc3_);
         
      }
      
      public function §8E§(param1:Number) : void
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
               §§push(§§pop() * this.y);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(_loc3_)
            {
               §§push(-§§pop());
               if(_loc4_ && param1)
               {
                  continue;
               }
            }
         }
         while(§§pop().y = §§pop(), !_loc3_);
         
      }
      
      public function §#!'§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(-§§pop());
               if(_loc4_)
               {
                  addr73:
                  §§push(§§pop() * this.y);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() * _loc2_);
                  }
                  §§pop().y = §§pop();
               }
               while(_loc3_);
               
               return;
               addr65:
            }
            §§goto(addr73);
         }
         §§goto(addr65);
      }
      
      public function §8L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(!(_loc3_ && param1))
            {
               §§push(this.x);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() < param1.x)
                  {
                     addr123:
                     §§push(this.x);
                     if(!(_loc3_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr145:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr145);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     if(_loc2_ || this)
                     {
                        §§push(this.y);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop() < param1.y)
                           {
                              addr45:
                              §§push(this.y);
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(Number(§§pop()));
                              if(_loc2_ || _loc3_)
                              {
                                 addr72:
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(param1.y);
                              if(!(_loc2_ || _loc3_))
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
                  while(§§pop().y = §§pop(), !(_loc2_ || this));
                  
                  return;
                  addr147:
               }
               §§goto(addr145);
            }
            §§goto(addr123);
         }
         §§goto(addr147);
      }
      
      public function §6";§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_ || _loc3_)
            {
               §§push(this.x);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr104:
                     §§push(this.x);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_ && param1)
                        {
                           addr122:
                           §§pop().x = Number(§§pop());
                           addr121:
                           do
                           {
                              §§push(this);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this.y);
                                 if(_loc3_)
                                 {
                                    if(§§pop() > param1.y)
                                    {
                                       addr41:
                                       §§push(this.y);
                                       if(!_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(param1.y);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           while(§§pop().y = §§pop(), _loc2_ && _loc3_);
                           
                           return;
                           addr72:
                        }
                        §§goto(addr122);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr104);
         }
         §§goto(addr72);
      }
      
      public function §"p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
                        if(_loc2_ || this)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        addr98:
                        while(true)
                        {
                        }
                     }
                     addr86:
                  }
                  while(true)
                  {
                     §§push(this.y);
                     if(!_loc1_)
                     {
                        §§push(0);
                        if(_loc2_ || _loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc1_)
                              {
                                 §§push(this);
                                 §§push(this.y);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr86);
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
      
      public function § !O§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §`p§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc1_)
               {
                  addr42:
                  §§push(this.y);
                  if(_loc1_)
                  {
                     addr49:
                     §§push(§§pop() + §§pop() * this.y);
                  }
                  §§goto(addr49);
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr42);
      }
      
      public function Normalize() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc4_ || _loc1_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr71:
                     §§push(1 / _loc1_);
                     if(_loc4_ || this)
                     {
                        addr81:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     §§push(this);
                     §§push(this.x);
                     if(_loc4_ || _loc3_)
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
                  while(!_loc4_);
                  
                  return _loc1_;
               }
               §§goto(addr71);
            }
            §§goto(addr81);
         }
         §§goto(addr71);
      }
      
      public function §^!-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(b2Math.§^!-§(this.x));
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr66:
                        §§pop();
                        §§push(b2Math.§^!-§(this.y));
                        if(!(_loc2_ && _loc1_))
                        {
                           addr78:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr78);
         }
         §§goto(addr66);
      }
   }
}
