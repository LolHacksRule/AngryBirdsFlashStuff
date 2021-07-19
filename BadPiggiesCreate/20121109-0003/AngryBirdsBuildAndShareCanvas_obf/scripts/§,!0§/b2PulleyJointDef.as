package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §%S§:b2Vec2;
      
      public var §41§:b2Vec2;
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §`Y§:Number;
      
      public var §"W§:Number;
      
      public var §>`§:Number;
      
      public var §?"0§:Number;
      
      public var §+"2§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%S§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§41§ = new b2Vec2();
               while(true)
               {
                  this.§3!&§ = new b2Vec2();
                  addr181:
                  while(!_loc1_)
                  {
                     this.§2!P§ = new b2Vec2();
                  }
                  continue loop0;
                  loop6:
                  while(_loc2_ || _loc2_)
                  {
                     this.§41§.Set(1,1);
                     while(true)
                     {
                        this.§3!&§.Set(-1,0);
                        loop8:
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.§2!P§.Set(1,0);
                              loop9:
                              while(_loc2_)
                              {
                                 this.§`Y§ = 0;
                                 loop10:
                                 while(true)
                                 {
                                    this.§"W§ = 0;
                                    while(_loc2_)
                                    {
                                       this.§>`§ = 0;
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          continue loop10;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                              §§goto(addr181);
                           }
                           while(true)
                           {
                              this.§%S§.Set(-1,1);
                              break loop8;
                           }
                           loop14:
                           while(true)
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    addr58:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    addr175:
                                    while(true)
                                    {
                                       super();
                                       break loop14;
                                       §§goto(addr58);
                                    }
                                 }
                                 break;
                              }
                              continue loop8;
                           }
                           while(true)
                           {
                              type = b2Joint.§-i§;
                              §§goto(addr165);
                           }
                        }
                        continue loop6;
                        while(_loc2_ || this)
                        {
                           this.§+"2§ = 1;
                           §§goto(addr49);
                           §§goto(addr35);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            § !T§ = param1;
            loop0:
            while(true)
            {
               §import§ = param2;
               loop1:
               while(true)
               {
                  this.§%S§.SetV(param3);
                  while(true)
                  {
                     this.§41§.SetV(param4);
                     continue loop0;
                     addr39:
                     if(_loc14_ && param2)
                     {
                        continue;
                     }
                     if(_loc14_)
                     {
                        continue loop1;
                     }
                     while(false)
                     {
                        while(true)
                        {
                           this.§3!&§ = § !T§.GetLocalPoint(param5);
                           do
                           {
                              this.§2!P§ = §import§.GetLocalPoint(param6);
                           }
                           while(_loc14_ && param1);
                           
                           if(!(_loc13_ || param1))
                           {
                              break;
                           }
                           §§goto(addr39);
                        }
                        continue loop0;
                     }
                     §§push(param5.x);
                     if(_loc13_)
                     {
                        §§push(§§pop() - param3.x);
                        if(_loc13_)
                        {
                           addr94:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(param5.y);
                        if(_loc13_ || this)
                        {
                           §§push(§§pop() - param3.y);
                           if(!(_loc14_ && param1))
                           {
                              addr115:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           if(_loc13_)
                           {
                              this.§`Y§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                           }
                           §§push(param6.x);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - param4.x);
                              if(!(_loc14_ && param3))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc10_:* = §§pop();
                           §§push(param6.y);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - param4.y);
                              if(!(_loc14_ && param3))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc11_:* = §§pop();
                           if(!(_loc14_ && this))
                           {
                              this.§>`§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                              if(!_loc14_)
                              {
                                 addr192:
                                 this.§+"2§ = param7;
                              }
                              §§push(this.§`Y§);
                              if(!_loc14_)
                              {
                                 §§push(this.§+"2§);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() * this.§>`§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc14_ && param1))
                                 {
                                    addr214:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc12_:* = §§pop();
                                 if(!_loc14_)
                                 {
                                    §§push(this);
                                    §§push(_loc12_);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(this.§+"2§);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() * b2PulleyJoint.§!q§);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§"W§ = §§pop();
                                    do
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!_loc14_)
                                       {
                                          §§push(b2PulleyJoint.§!q§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§+"2§);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    while(§§pop().§?"0§ = §§pop(), _loc14_);
                                    
                                 }
                                 return;
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr94);
                  }
               }
            }
         }
         §§goto(addr48);
      }
   }
}
