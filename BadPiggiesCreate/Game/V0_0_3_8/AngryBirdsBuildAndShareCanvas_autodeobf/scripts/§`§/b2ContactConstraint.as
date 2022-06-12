package §`§
{
   import §&!n§.*;
   import §8,§.*;
   import §9v§.*;
   import §?!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §,_§:Vector.<b2ContactConstraintPoint>;
      
      public var §@!+§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §9!p§:b2Mat22;
      
      public var §^!F§:b2Mat22;
      
      public var §["%§:b2Body;
      
      public var §`!<§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §5+§:int;
      
      public var §?a§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§@!+§ = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§9!p§ = new b2Mat22();
         this.§^!F§ = new b2Mat22();
         super();
         this.§,_§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,_§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
