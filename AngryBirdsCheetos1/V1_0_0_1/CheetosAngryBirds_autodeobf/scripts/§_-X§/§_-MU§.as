package §_-X§
{
   import §_-2r§.§_-sn§;
   import §_-bl§.§_-Ie§;
   import §_-cP§.b2Vec2;
   import §const§.b2DistanceJointDef;
   import §const§.b2Joint;
   import §const§.b2JointDef;
   import §const§.b2RevoluteJointDef;
   import §const§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §_-MU§
   {
      
      public static const §_-iM§:uint = 1;
      
      public static const §_-7Z§:uint = 2;
      
      public static const §_-XY§:uint = 3;
       
      
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
      
      public var §_-5t§:b2Joint;
      
      public function §_-MU§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-zH§(param1:§_-Ie§, param2:§_-Ie§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-iM§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-ek§ = 4;
               _loc3_.§_-DN§ = 0.5;
               _loc3_.length = §_-sn§.§_-Xf§(param1,param2);
               _loc3_.§_-Qz§(param1.§_-BO§(),param2.§_-BO§(),param1.§_-BO§().GetPosition(),param2.§_-BO§().GetPosition());
               return _loc3_;
            case §_-7Z§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-Qz§(param1.§_-BO§(),param2.§_-BO§(),param1.§_-BO§().§_-t8§());
               return _loc4_;
            case §_-XY§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-Qz§(param1.§_-BO§(),param2.§_-BO§(),param1.§_-BO§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-XG§ = this.limit;
               _loc5_.§_-uC§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-uu§ = this.upperLimit;
               _loc5_.§ in§ = this.lowerLimit;
               _loc5_.§_-dA§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
