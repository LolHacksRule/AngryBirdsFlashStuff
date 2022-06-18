package §'z§
{
   import §"v§.*;
   import §&i§.*;
   import §5!K§.*;
   import §]M§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §?v§:Vector.<b2ContactConstraintPoint>;
      
      public var §'w§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §6!A§:b2Mat22;
      
      public var §!!]§:b2Mat22;
      
      public var §1I§:b2Body;
      
      public var §!T§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §@!K§:int;
      
      public var §<!<§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§'w§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§6!A§ = new b2Mat22();
         this.§!!]§ = new b2Mat22();
         super();
         this.§?v§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§?v§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
