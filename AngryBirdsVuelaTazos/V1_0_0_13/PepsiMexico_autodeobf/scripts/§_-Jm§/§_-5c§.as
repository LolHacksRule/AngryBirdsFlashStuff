package §_-Jm§
{
   import §_-FQ§.§_-7W§;
   import §_-Xd§.§_-sW§;
   import §_-gy§.b2DistanceJointDef;
   import §_-gy§.b2Joint;
   import §_-gy§.b2JointDef;
   import §_-gy§.b2RevoluteJointDef;
   import §_-gy§.b2WeldJointDef;
   import flash.geom.Point;
   import §var§.b2Vec2;
   
   public class §_-5c§
   {
      
      public static const §_-UK§:uint = 1;
      
      public static const §_-mm§:uint = 2;
      
      public static const §_-4O§:uint = 3;
       
      
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
      
      public var §_-Pr§:b2Joint;
      
      public function §_-5c§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-bV§(param1:§_-sW§, param2:§_-sW§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-UK§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-DV§ = 4;
               _loc3_.§_-qi§ = 0.5;
               _loc3_.length = §_-7W§.§_-DZ§(param1,param2);
               _loc3_.§_-PU§(param1.§_-vv§(),param2.§_-vv§(),param1.§_-vv§().GetPosition(),param2.§_-vv§().GetPosition());
               return _loc3_;
            case §_-mm§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-PU§(param1.§_-vv§(),param2.§_-vv§(),param1.§_-vv§().§_-b2§());
               return _loc4_;
            case §_-4O§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-PU§(param1.§_-vv§(),param2.§_-vv§(),param1.§_-vv§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-yk§ = this.limit;
               _loc5_.§_-ff§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-UP§ = this.upperLimit;
               _loc5_.§_-ct§ = this.lowerLimit;
               _loc5_.§_-1C§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
