package §1#]§
{
   import §4$E§.*;
   import §?!C§.*;
   import §?N§.*;
   import §@!S§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §3#Q§:Vector.<b2ContactConstraintPoint>;
      
      public var §1$<§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §6#T§:b2Mat22;
      
      public var §^_§:b2Mat22;
      
      public var §;#X§:b2Body;
      
      public var §`7§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §^! §:int;
      
      public var §>#@§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§1$<§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§6#T§ = new b2Mat22();
         this.§^_§ = new b2Mat22();
         super();
         this.§3#Q§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§3#Q§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
