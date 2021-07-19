package §_-IG§
{
   import §_-1N§.b2DistanceJointDef;
   import §_-1N§.b2Joint;
   import §_-1N§.b2JointDef;
   import §_-1N§.b2RevoluteJointDef;
   import §_-1N§.b2WeldJointDef;
   import §_-CR§.§_-Dz§;
   import §_-Ja§.b2Vec2;
   import §_-OJ§.§_-tL§;
   import flash.geom.Point;
   
   public class §_-Hj§
   {
      
      public static const §_-GZ§:uint = 1;
      
      public static const §_-KY§:uint = 2;
      
      public static const §_-3H§:uint = 3;
       
      
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
      
      public var §_-WU§:b2Joint;
      
      public function §_-Hj§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-tB§(param1:§_-Dz§, param2:§_-Dz§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-GZ§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-Kf§ = 4;
               _loc3_.§_-Co§ = 0.5;
               _loc3_.length = §_-tL§.§_-2L§(param1,param2);
               _loc3_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().GetPosition(),param2.§_-zq§().GetPosition());
               return _loc3_;
            case §_-KY§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().§_-lC§());
               return _loc4_;
            case §_-3H§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-3J§ = this.limit;
               _loc5_.§_-mY§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-VQ§ = this.upperLimit;
               _loc5_.§_-Mn§ = this.lowerLimit;
               _loc5_.§_-fo§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
