package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §9"`§:Vector.<b2ContactConstraintPoint>;
      
      public var §6!I§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §&!M§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §9"P§:b2Body;
      
      public var §continue§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §6!c§:int;
      
      public var §#j§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§6!I§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§&!M§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§9"`§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§9"`§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
