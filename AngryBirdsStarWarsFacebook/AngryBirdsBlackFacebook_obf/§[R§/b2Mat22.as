package §[R§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.col1 = new b2Vec2();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        super();
                        if(_loc2_ || _loc1_)
                        {
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 this.col1.x = this.col2.y = 1;
                              }
                              continue loop1;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function §-"f§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(!(_loc4_ && param1))
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §1"'§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc4_ && param2))
         {
            _loc3_.§'!,§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc4_ && this))
         {
            §§push(Number(Math.cos(param1)));
            if(_loc5_ || this)
            {
               _loc2_ = §§pop();
               addr38:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && this))
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr133:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr115:
                           while(true)
                           {
                              §§push(-§§pop());
                              addr126:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr127:
                                 while(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           addr110:
                           §§push(this.col2);
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr85:
                                 §§pop().y = §§pop();
                                 if(!(_loc5_ || this))
                                 {
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr110);
                                       }
                                       break;
                                       §§goto(addr85);
                                    }
                                    §§goto(addr127);
                                    addr108:
                                 }
                                 return;
                                 addr93:
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr126);
                        }
                     }
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr38);
      }
      
      public function §'!,§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc4_ && param2);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§&!c§(this);
         }
         return _loc1_;
      }
      
      public function §&!c§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §1"W§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr173:
               while(true)
               {
                  §§push(§§pop().x);
                  addr174:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr176:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr177:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr178:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §^!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.col1);
            while(true)
            {
               §§pop().x = 1;
               loop3:
               while(true)
               {
                  §§push(this.col1);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().y = 0;
                  loop4:
                  while(true)
                  {
                     §§push(this.col2);
                     if(!(_loc1_ || _loc2_))
                     {
                        break;
                     }
                     §§pop().y = 1;
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 §§push(this.col2);
                                 break loop4;
                              }
                              addr95:
                           }
                           return;
                        }
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§pop().x = 0;
                     continue loop3;
                     §§goto(addr74);
                  }
                  addr74:
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §&"Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr99:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr100:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr94:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr79:
                        §§push(this.col2);
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc2_)
                        {
                           addr52:
                           §§pop().y = §§pop();
                           if(!(_loc2_ || _loc1_))
                           {
                              while(_loc2_)
                              {
                                 §§goto(addr79);
                                 §§goto(addr52);
                              }
                              continue loop2;
                              addr77:
                           }
                           if(_loc2_)
                           {
                              return;
                              addr62:
                           }
                           continue loop0;
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §^B§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this.col2.x);
            if(!(_loc7_ && _loc2_))
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  addr43:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.col2.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc7_ && this))
               {
                  §§push(_loc2_);
                  if(_loc8_ || _loc3_)
                  {
                     §§push(_loc5_);
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc7_)
                        {
                           §§push(_loc3_);
                           if(_loc8_ || param1)
                           {
                              §§push(§§pop() * _loc4_);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr242:
                                          _loc6_ = §§pop();
                                          if(_loc8_ || this)
                                          {
                                             addr251:
                                             if(§§pop() != 0)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(1 / _loc6_);
                                                   if(!_loc7_)
                                                   {
                                                      addr275:
                                                      _loc6_ = Number(§§pop());
                                                   }
                                                   §§goto(addr275);
                                                }
                                                while(true)
                                                {
                                                   addr171:
                                                   if(!(_loc8_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(param1.col1);
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr124:
                                                            §§push(_loc4_);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               addr143:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.col2);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr86:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    addr95:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    break loop11;
                                                                                    §§goto(addr86);
                                                                                 }
                                                                                 addr162:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr162);
                                                                                    §§push(_loc3_);
                                                                                 }
                                                                                 break loop11;
                                                                              }
                                                                              addr158:
                                                                           }
                                                                           §§goto(addr95);
                                                                        }
                                                                        addr157:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr158);
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        §§goto(addr164);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr184:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr183:
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr183);
                                                      §§goto(addr178);
                                                   }
                                                   addr178:
                                                   addr182:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr182);
                                             }
                                          }
                                          §§goto(addr275);
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr275);
                              }
                              §§goto(addr242);
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr275);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr43);
      }
      
      public function §=#6§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!(_loc9_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(!(_loc9_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc10_ || param3)
         {
            §§push(_loc7_);
            if(!_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc9_ && param3))
                     {
                        addr96:
                        §§push(§§pop() - §§pop());
                        if(!(_loc9_ && param2))
                        {
                           addr105:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr105);
                     }
                     var _loc8_:* = §§pop();
                     if(_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc10_ || this)
                           {
                              §§push(1 / _loc8_);
                              if(!_loc9_)
                              {
                                 addr134:
                                 _loc8_ = Number(§§pop());
                                 if(!(_loc9_ && param2))
                                 {
                                    addr198:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(_loc10_ || param2)
                                    {
                                       §§push(_loc7_);
                                       if(_loc10_)
                                       {
                                          §§push(param2);
                                          if(_loc10_ || this)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_ || param1)
                                             {
                                                addr242:
                                                addr243:
                                                §§push(_loc5_);
                                                if(!_loc9_)
                                                {
                                                   addr239:
                                                   §§push(§§pop() * param3);
                                                }
                                                §§pop().x = §§pop() * (§§pop() - §§pop());
                                                do
                                                {
                                                   §§push(param1);
                                                   §§push(_loc8_);
                                                   if(!(_loc10_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc10_ || param3)
                                                   {
                                                      §§push(param3);
                                                      if(!_loc9_)
                                                      {
                                                         addr188:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(_loc6_);
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               §§push(§§pop() * param2);
                                                            }
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         continue;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§goto(addr188);
                                                }
                                                while(§§pop().y = §§pop(), _loc9_ && this);
                                                
                                                return param1;
                                                addr197:
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr96);
               }
               §§goto(addr105);
            }
            §§goto(addr96);
         }
         §§goto(addr105);
      }
      
      public function §6"%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.col1.§6"%§();
         }
         do
         {
            this.col2.§6"%§();
         }
         while(_loc1_);
         
      }
   }
}
