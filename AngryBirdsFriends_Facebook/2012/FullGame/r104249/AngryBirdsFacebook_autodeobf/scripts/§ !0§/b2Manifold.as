package § !0§
{
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>O§:int = 1;
      
      public static const §=F§:int = 2;
      
      public static const §]!7§:int = 4;
       
      
      public var §%&§:Vector.<b2ManifoldPoint>;
      
      public var §^Y§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §6N§:int;
      
      public var §<"5§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§%&§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§%&§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§^Y§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §["=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%&§[_loc1_] as b2ManifoldPoint).§["=§();
            _loc1_++;
         }
         this.§^Y§.§%"0§();
         this.m_localPoint.§%"0§();
         this.§6N§ = 0;
         this.§<"5§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§<"5§ = param1.§<"5§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%&§[_loc2_] as b2ManifoldPoint).Set(param1.§%&§[_loc2_]);
            _loc2_++;
         }
         this.§^Y§.SetV(param1.§^Y§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§6N§ = param1.§6N§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
