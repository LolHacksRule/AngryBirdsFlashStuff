package §!;§
{
   import §-!A§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §&d§:int = 1;
      
      public static const §-O§:int = 2;
      
      public static const §"8§:int = 4;
       
      
      public var §&"#§:Vector.<b2ManifoldPoint>;
      
      public var §"!=§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §0"§:int;
      
      public var §8!S§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§&"#§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§&"#§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§"!=§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §6m§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&"#§[_loc1_] as b2ManifoldPoint).§6m§();
            _loc1_++;
         }
         this.§"!=§.§9N§();
         this.m_localPoint.§9N§();
         this.§0"§ = 0;
         this.§8!S§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§8!S§ = param1.§8!S§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&"#§[_loc2_] as b2ManifoldPoint).Set(param1.§&"#§[_loc2_]);
            _loc2_++;
         }
         this.§"!=§.SetV(param1.§"!=§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§0"§ = param1.§0"§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
