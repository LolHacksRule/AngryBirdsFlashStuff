package §=_§
{
   import § !_§.*;
   import §+&§.*;
   import §^!Z§.*;
   import §^t§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §]i§:Vector.<b2ContactConstraintPoint>;
      
      public var §;]§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §]! §:b2Mat22;
      
      public var §>D§:b2Mat22;
      
      public var §[!N§:b2Body;
      
      public var §0!'§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §use§:int;
      
      public var §@5§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§;]§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§]! § = new b2Mat22();
         this.§>D§ = new b2Mat22();
         super();
         this.§]i§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§]i§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
