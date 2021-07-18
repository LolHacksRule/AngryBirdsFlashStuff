package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §-+§:b2Vec2;
      
      public var §'8§:b2Vec2;
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §,q§:Number;
      
      public var §;[§:Number;
      
      public var §-!k§:Number;
      
      public var §1!2§:Number;
      
      public var §`x§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-+§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§'8§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!2§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§ !c§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        addr179:
                        while(_loc2_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop1;
                           }
                        }
                        addr168:
                        continue loop0;
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§-+§.Set(-1,1);
                           while(true)
                           {
                              this.§'8§.Set(1,1);
                              loop8:
                              while(_loc2_)
                              {
                                 this.§!2§.Set(-1,0);
                                 loop9:
                                 while(true)
                                 {
                                    this.§ !c§.Set(1,0);
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       this.§,q§ = 0;
                                       while(true)
                                       {
                                          this.§;[§ = 0;
                                          do
                                          {
                                             this.§-!k§ = 0;
                                             continue loop10;
                                          }
                                          while(!(_loc2_ || _loc2_));
                                          
                                          return;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                              continue loop2;
                           }
                           if(_loc1_ && this)
                           {
                              continue;
                           }
                           §§goto(addr80);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            type = b2Joint.§2!D§;
            §§goto(addr168);
         }
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            §@!<§ = param1;
            loop0:
            while(true)
            {
               §3j§ = param2;
               addr75:
               while(true)
               {
                  this.§-+§.SetV(param3);
               }
               loop3:
               while(true)
               {
                  if(!(_loc13_ || param1))
                  {
                     continue loop0;
                  }
                  do
                  {
                     this.§!2§ = §@!<§.GetLocalPoint(param5);
                     continue loop3;
                  }
                  while(false);
                  
                  §§push(param5.x);
                  if(_loc13_)
                  {
                     §§push(§§pop() - param3.x);
                     if(_loc13_ || param3)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(param5.y);
                  if(_loc13_ || param1)
                  {
                     §§push(§§pop() - param3.y);
                     if(!(_loc14_ && param2))
                     {
                        addr115:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc13_ || param2)
                     {
                        this.§,q§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     }
                     §§push(param6.x);
                     if(!_loc14_)
                     {
                        §§push(§§pop() - param4.x);
                        if(_loc13_)
                        {
                           addr154:
                           §§push(Number(§§pop()));
                        }
                        var _loc10_:* = §§pop();
                        §§push(param6.y);
                        if(_loc13_)
                        {
                           §§push(§§pop() - param4.y);
                           if(!(_loc14_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc11_:* = §§pop();
                        if(_loc13_)
                        {
                           this.§-!k§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                           if(!_loc14_)
                           {
                              addr187:
                              this.§`x§ = param7;
                           }
                           §§push(this.§,q§);
                           if(!_loc14_)
                           {
                              §§push(this.§`x§);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() * this.§-!k§);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc12_:* = §§pop();
                           if(!(_loc14_ && param3))
                           {
                              §§push(this);
                              §§push(_loc12_);
                              if(!(_loc14_ && this))
                              {
                                 §§push(this.§`x§);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() * b2PulleyJoint.§5!,§);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§;[§ = §§pop();
                              addr280:
                              §§push(this);
                              §§push(_loc12_);
                              if(_loc13_ || param3)
                              {
                                 §§push(b2PulleyJoint.§5!,§);
                                 if(!(_loc14_ && param3))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc13_ || param2)
                                    {
                                       addr247:
                                       §§push(§§pop() / this.§`x§);
                                    }
                                    §§pop().§1!2§ = §§pop();
                                    if(_loc14_)
                                    {
                                       §§goto(addr280);
                                    }
                                    return;
                                    addr251:
                                 }
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr70);
      }
   }
}
