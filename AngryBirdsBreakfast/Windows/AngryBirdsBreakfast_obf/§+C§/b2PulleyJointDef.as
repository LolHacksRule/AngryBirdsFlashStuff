package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §4g§:b2Vec2;
      
      public var §2l§:b2Vec2;
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §-t§:Number;
      
      public var §!0§:Number;
      
      public var §-f§:Number;
      
      public var §@!w§:Number;
      
      public var §&D§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§4g§ = new b2Vec2();
            while(true)
            {
               this.§2l§ = new b2Vec2();
               while(true)
               {
                  this.§0O§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§ @§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        addr180:
                        while(true)
                        {
                           type = b2Joint.§[!0§;
                           addr176:
                           while(true)
                           {
                              this.§4g§.Set(-1,1);
                              continue loop3;
                              addr78:
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(_loc1_ || this)
                  {
                     this.§@!w§ = 0;
                     §§goto(addr76);
                  }
               }
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
         while(true)
         {
            this.§2l§.Set(1,1);
            §§goto(addr149);
         }
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param2))
         {
            §'!n§ = param1;
            loop0:
            while(true)
            {
               § 5§ = param2;
               while(true)
               {
                  this.§4g§.SetV(param3);
                  continue loop0;
                  addr55:
                  loop3:
                  for(; !(_loc14_ && param1); while(!(_loc14_ && param1))
                  {
                     if(_loc14_)
                     {
                        continue loop0;
                     }
                     this.§ @§ = § 5§.GetLocalPoint(param6);
                     if(_loc14_)
                     {
                        continue;
                     }
                     §§goto(addr32);
                  })
                  {
                     while(true)
                     {
                        do
                        {
                           this.§0O§ = §'!n§.GetLocalPoint(param5);
                           continue loop3;
                        }
                        while(false);
                        
                        §§push(param5.x);
                        if(!(_loc14_ && param3))
                        {
                           §§push(§§pop() - param3.x);
                           if(!(_loc14_ && param2))
                           {
                              addr104:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param5.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() - param3.y);
                              if(!_loc14_)
                              {
                                 addr115:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              if(_loc13_)
                              {
                                 this.§-t§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                              }
                              §§push(param6.x);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - param4.x);
                                 if(_loc13_)
                                 {
                                    addr149:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(param6.y);
                                 if(_loc13_ || this)
                                 {
                                    §§push(§§pop() - param4.y);
                                    if(!_loc14_)
                                    {
                                       addr165:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc11_:* = §§pop();
                                    if(!(_loc14_ && this))
                                    {
                                       this.§-f§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                       if(!_loc14_)
                                       {
                                          addr187:
                                          this.§&D§ = param7;
                                       }
                                       §§push(this.§-t§);
                                       if(_loc13_ || param1)
                                       {
                                          §§push(this.§&D§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * this.§-f§);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc14_ && param3))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc12_:* = §§pop();
                                       if(_loc13_ || param3)
                                       {
                                          §§push(this);
                                          §§push(_loc12_);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(this.§&D§);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() * b2PulleyJoint.§9!2§);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§!0§ = §§pop();
                                       }
                                       do
                                       {
                                          §§push(this);
                                          §§push(_loc12_);
                                          if(_loc13_)
                                          {
                                             §§push(b2PulleyJoint.§9!2§);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc13_)
                                                {
                                                   continue;
                                                }
                                                addr240:
                                                §§push(this.§&D§);
                                             }
                                             §§push(§§pop() / §§pop());
                                             continue;
                                          }
                                          §§goto(addr240);
                                       }
                                       while(§§pop().§@!w§ = §§pop(), !(_loc13_ || param1));
                                       
                                       return;
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr104);
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
   }
}
