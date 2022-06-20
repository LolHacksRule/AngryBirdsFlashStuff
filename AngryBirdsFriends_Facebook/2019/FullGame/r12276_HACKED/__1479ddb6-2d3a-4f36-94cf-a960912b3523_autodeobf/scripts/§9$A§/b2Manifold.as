package §9$A§
{
   import §1#F§.*;
   import §6!R§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §8"W§:int = 1;
      
      public static const §]"d§:int = 2;
      
      public static const §3w§:int = 4;
       
      
      public var §7#K§:Vector.<b2ManifoldPoint>;
      
      public var §]"§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var § "u§:int;
      
      public var §?#Z§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§7#K§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7#K§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§]"§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §14§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7#K§[_loc1_] as b2ManifoldPoint).§14§();
            _loc1_++;
         }
         this.§]"§.§%"N§();
         this.m_localPoint.§%"N§();
         this.§ "u§ = 0;
         this.§?#Z§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§?#Z§ = param1.§?#Z§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7#K§[_loc2_] as b2ManifoldPoint).Set(param1.§7#K§[_loc2_]);
            _loc2_++;
         }
         this.§]"§.SetV(param1.§]"§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§ "u§ = param1.§ "u§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
