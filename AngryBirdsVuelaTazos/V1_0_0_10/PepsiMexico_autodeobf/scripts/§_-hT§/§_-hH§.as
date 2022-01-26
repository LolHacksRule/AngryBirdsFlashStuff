package §_-hT§
{
   import §_-0y§.§_-B3§;
   import §_-Rb§.b2DistanceJointDef;
   import §_-Rb§.b2Joint;
   import §_-Rb§.b2JointDef;
   import §_-Rb§.b2RevoluteJointDef;
   import §_-Rb§.b2WeldJointDef;
   import §_-Sp§.§_-JP§;
   import §_-Zl§.b2Vec2;
   import flash.geom.Point;
   
   public class §_-hH§
   {
      
      public static const §_-sI§:uint = 1;
      
      public static const §_-0Q§:uint = 2;
      
      public static const §_-8y§:uint = 3;
       
      
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
      
      public var §_-FI§:b2Joint;
      
      public function §_-hH§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-PF§(param1:§_-JP§, param2:§_-JP§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-sI§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-8R§ = 4;
               _loc3_.§_-XX§ = 0.5;
               _loc3_.length = §_-B3§.§_-io§(param1,param2);
               _loc3_.§_-E0§(param1.§_-dZ§(),param2.§_-dZ§(),param1.§_-dZ§().GetPosition(),param2.§_-dZ§().GetPosition());
               return _loc3_;
            case §_-0Q§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-E0§(param1.§_-dZ§(),param2.§_-dZ§(),param1.§_-dZ§().§_-RE§());
               return _loc4_;
            case §_-8y§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-E0§(param1.§_-dZ§(),param2.§_-dZ§(),param1.§_-dZ§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-Qa§ = this.limit;
               _loc5_.§_-ff§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-Em§ = this.upperLimit;
               _loc5_.§_-DK§ = this.lowerLimit;
               _loc5_.§_-Sx§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
