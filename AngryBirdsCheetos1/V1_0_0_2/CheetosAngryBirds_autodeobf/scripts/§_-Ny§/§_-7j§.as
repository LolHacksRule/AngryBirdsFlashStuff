package §_-Ny§
{
   import §_-F2§.b2Vec2;
   import §_-Kz§.§_-c3§;
   import §_-fr§.§_-FX§;
   import §_-ol§.b2DistanceJointDef;
   import §_-ol§.b2Joint;
   import §_-ol§.b2JointDef;
   import §_-ol§.b2RevoluteJointDef;
   import §_-ol§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §_-7j§
   {
      
      public static const §_-gm§:uint = 1;
      
      public static const §_-hk§:uint = 2;
      
      public static const §_-00J§:uint = 3;
       
      
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
      
      public var §_-ib§:b2Joint;
      
      public function §_-7j§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-52§(param1:§_-FX§, param2:§_-FX§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-gm§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-NZ§ = 4;
               _loc3_.§_-EV§ = 0.5;
               _loc3_.length = §_-c3§.§_-DI§(param1,param2);
               _loc3_.§_-M0§(param1.§implements§(),param2.§implements§(),param1.§implements§().GetPosition(),param2.§implements§().GetPosition());
               return _loc3_;
            case §_-hk§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-M0§(param1.§implements§(),param2.§implements§(),param1.§implements§().§_-nS§());
               return _loc4_;
            case §_-00J§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-M0§(param1.§implements§(),param2.§implements§(),param1.§implements§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-sR§ = this.limit;
               _loc5_.§_-zc§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-Ro§ = this.upperLimit;
               _loc5_.§_-0-A§ = this.lowerLimit;
               _loc5_.§_-T-§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
