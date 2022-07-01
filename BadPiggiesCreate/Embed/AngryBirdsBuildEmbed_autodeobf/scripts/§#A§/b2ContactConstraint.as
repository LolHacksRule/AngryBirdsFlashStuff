package §#A§
{
   import § !t§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>!@§:Vector.<b2ContactConstraintPoint>;
      
      public var §>v§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §<y§:b2Mat22;
      
      public var §8!R§:b2Mat22;
      
      public var §[!i§:b2Body;
      
      public var §;!K§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §+6§:int;
      
      public var §3!D§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§>v§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§<y§ = new b2Mat22();
         this.§8!R§ = new b2Mat22();
         super();
         this.§>!@§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>!@§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
