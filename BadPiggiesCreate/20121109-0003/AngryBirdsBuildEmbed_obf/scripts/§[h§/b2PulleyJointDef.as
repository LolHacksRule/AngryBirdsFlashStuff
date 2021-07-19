package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §5!W§:b2Vec2;
      
      public var §3=§:b2Vec2;
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%;§:Number;
      
      public var §#!B§:Number;
      
      public var §9!J§:Number;
      
      public var §-e§:Number;
      
      public var §6?§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§5!W§ = new b2Vec2();
            if(!(_loc2_ && _loc1_))
            {
               this.§3=§ = new b2Vec2();
               this.§;!1§ = new b2Vec2();
               this.§%?§ = new b2Vec2();
               if(!(_loc2_ && _loc2_))
               {
                  super();
                  addr65:
                  type = b2Joint.§?l§;
                  if(!_loc2_)
                  {
                     this.§5!W§.Set(-1,1);
                     this.§3=§.Set(1,1);
                     this.§;!1§.Set(-1,0);
                     this.§%?§.Set(1,0);
                     if(_loc1_ || _loc2_)
                     {
                        this.§%;§ = 0;
                        if(_loc1_)
                        {
                           this.§#!B§ = 0;
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr127);
                  }
                  addr116:
                  this.§9!J§ = 0;
                  §§goto(addr119);
               }
               addr119:
               this.§-e§ = 0;
               §§goto(addr122);
            }
            §§goto(addr65);
         }
         addr122:
         this.§6?§ = 1;
         if(!_loc2_)
         {
            addr127:
            collideConnected = true;
         }
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §[!i§ = param1;
            §;!K§ = param2;
            if(!_loc13_)
            {
               addr27:
               this.§5!W§.SetV(param3);
               if(!_loc13_)
               {
                  this.§3=§.SetV(param4);
                  this.§;!1§ = §[!i§.GetLocalPoint(param5);
                  if(!_loc13_)
                  {
                     addr44:
                     this.§%?§ = §;!K§.GetLocalPoint(param6);
                  }
                  §§push(param5.x);
                  if(!(_loc13_ && param2))
                  {
                     §§push(§§pop() - param3.x);
                     if(!(_loc13_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(param5.y);
                  if(!_loc13_)
                  {
                     §§push(§§pop() - param3.y);
                     if(_loc14_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  if(_loc14_)
                  {
                     this.§%;§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                  }
                  §§push(param6.x);
                  if(!_loc13_)
                  {
                     §§push(§§pop() - param4.x);
                     if(!_loc13_)
                     {
                        addr108:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param6.y);
                     if(_loc14_)
                     {
                        §§push(§§pop() - param4.y);
                        if(_loc14_ || param2)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc11_:* = §§pop();
                     if(!(_loc13_ && param3))
                     {
                        this.§9!J§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                        if(_loc14_ || param3)
                        {
                           addr161:
                           this.§6?§ = param7;
                        }
                        §§push(this.§%;§);
                        if(_loc14_ || param1)
                        {
                           §§push(this.§6?§);
                           if(_loc14_ || param2)
                           {
                              §§push(§§pop() * this.§9!J§);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc14_ || param2)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc12_:* = §§pop();
                        if(!(_loc13_ && param3))
                        {
                           §§push(this);
                           §§push(_loc12_);
                           if(_loc14_ || param3)
                           {
                              §§push(this.§6?§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() * b2PulleyJoint.§#t§);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§#!B§ = §§pop();
                           if(_loc14_ || param2)
                           {
                              addr237:
                              §§push(this);
                              §§push(_loc12_);
                              if(!_loc13_)
                              {
                                 §§push(b2PulleyJoint.§#t§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ || this)
                                    {
                                       addr255:
                                       §§push(§§pop() / this.§6?§);
                                    }
                                    §§pop().§-e§ = §§pop();
                                    §§goto(addr257);
                                 }
                              }
                              §§goto(addr255);
                           }
                           addr257:
                           return;
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr27);
      }
   }
}
