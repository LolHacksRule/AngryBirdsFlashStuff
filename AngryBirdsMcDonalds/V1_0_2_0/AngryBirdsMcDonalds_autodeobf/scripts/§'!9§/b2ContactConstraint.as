package §'!9§
{
   import §"U§.*;
   import §3!g§.*;
   import §<!!§.*;
   import §=!X§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §"!T§:Vector.<b2ContactConstraintPoint>;
      
      public var §"!k§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §0!;§:b2Mat22;
      
      public var §%! §:b2Mat22;
      
      public var §+!#§:b2Body;
      
      public var §1!K§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §[3§:int;
      
      public var §>B§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§"!k§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§0!;§ = new b2Mat22();
         this.§%! § = new b2Mat22();
         super();
         this.§"!T§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"!T§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
