package §5t§
{
   import §!;§.*;
   import §,v§.*;
   import §-!A§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §2!O§:Vector.<b2ContactConstraintPoint>;
      
      public var §>!?§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §=!s§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §@!`§:b2Body;
      
      public var §@$§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §'!p§:int;
      
      public var §,Z§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§>!?§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§=!s§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§2!O§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§2!O§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
