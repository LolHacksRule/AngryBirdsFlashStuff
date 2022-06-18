package §7$§
{
   import §#,§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §7,§:int = 1;
      
      public static const §5!]§:int = 2;
      
      public static const §5!H§:int = 4;
       
      
      public var §6!"§:Vector.<b2ManifoldPoint>;
      
      public var § R§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §%V§:int;
      
      public var §<!Y§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§6!"§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§6!"§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§ R§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §[]§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§6!"§[_loc1_] as b2ManifoldPoint).§[]§();
            _loc1_++;
         }
         this.§ R§.§0&§();
         this.m_localPoint.§0&§();
         this.§%V§ = 0;
         this.§<!Y§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§<!Y§ = param1.§<!Y§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§6!"§[_loc2_] as b2ManifoldPoint).Set(param1.§6!"§[_loc2_]);
            _loc2_++;
         }
         this.§ R§.SetV(param1.§ R§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§%V§ = param1.§%V§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
