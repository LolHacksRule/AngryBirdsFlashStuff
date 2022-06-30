package §@^§
{
   import §%]§.*;
   import §,!3§.*;
   import §3'§.*;
   import §?!F§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §14§:Vector.<b2ContactConstraintPoint>;
      
      public var §0! §:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §]z§:b2Mat22;
      
      public var §>f§:b2Mat22;
      
      public var §<!&§:b2Body;
      
      public var §!8§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §;k§:int;
      
      public var §+!`§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.§0! § = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.§]z§ = new b2Mat22();
         this.§>f§ = new b2Mat22();
         super();
         this.§14§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§14§[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}
