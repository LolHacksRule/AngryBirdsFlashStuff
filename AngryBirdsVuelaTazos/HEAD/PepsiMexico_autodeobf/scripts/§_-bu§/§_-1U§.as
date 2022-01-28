package §_-bu§
{
   import §_-Di§.§_-ix§;
   import §_-bA§.b2Vec2;
   import §_-tW§.§_-lx§;
   import §_-zP§.b2DistanceJointDef;
   import §_-zP§.b2Joint;
   import §_-zP§.b2JointDef;
   import §_-zP§.b2RevoluteJointDef;
   import §_-zP§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §_-1U§
   {
      
      public static const §_-dp§:uint = 1;
      
      public static const §_-iA§:uint = 2;
      
      public static const §_-9P§:uint = 3;
       
      
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
      
      public var §_-zC§:b2Joint;
      
      public function §_-1U§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-zJ§(param1:§_-lx§, param2:§_-lx§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-dp§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-4J§ = 4;
               _loc3_.§_-ZH§ = 0.5;
               _loc3_.length = §_-ix§.§_-iB§(param1,param2);
               _loc3_.§_-95§(param1.§_-UF§(),param2.§_-UF§(),param1.§_-UF§().GetPosition(),param2.§_-UF§().GetPosition());
               return _loc3_;
            case §_-iA§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-95§(param1.§_-UF§(),param2.§_-UF§(),param1.§_-UF§().§_-GX§());
               return _loc4_;
            case §_-9P§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-95§(param1.§_-UF§(),param2.§_-UF§(),param1.§_-UF§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-LR§ = this.limit;
               _loc5_.§_-FI§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-4o§ = this.upperLimit;
               _loc5_.§_-nU§ = this.lowerLimit;
               _loc5_.§_-bd§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
