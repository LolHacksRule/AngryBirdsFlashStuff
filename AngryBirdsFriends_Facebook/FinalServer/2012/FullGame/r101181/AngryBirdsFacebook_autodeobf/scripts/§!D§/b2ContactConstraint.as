package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §+V§:Vector.<b2ContactConstraintPoint>;
      
      public var §=!,§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?`§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §!!v§:b2Body;
      
      public var §'!4§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<?§:int;
      
      public var §;!N§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§=!,§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§?`§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§+V§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§+V§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
