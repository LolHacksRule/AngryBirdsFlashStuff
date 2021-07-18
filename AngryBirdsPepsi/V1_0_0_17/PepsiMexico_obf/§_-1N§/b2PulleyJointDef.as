package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §_-v1§:b2Vec2;
      
      public var §_-xj§:b2Vec2;
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-gn§:Number;
      
      public var §_-47§:Number;
      
      public var §_-s6§:Number;
      
      public var §_-B8§:Number;
      
      public var §_-Qg§:Number;
      
      public function b2PulleyJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-v1§ = new b2Vec2();
         if(!_loc1_)
         {
            this.§_-xj§ = new b2Vec2();
            this.§_-Kz§ = new b2Vec2();
            if(!(_loc1_ && _loc2_))
            {
               this.§_-Dq§ = new b2Vec2();
               if(!_loc1_)
               {
                  super();
                  if(!(_loc1_ && _loc2_))
                  {
                     type = b2Joint.§_-45§;
                     this.§_-v1§.Set(-1,1);
                     if(_loc2_ || _loc1_)
                     {
                        this.§_-xj§.Set(1,1);
                        this.§_-Kz§.Set(-1,0);
                        if(!_loc1_)
                        {
                           addr85:
                           this.§_-Dq§.Set(1,0);
                           if(!_loc1_)
                           {
                              addr92:
                              this.§_-gn§ = 0;
                              if(_loc1_)
                              {
                              }
                              §§goto(addr120);
                           }
                           this.§_-47§ = 0;
                           if(!(_loc1_ && _loc1_))
                           {
                              this.§_-s6§ = 0;
                           }
                           this.§_-B8§ = 0;
                           addr120:
                           this.§_-Qg§ = 1;
                           if(_loc2_)
                           {
                              addr125:
                              collideConnected = true;
                           }
                           §§goto(addr128);
                        }
                        addr128:
                        return;
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr125);
            }
            §§goto(addr85);
         }
         §§goto(addr92);
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-v1§.SetV(param3);
         this.§_-xj§.SetV(param4);
         if(!_loc13_)
         {
            this.§_-Kz§ = §_-dL§.GetLocalPoint(param5);
            if(_loc14_)
            {
               this.§_-Dq§ = §_-h1§.GetLocalPoint(param6);
            }
         }
         §§push(param5.x);
         if(!_loc13_)
         {
            §§push(§§pop() - param3.x);
            if(!(_loc13_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         §§push(param5.y);
         if(!(_loc13_ && param3))
         {
            §§push(§§pop() - param3.y);
            if(_loc14_ || param3)
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc9_:* = §§pop();
            if(_loc14_)
            {
               this.§_-gn§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
            }
            §§push(param6.x);
            if(_loc14_)
            {
               §§push(§§pop() - param4.x);
               if(_loc14_ || param2)
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               var _loc10_:* = §§pop();
               §§push(param6.y);
               if(_loc14_)
               {
                  §§push(§§pop() - param4.y);
                  if(!(_loc13_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc11_:* = §§pop();
               if(!_loc13_)
               {
                  this.§_-s6§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                  if(!_loc13_)
                  {
                     this.§_-Qg§ = param7;
                  }
               }
               §§push(this.§_-gn§);
               if(!(_loc13_ && param2))
               {
                  §§push(this.§_-Qg§);
                  if(!(_loc13_ && param1))
                  {
                     §§push(§§pop() * this.§_-s6§);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc14_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc12_:* = §§pop();
               if(_loc14_)
               {
                  §§push(this);
                  §§push(_loc12_);
                  if(_loc14_)
                  {
                     §§push(this.§_-Qg§);
                     if(_loc14_ || this)
                     {
                        §§push(§§pop() * b2PulleyJoint.§_-gg§);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§_-47§ = §§pop();
                  if(_loc14_)
                  {
                     §§push(this);
                     §§push(_loc12_);
                     if(!(_loc13_ && param2))
                     {
                        §§push(b2PulleyJoint.§_-gg§);
                        if(_loc14_ || param3)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc14_ || param3)
                           {
                              addr237:
                              §§push(§§pop() / this.§_-Qg§);
                           }
                           §§pop().§_-B8§ = §§pop();
                           §§goto(addr239);
                        }
                     }
                     §§goto(addr237);
                  }
               }
               addr239:
               return;
            }
            §§goto(addr106);
         }
         §§goto(addr77);
      }
   }
}
