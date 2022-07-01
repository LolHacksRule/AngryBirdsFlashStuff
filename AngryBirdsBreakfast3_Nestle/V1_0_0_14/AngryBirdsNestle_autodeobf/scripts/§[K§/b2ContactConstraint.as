package §[K§
{
   import §'I§.*;
   import §7!&§.*;
   import §9!Z§.*;
   import §?"'§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^0§:Vector.<b2ContactConstraintPoint>;
      
      public var §2!p§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §`!&§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §'!R§:b2Body;
      
      public var §@V§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<!h§:int;
      
      public var §!"7§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§2!p§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§`!&§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§^0§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^0§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
