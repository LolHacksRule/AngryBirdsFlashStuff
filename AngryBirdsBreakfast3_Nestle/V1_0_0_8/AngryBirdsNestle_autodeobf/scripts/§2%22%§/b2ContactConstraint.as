package §2"%§
{
   import §-j§.*;
   import §7!F§.*;
   import §=!c§.*;
   import §[K§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §0!G§:Vector.<b2ContactConstraintPoint>;
      
      public var §,F§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §1[§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §%!T§:b2Body;
      
      public var §,d§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §?@§:int;
      
      public var §1w§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§,F§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§1[§ = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.§0!G§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§0!G§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
