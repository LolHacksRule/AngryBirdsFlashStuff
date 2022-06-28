package §4]§
{
   import §#I§.*;
   import §&H§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §+"§:Vector.<b2ContactConstraintPoint>;
      
      public var §8!9§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>!o§:b2Mat22;
      
      public var §+!K§:b2Mat22;
      
      public var §19§:b2Body;
      
      public var §"@§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §%!3§:int;
      
      public var §^#§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§8!9§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§>!o§ = new b2Mat22();
         this.§+!K§ = new b2Mat22();
         super();
         this.§+"§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§+"§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
