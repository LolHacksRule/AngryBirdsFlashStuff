package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-1u§:b2Vec2;
      
      public var §_-3J§:Boolean;
      
      public var §_-AK§:Number;
      
      public var §_-AX§:Number;
      
      public var §_-mY§:Boolean;
      
      public var §_-W-§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-Kz§ = new b2Vec2();
         if(!(_loc1_ && this))
         {
            this.§_-Dq§ = new b2Vec2();
            this.§_-1u§ = new b2Vec2();
            super();
         }
         type = b2Joint.§_-7U§;
         this.§_-1u§.Set(1,0);
         this.§_-3J§ = false;
         this.§_-AK§ = 0;
         this.§_-AX§ = 0;
         if(_loc2_ || _loc1_)
         {
            this.§_-mY§ = false;
            if(!(_loc1_ && _loc1_))
            {
               addr84:
               this.§_-W-§ = 0;
            }
            this.motorSpeed = 0;
            return;
         }
         §§goto(addr84);
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §_-dL§ = param1;
            if(_loc6_)
            {
               §_-h1§ = param2;
               if(!_loc5_)
               {
                  addr33:
                  this.§_-Kz§ = §_-dL§.GetLocalPoint(param3);
                  if(!_loc5_)
                  {
                     §§goto(addr40);
                  }
                  §§goto(addr59);
               }
               addr40:
               this.§_-Dq§ = §_-h1§.GetLocalPoint(param3);
               if(_loc6_ || param1)
               {
                  addr59:
                  this.§_-1u§ = §_-dL§.GetLocalVector(param4);
               }
               return;
            }
         }
         §§goto(addr33);
      }
   }
}
