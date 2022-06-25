package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-Z6§:b2Vec2;
      
      public var §_-qx§:b2Vec2;
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-i§:Number;
      
      public var §_-LT§:Number;
      
      public var §_-92§:Number;
      
      public var §_-Np§:Number;
      
      public var §_-0Bd§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-Z6§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§_-qx§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§_-F6§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§_-0Bf§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           type = b2Joint.§_-kH§;
                           continue loop3;
                           loop8:
                           while(_loc1_ || _loc2_)
                           {
                              continue loop0;
                              addr78:
                              if(!(_loc1_ || this))
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 continue loop3;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              this.§_-0Bd§ = 1;
                              loop14:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       addr156:
                                       while(_loc1_)
                                       {
                                          this.§_-qx§.Set(1,1);
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§_-F6§.Set(-1,0);
                                       continue loop8;
                                    }
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    this.§_-Np§ = 0;
                                    while(true)
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          while(true)
                                          {
                                             this.§_-92§ = 0;
                                             continue loop12;
                                          }
                                          return;
                                          addr48:
                                          addr109:
                                       }
                                       §§goto(addr78);
                                       addr39:
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc1_)
                                       {
                                          §§goto(addr48);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§_-i§ = 0;
                                             break loop14;
                                          }
                                          addr121:
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                              while(true)
                              {
                                 this.§_-LT§ = 0;
                                 §§goto(addr109);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param3)
         {
            §_-ZR§ = param1;
            loop0:
            while(true)
            {
               §_-7b§ = param2;
               addr58:
               if(!(_loc14_ || param1))
               {
                  continue;
               }
               loop4:
               do
               {
                  this.§_-F6§ = §_-ZR§.GetLocalPoint(param5);
                  loop5:
                  while(!_loc13_)
                  {
                     addr43:
                     if(!(_loc13_ && param3))
                     {
                        this.§_-0Bf§ = §_-7b§.GetLocalPoint(param6);
                        if(_loc14_)
                        {
                           continue loop4;
                        }
                        continue;
                     }
                     addr76:
                     while(true)
                     {
                        this.§_-Z6§.SetV(param3);
                        addr71:
                        while(true)
                        {
                           this.§_-qx§.SetV(param4);
                           break loop5;
                        }
                        §§goto(addr43);
                     }
                  }
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        §§goto(addr58);
                     }
                     else
                     {
                        §§goto(addr71);
                     }
                  }
                  continue loop0;
               }
               while(false);
               
               §§push(param5.x);
               if(!_loc13_)
               {
                  §§push(§§pop() - param3.x);
                  if(_loc14_)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param5.y);
                  if(_loc14_ || param3)
                  {
                     §§push(§§pop() - param3.y);
                     if(!(_loc13_ && param3))
                     {
                        addr111:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc14_ || param3)
                     {
                        this.§_-i§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     }
                     §§push(param6.x);
                     if(!_loc13_)
                     {
                        §§push(§§pop() - param4.x);
                        if(!(_loc13_ && param3))
                        {
                           addr155:
                           §§push(Number(§§pop()));
                        }
                        var _loc10_:* = §§pop();
                        §§push(param6.y);
                        if(!(_loc13_ && param2))
                        {
                           §§push(§§pop() - param4.y);
                           if(_loc14_)
                           {
                              addr171:
                              §§push(Number(§§pop()));
                           }
                           var _loc11_:* = §§pop();
                           if(_loc14_ || this)
                           {
                              this.§_-92§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                              if(!_loc13_)
                              {
                                 this.§_-0Bd§ = param7;
                              }
                           }
                           §§push(this.§_-i§);
                           if(!_loc13_)
                           {
                              §§push(this.§_-0Bd§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() * this.§_-92§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc13_)
                              {
                                 addr210:
                                 §§push(Number(§§pop()));
                              }
                              var _loc12_:* = §§pop();
                              if(_loc14_)
                              {
                                 §§push(this);
                                 §§push(_loc12_);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(this.§_-0Bd§);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() * b2PulleyJoint.§_-nC§);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§_-LT§ = §§pop();
                              }
                              addr286:
                              §§push(this);
                              §§push(_loc12_);
                              if(_loc14_ || param3)
                              {
                                 §§push(b2PulleyJoint.§_-nC§);
                                 if(_loc14_ || param3)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_)
                                    {
                                       addr243:
                                       §§push(§§pop() / this.§_-0Bd§);
                                    }
                                    §§pop().§_-Np§ = §§pop();
                                    if(!(_loc14_ || param3))
                                    {
                                       §§goto(addr286);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr111);
               }
               §§goto(addr90);
            }
         }
         §§goto(addr76);
      }
   }
}
