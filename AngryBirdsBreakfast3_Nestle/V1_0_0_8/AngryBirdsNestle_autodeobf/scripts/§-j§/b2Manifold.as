package §-j§
{
   import §7!F§.*;
   import §[K§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §2!1§:int = 1;
      
      public static const § 2§:int = 2;
      
      public static const §6!A§:int = 4;
       
      
      public var §>!&§:Vector.<b2ManifoldPoint>;
      
      public var §%"5§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5"6§:int;
      
      public var §^"§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§>!&§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>!&§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§%"5§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §&-§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§>!&§[_loc1_] as b2ManifoldPoint).§&-§();
            _loc1_++;
         }
         this.§%"5§.§3S§();
         this.m_localPoint.§3S§();
         this.§5"6§ = 0;
         this.§^"§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§^"§ = param1.§^"§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§>!&§[_loc2_] as b2ManifoldPoint).Set(param1.§>!&§[_loc2_]);
            _loc2_++;
         }
         this.§%"5§.SetV(param1.§%"5§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5"6§ = param1.§5"6§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
