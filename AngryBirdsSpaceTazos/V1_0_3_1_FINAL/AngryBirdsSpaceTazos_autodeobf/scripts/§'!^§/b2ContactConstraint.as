package §'!^§
{
   import §8K§.*;
   import §;`§.*;
   import §>!m§.*;
   import §[!f§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §1!l§:Vector.<b2ContactConstraintPoint>;
      
      public var §"`§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §+w§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §>!&§:b2Body;
      
      public var §^!r§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §8"-§:int;
      
      public var §8!O§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§"`§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§+w§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§1!l§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§1!l§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
