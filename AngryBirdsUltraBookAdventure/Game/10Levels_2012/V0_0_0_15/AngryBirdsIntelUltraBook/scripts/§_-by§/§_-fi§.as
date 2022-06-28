package §_-by§
{
   import §_-09-§.b2DistanceJointDef;
   import §_-09-§.b2JointDef;
   import §_-09-§.b2PrismaticJointDef;
   import §_-09-§.b2RevoluteJointDef;
   import §_-09-§.b2WeldJointDef;
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-lt§.§_-eZ§;
   import flash.geom.Point;
   
   public class §_-fi§
   {
      
      public static const §_-yD§:uint = 1;
      
      public static const §_-gY§:uint = 2;
      
      public static const §_-N0§:uint = 3;
      
      public static const §_-37§:uint = 4;
      
      public static const §_-09G§:uint = 5;
       
      
      private var §_-kV§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §_-9H§:Boolean;
      
      private var §_-Fd§:Number;
      
      private var §_-Gl§:Number;
      
      private var §_-Lq§:Boolean;
      
      private var §_-oE§:Number;
      
      private var §_-jj§:Boolean;
      
      private var §_-sm§:Boolean;
      
      private var §_-gK§:Number;
      
      private var §_-b7§:Number;
      
      private var §_-0Bq§:Number;
      
      private var §_-0Dr§:Number;
      
      public function §_-fi§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§_-kV§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§_-9H§ = param7;
         this.§_-Fd§ = param8;
         this.§_-Gl§ = param9;
         this.§_-Lq§ = param10;
         this.§_-oE§ = param11;
         this.§_-jj§ = param12;
         this.§_-sm§ = param6;
         this.§_-gK§ = param13;
      }
      
      public function get type() : int
      {
         return this.§_-kV§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §_-Wm§() : Boolean
      {
         return this.§_-9H§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§_-Fd§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§_-Gl§;
      }
      
      public function get §_-5R§() : Boolean
      {
         return this.§_-Lq§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§_-oE§;
      }
      
      public function get §_-01R§() : Boolean
      {
         return this.§_-jj§;
      }
      
      public function get §_-v7§() : Boolean
      {
         return this.§_-sm§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§_-gK§;
      }
      
      public function get axisX() : Number
      {
         return this.§_-b7§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§_-b7§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§_-0Bq§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§_-0Bq§ = param1;
      }
      
      public function get §_-0e§() : Number
      {
         return this.§_-0Dr§;
      }
      
      public function set §_-0e§(param1:Number) : void
      {
         this.§_-0Dr§ = param1;
      }
      
      public function §_-sy§(param1:§_-eZ§, param2:§_-eZ§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§_-kV§)
         {
            case §_-yD§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§_-sm§;
               _loc3_.§true § = 4;
               _loc3_.§_-9r§ = 0.5;
               _loc3_.length = §_-00u§.§_-0g§(param1,param2);
               _loc3_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().GetPosition(),param2.§_-SJ§().GetPosition());
               return _loc3_;
            case §_-gY§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§_-sm§;
               _loc4_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().§_-Hi§());
               return _loc4_;
            case §_-N0§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§_-sm§;
               _loc5_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§_-6W§ = this.§_-9H§;
               _loc5_.§_-1g§ = this.§_-Lq§;
               _loc5_.motorSpeed = this.§_-oE§;
               _loc5_.§_-KH§ = this.§_-Gl§;
               _loc5_.§_-Ch§ = this.§_-Fd§;
               _loc5_.§_-dv§ = this.§_-gK§;
               return _loc5_;
            case §_-37§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§_-sm§;
               _loc6_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().§_-Hi§(),new b2Vec2(this.§_-b7§,this.§_-0Bq§));
               _loc6_.§_-6W§ = !!this.§_-jj§ ? false : Boolean(this.§_-9H§);
               _loc6_.§_-7p§ = this.§_-Fd§;
               _loc6_.§_-1F§ = this.§_-Gl§;
               _loc6_.§_-1g§ = this.§_-Lq§;
               _loc6_.§_-2E§ = this.§_-gK§;
               _loc6_.motorSpeed = this.§_-oE§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
