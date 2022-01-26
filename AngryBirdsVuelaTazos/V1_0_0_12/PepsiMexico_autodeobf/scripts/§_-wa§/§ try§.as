package §_-wa§
{
   import §_-9z§.b2Vec2;
   import §_-Ox§.b2DistanceJointDef;
   import §_-Ox§.b2Joint;
   import §_-Ox§.b2JointDef;
   import §_-Ox§.b2RevoluteJointDef;
   import §_-Ox§.b2WeldJointDef;
   import §_-rp§.§_-c5§;
   import §_-u§.§_-5Q§;
   import flash.geom.Point;
   
   public class § try§
   {
      
      public static const §_-8e§:uint = 1;
      
      public static const §_-mn§:uint = 2;
      
      public static const §_-8C§:uint = 3;
       
      
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
      
      public var §_-Cg§:b2Joint;
      
      public function § try§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-oi§(param1:§_-5Q§, param2:§_-5Q§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-8e§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-Dr§ = 4;
               _loc3_.§_-Dj§ = 0.5;
               _loc3_.length = §_-c5§.§_-vY§(param1,param2);
               _loc3_.§_-fn§(param1.§_-t9§(),param2.§_-t9§(),param1.§_-t9§().GetPosition(),param2.§_-t9§().GetPosition());
               return _loc3_;
            case §_-mn§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-fn§(param1.§_-t9§(),param2.§_-t9§(),param1.§_-t9§().§_-s8§());
               return _loc4_;
            case §_-8C§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-fn§(param1.§_-t9§(),param2.§_-t9§(),param1.§_-t9§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-UE§ = this.limit;
               _loc5_.§_-i3§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-aA§ = this.upperLimit;
               _loc5_.§_-Rf§ = this.lowerLimit;
               _loc5_.§_-mF§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
