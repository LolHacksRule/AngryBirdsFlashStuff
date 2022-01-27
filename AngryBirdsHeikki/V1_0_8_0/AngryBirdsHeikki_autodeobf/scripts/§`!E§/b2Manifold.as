package §`!E§
{
   import §0!=§.*;
   import §0^§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §`F§:int = 1;
      
      public static const § b§:int = 2;
      
      public static const §6a§:int = 4;
       
      
      public var §!&§:Vector.<b2ManifoldPoint>;
      
      public var §'O§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §%P§:int;
      
      public var §+#§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§!&§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§!&§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§'O§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §@%§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!&§[_loc1_] as b2ManifoldPoint).§@%§();
            _loc1_++;
         }
         this.§'O§.§0'§();
         this.m_localPoint.§0'§();
         this.§%P§ = 0;
         this.§+#§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§+#§ = param1.§+#§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!&§[_loc2_] as b2ManifoldPoint).Set(param1.§!&§[_loc2_]);
            _loc2_++;
         }
         this.§'O§.SetV(param1.§'O§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§%P§ = param1.§%P§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
