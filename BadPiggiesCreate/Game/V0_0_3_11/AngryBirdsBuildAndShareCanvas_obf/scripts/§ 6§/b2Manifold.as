package § 6§
{
   import §+L§.*;
   import §^+§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9T§:int = 1;
      
      public static const §%q§:int = 2;
      
      public static const §;"-§:int = 4;
       
      
      public var §;r§:Vector.<b2ManifoldPoint>;
      
      public var §2F§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §7!S§:int;
      
      public var §7i§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§;r§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;r§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§2F§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §^m§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;r§[_loc1_] as b2ManifoldPoint).§^m§();
            _loc1_++;
         }
         this.§2F§.§>!!§();
         this.m_localPoint.§>!!§();
         this.§7!S§ = 0;
         this.§7i§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§7i§ = param1.§7i§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;r§[_loc2_] as b2ManifoldPoint).Set(param1.§;r§[_loc2_]);
            _loc2_++;
         }
         this.§2F§.SetV(param1.§2F§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§7!S§ = param1.§7!S§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
