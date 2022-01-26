package §43§
{
   import §%!B§.*;
   import §&!B§.*;
   import §[x§.*;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §^!4§:Vector.<b2ContactConstraintPoint>;
      
      public var § 4§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §'!?§:b2Mat22;
      
      public var §5!`§:b2Mat22;
      
      public var §^!<§:b2Body;
      
      public var §!E§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §8!"§:int;
      
      public var §6!+§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§ 4§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§'!?§ = new b2Mat22();
         this.§5!`§ = new b2Mat22();
         super();
         this.§^!4§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^!4§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
