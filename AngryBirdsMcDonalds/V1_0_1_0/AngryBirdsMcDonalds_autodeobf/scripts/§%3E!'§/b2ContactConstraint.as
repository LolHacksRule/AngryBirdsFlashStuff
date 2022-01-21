package §>!'§
{
   import §!R§.*;
   import §1B§.*;
   import §9i§.*;
   import §]7§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §,f§:Vector.<b2ContactConstraintPoint>;
      
      public var §5!;§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §^! §:b2Mat22;
      
      public var §7s§:b2Mat22;
      
      public var §-6§:b2Body;
      
      public var §?w§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §50§:int;
      
      public var §'l§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§5!;§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§^! § = new b2Mat22();
         this.§7s§ = new b2Mat22();
         super();
         this.§,f§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,f§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
