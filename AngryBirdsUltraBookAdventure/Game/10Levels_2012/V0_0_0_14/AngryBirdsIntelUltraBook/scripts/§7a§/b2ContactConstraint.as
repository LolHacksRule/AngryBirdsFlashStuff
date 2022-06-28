package §7a§
{
   import § D§.*;
   import §&!-§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §@a§:Vector.<b2ContactConstraintPoint>;
      
      public var §^@§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>!H§:b2Mat22;
      
      public var §@"§:b2Mat22;
      
      public var §-!O§:b2Body;
      
      public var §3!u§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §6Y§:int;
      
      public var §<I§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§^@§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>!H§ = new b2Mat22();
         this.§@"§ = new b2Mat22();
         super();
         this.§@a§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§@a§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
