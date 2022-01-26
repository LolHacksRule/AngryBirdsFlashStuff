package §7S§
{
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §'!Q§:int = 1;
      
      public static const §5!E§:int = 2;
      
      public static const §0H§:int = 4;
       
      
      public var §6!_§:Vector.<b2ManifoldPoint>;
      
      public var §]V§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §@!_§:int;
      
      public var §5f§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§6!_§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§6!_§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§]V§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §9-§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§6!_§[_loc1_] as b2ManifoldPoint).§9-§();
            _loc1_++;
         }
         this.§]V§.§4S§();
         this.m_localPoint.§4S§();
         this.§@!_§ = 0;
         this.§5f§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§5f§ = param1.§5f§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§6!_§[_loc2_] as b2ManifoldPoint).Set(param1.§6!_§[_loc2_]);
            _loc2_++;
         }
         this.§]V§.SetV(param1.§]V§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§@!_§ = param1.§@!_§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
