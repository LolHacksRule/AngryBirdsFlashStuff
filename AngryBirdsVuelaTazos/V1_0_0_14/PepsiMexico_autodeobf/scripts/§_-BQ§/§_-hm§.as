package §_-BQ§
{
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-yw§;
   import §_-bt§.b2DistanceJointDef;
   import §_-bt§.b2Joint;
   import §_-bt§.b2JointDef;
   import §_-bt§.b2RevoluteJointDef;
   import §_-bt§.b2WeldJointDef;
   import §_-mj§.§_-GI§;
   import flash.geom.Point;
   
   public class §_-hm§
   {
      
      public static const §_-2Z§:uint = 1;
      
      public static const §_-sG§:uint = 2;
      
      public static const §_-GL§:uint = 3;
       
      
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
      
      public var §_-F9§:b2Joint;
      
      public function §_-hm§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-0p§(param1:§_-GI§, param2:§_-GI§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-2Z§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-3I§ = 4;
               _loc3_.§_-wr§ = 0.5;
               _loc3_.length = §_-yw§.§_-wj§(param1,param2);
               _loc3_.§_-Vy§(param1.§_-oR§(),param2.§_-oR§(),param1.§_-oR§().GetPosition(),param2.§_-oR§().GetPosition());
               return _loc3_;
            case §_-sG§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-Vy§(param1.§_-oR§(),param2.§_-oR§(),param1.§_-oR§().§_-hN§());
               return _loc4_;
            case §_-GL§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-Vy§(param1.§_-oR§(),param2.§_-oR§(),param1.§_-oR§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-Mf§ = this.limit;
               _loc5_.§_-So§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-DZ§ = this.upperLimit;
               _loc5_.§_-mD§ = this.lowerLimit;
               _loc5_.§_-uq§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
