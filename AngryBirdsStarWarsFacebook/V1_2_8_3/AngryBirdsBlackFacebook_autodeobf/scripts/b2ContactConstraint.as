package
{
   import §7!I§.*;
   import §7"A§.*;
   import §>"_§.*;
   import §>r§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §6"u§:Vector.<b2ContactConstraintPoint>;
      
      public var §&!Z§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §%!4§:b2Mat22;
      
      public var §2#§:b2Mat22;
      
      public var §5"I§:b2Body;
      
      public var §[!K§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §`#"§:int;
      
      public var §-,§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§&!Z§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§%!4§ = new b2Mat22();
         this.§2#§ = new b2Mat22();
         super();
         this.§6"u§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§6"u§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
