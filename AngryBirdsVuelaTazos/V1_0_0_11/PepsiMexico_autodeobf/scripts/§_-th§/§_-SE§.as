package §_-th§
{
   import §_-E6§.b2DistanceJointDef;
   import §_-E6§.b2Joint;
   import §_-E6§.b2JointDef;
   import §_-E6§.b2RevoluteJointDef;
   import §_-E6§.b2WeldJointDef;
   import §_-ST§.§_-fK§;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import flash.geom.Point;
   
   public class §_-SE§
   {
      
      public static const §_-Kx§:uint = 1;
      
      public static const §_-tE§:uint = 2;
      
      public static const §_-F8§:uint = 3;
       
      
      public var type:int;
      
      public var index1:int;
      
      public var index2:int;
      
      public var p1:Point;
      
      public var p2:Point;
      
      public var limit:Boolean;
      
      public var backAndForth:Boolean;
      
      public var motor:Boolean;
      
      public var motorSpeed:Number;
      
      public var lowerLimit:Number;
      
      public var upperLimit:Number;
      
      public var collideConnected:Boolean;
      
      public var maxTorque:Number;
      
      public var §_-Xy§:b2Joint;
      
      public function §_-SE§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-qk§(param1:§_-fK§, param2:§_-fK§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-Kx§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-xZ§ = 4;
               _loc3_.§_-BC§ = 0.5;
               _loc3_.length = §_-Ay§.§_-FI§(param1,param2);
               _loc3_.§_-t1§(param1.§_-Nu§(),param2.§_-Nu§(),param1.§_-Nu§().GetPosition(),param2.§_-Nu§().GetPosition());
               return _loc3_;
            case §_-tE§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-t1§(param1.§_-Nu§(),param2.§_-Nu§(),param1.§_-Nu§().§_-Hj§());
               return _loc4_;
            case §_-F8§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-t1§(param1.§_-Nu§(),param2.§_-Nu§(),param1.§_-Nu§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-fG§ = this.limit;
               _loc5_.§_-HV§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-13§ = this.upperLimit;
               _loc5_.§_-Vw§ = this.lowerLimit;
               _loc5_.§_-ne§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
