package §>s§
{
   import §1%§.*;
   import §8!H§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §&!3§:Vector.<b2ContactConstraintPoint>;
      
      public var §!!3§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §,!§:b2Mat22;
      
      public var §^7§:b2Mat22;
      
      public var §7!K§:b2Body;
      
      public var §'P§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §[![§:int;
      
      public var §-%§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§!!3§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§,!§ = new b2Mat22();
         this.§^7§ = new b2Mat22();
         super();
         this.§&!3§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§&!3§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
