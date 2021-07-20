package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var length:Number;
      
      public var §_-Kf§:Number;
      
      public var §_-Co§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Kz§ = new b2Vec2();
            this.§_-Dq§ = new b2Vec2();
            if(_loc2_ || _loc2_)
            {
               super();
               type = b2Joint.§_-wG§;
               this.length = 1;
               this.§_-Kf§ = 0;
               this.§_-Co§ = 0;
            }
         }
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            §_-dL§ = param1;
            if(!(_loc8_ && param1))
            {
               addr30:
               §_-h1§ = param2;
               if(_loc7_)
               {
                  this.§_-Kz§.SetV(§_-dL§.GetLocalPoint(param3));
                  if(_loc7_)
                  {
                     addr43:
                     this.§_-Dq§.SetV(§_-h1§.GetLocalPoint(param4));
                  }
               }
               §§push(param4.x);
               if(_loc7_)
               {
                  §§push(§§pop() - param3.x);
                  if(_loc7_ || this)
                  {
                     addr70:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() - param3.y);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc7_ || param3)
                  {
                     this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                     if(_loc7_)
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr125);
                  }
                  addr108:
                  this.§_-Kf§ = 0;
                  if(_loc7_ || param2)
                  {
                     addr125:
                     this.§_-Co§ = 0;
                  }
                  return;
               }
               §§goto(addr70);
            }
            §§goto(addr43);
         }
         §§goto(addr30);
      }
   }
}
