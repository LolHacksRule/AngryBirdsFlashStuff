package §,u§
{
   import §-!7§.§@m§;
   import §3g§.b2DistanceJointDef;
   import §3g§.b2Joint;
   import §3g§.b2JointDef;
   import §3g§.b2RevoluteJointDef;
   import §3g§.b2WeldJointDef;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import flash.geom.Point;
   
   public class §]!M§
   {
      
      public static const §`c§:uint = 1;
      
      public static const §'S§:uint = 2;
      
      public static const §7W§:uint = 3;
       
      
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
      
      public var set:b2Joint;
      
      public function §]!M§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §class§(param1:§@m§, param2:§@m§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §`c§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§5X§ = 4;
               _loc3_.§@N§ = 0.5;
               _loc3_.length = §9!%§.§86§(param1,param2);
               _loc3_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().GetPosition(),param2.§`!#§().GetPosition());
               return _loc3_;
            case §'S§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().§05§());
               return _loc4_;
            case §7W§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§9[§ = this.limit;
               _loc5_.§<S§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§33§ = this.upperLimit;
               _loc5_.§4q§ = this.lowerLimit;
               _loc5_.§6[§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
