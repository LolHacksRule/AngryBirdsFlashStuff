package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §&!>§:b2Vec2;
      
      public var §7!+§:b2Vec2;
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §5%§:Number;
      
      public var §;J§:Number;
      
      public var §3!r§:Number;
      
      public var § M§:Number;
      
      public var §32§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§&!>§ = new b2Vec2();
            while(true)
            {
               this.§7!+§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§9!9§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^G§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        addr174:
                        while(_loc2_)
                        {
                           type = b2Joint.§<!`§;
                           continue loop1;
                        }
                        addr140:
                        continue loop2;
                        loop6:
                        while(_loc2_ || _loc2_)
                        {
                           this.§7!+§.Set(1,1);
                           while(true)
                           {
                              this.§9!9§.Set(-1,0);
                              loop8:
                              while(true)
                              {
                                 this.§^G§.Set(1,0);
                                 loop9:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§5%§ = 0;
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          this.§;J§ = 0;
                                          while(_loc2_ || this)
                                          {
                                             this.§3!r§ = 0;
                                             while(true)
                                             {
                                                this.§ M§ = 0;
                                                addr51:
                                                while(_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop1;
                                       addr101:
                                    }
                                    §§goto(addr174);
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               while(true)
               {
                  this.§32§ = 1;
                  for(; !_loc1_; collideConnected = true,if(!_loc1_)
                  {
                     return;
                  })
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr51);
               }
               addr69:
            }
         }
         §§goto(addr69);
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            §-!O§ = param1;
            while(true)
            {
               §3!u§ = param2;
               loop1:
               while(true)
               {
                  this.§&!>§.SetV(param3);
                  while(true)
                  {
                     this.§7!+§.SetV(param4);
                     loop3:
                     while(!(_loc14_ && this))
                     {
                        continue loop1;
                        loop5:
                        while(true)
                        {
                           this.§^G§ = §3!u§.GetLocalPoint(param6);
                           if(!(_loc13_ || param1))
                           {
                              continue;
                           }
                           if(!(_loc13_ || param1))
                           {
                              continue loop3;
                           }
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§9!9§ = §-!O§.GetLocalPoint(param5);
                              continue loop5;
                           }
                        }
                        §§push(param5.x);
                        if(_loc13_)
                        {
                           §§push(§§pop() - param3.x);
                           if(!_loc14_)
                           {
                              addr94:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param5.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() - param3.y);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           if(_loc13_)
                           {
                              this.§5%§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                           }
                           §§push(param6.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() - param4.x);
                              if(_loc13_)
                              {
                                 addr139:
                                 §§push(Number(§§pop()));
                              }
                              var _loc10_:* = §§pop();
                              §§push(param6.y);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() - param4.y);
                                 if(!_loc14_)
                                 {
                                    addr150:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!(_loc14_ && param2))
                                 {
                                    this.§3!r§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                    if(!(_loc14_ && param3))
                                    {
                                       this.§32§ = param7;
                                    }
                                 }
                                 §§push(this.§5%§);
                                 if(!_loc14_)
                                 {
                                    §§push(this.§32§);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * this.§3!r§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc14_)
                                    {
                                       addr194:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc12_:* = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!_loc14_)
                                       {
                                          §§push(this.§32§);
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(§§pop() * b2PulleyJoint.§1!"§);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§;J§ = §§pop();
                                    }
                                    do
                                    {
                                       §§push(this);
                                       §§push(_loc12_);
                                       if(!_loc14_)
                                       {
                                          §§push(b2PulleyJoint.§1!"§);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc13_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(this.§32§);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    while(§§pop().§ M§ = §§pop(), !_loc13_);
                                    
                                    return;
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
   }
}
