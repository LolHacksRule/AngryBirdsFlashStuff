package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §+f§:b2Vec2;
      
      public var §6!P§:b2Vec2;
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §,"§:Number;
      
      public var §!! §:Number;
      
      public var §[!$§:Number;
      
      public var §;u§:Number;
      
      public var §2![§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§+f§ = new b2Vec2();
            while(true)
            {
               this.§6!P§ = new b2Vec2();
               while(true)
               {
                  this.§`!V§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§6$§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           type = b2Joint.§+4§;
                           addr172:
                           while(true)
                           {
                              this.§+f§.Set(-1,1);
                              addr153:
                              while(_loc2_)
                              {
                              }
                              continue loop4;
                           }
                        }
                        addr93:
                        if(!(_loc1_ && this))
                        {
                           this.§;u§ = 0;
                           loop14:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 this.§2![§ = 1;
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr60:
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop14;
                                 }
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§[!$§ = 0;
                                       §§goto(addr81);
                                    }
                                    break;
                                    §§goto(addr60);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr120);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               this.§`!V§.Set(-1,0);
               §§goto(addr128);
            }
         }
         while(true)
         {
            this.§6!P§.Set(1,1);
            §§goto(addr136);
         }
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param2)
         {
            §^!G§ = param1;
            loop0:
            while(true)
            {
               §-z§ = param2;
               while(true)
               {
                  this.§+f§.SetV(param3);
                  continue loop0;
                  addr58:
                  loop3:
                  while(!(_loc14_ && param3))
                  {
                     loop4:
                     while(true)
                     {
                        this.§`!V§ = §^!G§.GetLocalPoint(param5);
                        loop5:
                        while(_loc13_)
                        {
                           while(true)
                           {
                              this.§6$§ = §-z§.GetLocalPoint(param6);
                              if(!_loc14_)
                              {
                                 addr33:
                                 if(_loc13_ || this)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              continue loop5;
                           }
                           §§push(param5.x);
                           if(_loc13_ || param3)
                           {
                              §§push(§§pop() - param3.x);
                              if(!_loc14_)
                              {
                                 addr103:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param5.y);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - param3.y);
                                 if(_loc13_)
                                 {
                                    addr114:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 if(!(_loc14_ && this))
                                 {
                                    this.§,"§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                                 }
                                 §§push(param6.x);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - param4.x);
                                    if(_loc13_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(param6.y);
                                 if(_loc13_ || this)
                                 {
                                    §§push(§§pop() - param4.y);
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc13_)
                                 {
                                    this.§[!$§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                    if(!_loc14_)
                                    {
                                       addr193:
                                       this.§2![§ = param7;
                                    }
                                    §§push(this.§,"§);
                                    if(_loc13_)
                                    {
                                       §§push(this.§2![§);
                                       if(!(_loc14_ && param2))
                                       {
                                          §§push(§§pop() * this.§[!$§);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc12_:* = §§pop();
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(_loc13_ || param2)
                                       {
                                          §§push(this.§2![§);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(§§pop() * b2PulleyJoint.§3!;§);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§!! § = §§pop();
                                    }
                                    do
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(_loc13_)
                                       {
                                          §§push(b2PulleyJoint.§3!;§);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc13_ || param3))
                                             {
                                                continue;
                                             }
                                             addr252:
                                             §§push(this.§2![§);
                                          }
                                          §§push(§§pop() / §§pop());
                                          continue;
                                       }
                                       §§goto(addr252);
                                    }
                                    while(§§pop().§;u§ = §§pop(), _loc14_);
                                    
                                    return;
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr103);
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
   }
}
