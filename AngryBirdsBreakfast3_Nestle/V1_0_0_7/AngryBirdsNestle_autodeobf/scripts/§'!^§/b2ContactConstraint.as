package §'!^§
{
   import §!!o§.*;
   import §!r§.*;
   import §-!2§.*;
   import §0!j§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=",§:Vector.<b2ContactConstraintPoint>;
      
      public var §?"4§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §@!§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §,!K§:b2Body;
      
      public var §6n§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §>!h§:int;
      
      public var §;!i§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§?"4§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§@!§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§=",§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§=",§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
