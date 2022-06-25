package §;%§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            do
            {
               §§push(Boolean(isNaN(param1)));
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr107:
                        while(true)
                        {
                           §§push(Boolean(isNaN(param2)));
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr106:
                  }
                  while(§§pop())
                  {
                     if(_loc4_ && param1)
                     {
                        break;
                     }
                     addr96:
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr107);
                  }
                  this.x = param1;
                  addr39:
                  if(!_loc4_)
                  {
                     this.y = param2;
                     if(_loc4_ && param1)
                     {
                        §§goto(addr39);
                     }
                     return;
                     addr34:
                  }
                  §§goto(addr96);
               }
               §§goto(addr106);
            }
            while(!(_loc3_ || param2));
            
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         §§goto(addr34);
      }
      
      public static function §9!h§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §&!K§() : void
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
            while(_loc2_);
            
         }
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(Boolean(isNaN(param1)));
            loop0:
            while(true)
            {
               if(§§pop())
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
                           while(_loc4_ && param1);
                           
                        }
                        while(!_loc3_);
                        
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     if(_loc3_ || param2)
                     {
                        break;
                     }
                     addr104:
                     while(true)
                     {
                        §§push(Boolean(isNaN(param2)));
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop0;
                  }
                  addr92:
                  throw new Error("b2Vec2: X and Y cannot be NaN.");
                  addr83:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
         }
         while(!_loc3_);
         
      }
      
      public function §&!+§() : b2Vec2
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
      
      public function §1!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
         while(_loc1_ && _loc2_);
         
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §'!<§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_ || _loc3_)
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
         while(!_loc3_);
         
      }
      
      public function §5c§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc2_)
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
      
      public function §%G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
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
      
      public function §>!z§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(param1.col1.x);
            if(!(_loc4_ && this))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  addr136:
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(param1.col2.x);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() * this.y);
                     }
                  }
                  §§pop().x = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(param1.col1.y);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           addr77:
                           §§push(param1.col2.y);
                           if(_loc3_)
                           {
                              §§push(§§pop() * this.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        continue;
                     }
                     §§goto(addr77);
                  }
                  while(§§pop().y = §§pop(), _loc4_);
                  
                  return;
                  addr137:
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr136);
         }
         §§goto(addr137);
      }
      
      public function §[!`§(param1:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(b2Math.§+!1§(this,param1.col1));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.y = b2Math.§+!1§(this,param1.col2);
            do
            {
               this.x = _loc2_;
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §+?§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.x);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_ || _loc3_)
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
         while(_loc3_ && this);
         
      }
      
      public function §8!Z§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.x);
         if(_loc3_ || _loc3_)
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
                  §§push(§§pop() * this.y);
               }
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().y = §§pop();
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function § !§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(this.x);
               if(_loc2_ || this)
               {
                  if(§§pop() < param1.x)
                  {
                     addr103:
                     §§push(this.x);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           addr126:
                           §§pop().x = Number(§§pop());
                           addr125:
                           do
                           {
                              §§push(this);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this.y);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < param1.y)
                                    {
                                       addr45:
                                       §§push(this.y);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc3_)
                                          {
                                             addr72:
                                             §§push(Number(§§pop()));
                                             continue;
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(param1.y);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr45);
                           }
                           while(§§pop().y = §§pop(), _loc3_);
                           
                           return;
                           addr127:
                        }
                        §§goto(addr126);
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr125);
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr103);
         }
         §§goto(addr127);
      }
      
      public function §4P§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(this.x);
               if(!_loc2_)
               {
                  if(§§pop() > param1.x)
                  {
                     addr114:
                     §§push(this.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(this);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.y);
                     if(!(_loc2_ && param1))
                     {
                        if(§§pop() <= param1.y)
                        {
                           §§push(param1.y);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                           continue;
                        }
                        addr61:
                        §§push(this.y);
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     continue;
                  }
                  §§goto(addr61);
               }
               while(§§pop().y = §§pop(), !(_loc3_ || _loc2_));
               
               return;
               addr102:
            }
            §§goto(addr114);
         }
         §§goto(addr102);
      }
      
      public function §`c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
                     addr90:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.x);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        addr102:
                        while(true)
                        {
                        }
                     }
                     addr90:
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
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(this);
                                 §§push(this.y);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              if(_loc1_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr102);
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
         §§goto(addr90);
      }
      
      public function §-D§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §#-§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.x);
         if(_loc1_ || this)
         {
            §§push(this.x);
            if(_loc1_ || _loc2_)
            {
               §§goto(addr55);
            }
            §§push(§§pop() + §§pop());
         }
         addr55:
         §§push(§§pop() * §§pop());
         if(!_loc2_)
         {
            §§push(this.y);
            if(_loc1_)
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
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr69);
                     }
                     else
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr70:
                     §§push(1 / _loc1_);
                     if(_loc3_)
                     {
                        §§goto(addr75);
                     }
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
               §§goto(addr70);
            }
            addr69:
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public function §,b§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(b2Math.§,b§(this.x));
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        addr63:
                        §§push(b2Math.§,b§(this.y));
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
            }
            §§goto(addr69);
         }
         §§goto(addr63);
      }
   }
}
