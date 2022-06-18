package §&U§
{
   import §#,§.*;
   import §4]§.*;
   import §7$§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §?"§:Vector.<b2ContactConstraintPoint>;
      
      public var §@!K§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>!N§:b2Mat22;
      
      public var §]0§:b2Mat22;
      
      public var §,w§:b2Body;
      
      public var §2h§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var § j§:int;
      
      public var §,+§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§@!K§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>!N§ = new b2Mat22();
         this.§]0§ = new b2Mat22();
         super();
         this.§?"§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§?"§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
