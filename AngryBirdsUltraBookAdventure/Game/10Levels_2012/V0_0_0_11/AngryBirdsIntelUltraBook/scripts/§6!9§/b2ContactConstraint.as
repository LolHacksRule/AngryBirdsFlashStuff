package §6!9§
{
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §]=§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §5o§:Vector.<b2ContactConstraintPoint>;
      
      public var §>v§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §48§:b2Mat22;
      
      public var §0"§:b2Mat22;
      
      public var §^!G§:b2Body;
      
      public var §-z§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<!8§:int;
      
      public var § l§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§>v§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§48§ = new b2Mat22();
         this.§0"§ = new b2Mat22();
         super();
         this.§5o§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§5o§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
