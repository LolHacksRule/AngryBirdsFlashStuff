package §@!a§
{
   import §4x§.*;
   import §8!I§.*;
   import §<"§.*;
   import §=i§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §#I§:Vector.<b2ContactConstraintPoint>;
      
      public var §[!T§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §'!D§:b2Mat22;
      
      public var §[]§:b2Mat22;
      
      public var §;0§:b2Body;
      
      public var §+4§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §@!b§:int;
      
      public var §42§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§[!T§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§'!D§ = new b2Mat22();
         this.§[]§ = new b2Mat22();
         super();
         this.§#I§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§#I§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
