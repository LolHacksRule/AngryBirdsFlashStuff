package §+W§
{
   import § !%§.*;
   import §,!k§.*;
   import §6f§.*;
   import §;'§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §4^§:Vector.<b2ContactConstraintPoint>;
      
      public var §,O§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §6!s§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §>q§:b2Body;
      
      public var §6!,§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §-o§:int;
      
      public var §"0§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§,O§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§6!s§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§4^§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§4^§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
