package §_-yz§
{
   import §_-0-K§.§_-FL§;
   import §_-E§.b2DistanceJointDef;
   import §_-E§.b2Joint;
   import §_-E§.b2JointDef;
   import §_-E§.b2RevoluteJointDef;
   import §_-E§.b2WeldJointDef;
   import §_-Fk§.§_-Cb§;
   import §_-Vn§.b2Vec2;
   import flash.geom.Point;
   
   public class §_-wB§
   {
      
      public static const §_-Wv§:uint = 1;
      
      public static const §_-Az§:uint = 2;
      
      public static const §_-wD§:uint = 3;
       
      
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
      
      public var §_-82§:b2Joint;
      
      public function §_-wB§(param1:int, param2:int, param3:int)
      {
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-WL§(param1:§_-Cb§, param2:§_-Cb§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.type)
         {
            case §_-Wv§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.collideConnected;
               _loc3_.§_-R-§ = 4;
               _loc3_.§_-q6§ = 0.5;
               _loc3_.length = §_-FL§.§_-nn§(param1,param2);
               _loc3_.§_-yN§(param1.§_-Zv§(),param2.§_-Zv§(),param1.§_-Zv§().GetPosition(),param2.§_-Zv§().GetPosition());
               return _loc3_;
            case §_-Az§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
               _loc4_.§_-yN§(param1.§_-Zv§(),param2.§_-Zv§(),param1.§_-Zv§().§_-Cs§());
               return _loc4_;
            case §_-wD§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
               _loc5_.§_-yN§(param1.§_-Zv§(),param2.§_-Zv§(),param1.§_-Zv§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
               _loc5_.§_-MB§ = this.limit;
               _loc5_.§_-77§ = this.motor;
               _loc5_.motorSpeed = this.motorSpeed;
               _loc5_.§_-gT§ = this.upperLimit;
               _loc5_.§_-xb§ = this.lowerLimit;
               _loc5_.§_-99§ = this.maxTorque;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
