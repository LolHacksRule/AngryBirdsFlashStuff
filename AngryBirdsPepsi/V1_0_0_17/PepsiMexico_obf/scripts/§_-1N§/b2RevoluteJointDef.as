package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-Lv§:Number;
      
      public var §_-3J§:Boolean;
      
      public var §_-Mn§:Number;
      
      public var §_-VQ§:Number;
      
      public var §_-mY§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-fo§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-Kz§ = new b2Vec2();
            this.§_-Dq§ = new b2Vec2();
            if(_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr40);
         }
         addr31:
         super();
         if(!(_loc1_ && this))
         {
            addr40:
            type = b2Joint.e_revoluteJoint;
            if(_loc2_ || _loc1_)
            {
               §§goto(addr58);
            }
            §§goto(addr109);
         }
         addr58:
         this.§_-Kz§.Set(0,0);
         this.§_-Dq§.Set(0,0);
         if(!(_loc1_ && this))
         {
            this.§_-Lv§ = 0;
         }
         this.§_-Mn§ = 0;
         this.§_-VQ§ = 0;
         if(_loc2_ || this)
         {
            this.§_-fo§ = 0;
            this.motorSpeed = 0;
            if(_loc2_)
            {
               this.§_-3J§ = false;
               addr109:
               this.§_-mY§ = false;
            }
            §§goto(addr109);
         }
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §_-dL§ = param1;
            if(_loc5_)
            {
               §_-h1§ = param2;
               if(_loc4_ && this)
               {
               }
               §§goto(addr69);
            }
            this.§_-Kz§ = §_-dL§.GetLocalPoint(param3);
            if(!(_loc4_ && param3))
            {
               this.§_-Dq§ = §_-h1§.GetLocalPoint(param3);
               if(_loc5_)
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr69);
         }
         addr69:
         this.§_-Lv§ = §_-h1§.GetAngle() - §_-dL§.GetAngle();
      }
   }
}
