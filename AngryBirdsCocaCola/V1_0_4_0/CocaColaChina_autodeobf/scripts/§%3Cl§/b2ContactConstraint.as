package §<l§
{
   import §&!L§.*;
   import §3f§.*;
   import §7!C§.*;
   import §=!!§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §@!M§:Vector.<b2ContactConstraintPoint>;
      
      public var §'@§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §2!>§:b2Mat22;
      
      public var §"!2§:b2Mat22;
      
      public var §?!!§:b2Body;
      
      public var §`!6§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §!-§:int;
      
      public var §>!B§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§'@§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§2!>§ = new b2Mat22();
         this.§"!2§ = new b2Mat22();
         super();
         this.§@!M§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§@!M§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
