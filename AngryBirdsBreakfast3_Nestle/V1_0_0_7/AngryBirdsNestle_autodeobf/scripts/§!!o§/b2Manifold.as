package §!!o§
{
   import §!r§.*;
   import §-!2§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §=!$§:int = 1;
      
      public static const §?!0§:int = 2;
      
      public static const §%",§:int = 4;
       
      
      public var §<!7§:Vector.<b2ManifoldPoint>;
      
      public var §<V§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §%"+§:int;
      
      public var §0#§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§<!7§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§<!7§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§<V§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §;§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<!7§[_loc1_] as b2ManifoldPoint).§;§();
            _loc1_++;
         }
         this.§<V§.§`5§();
         this.m_localPoint.§`5§();
         this.§%"+§ = 0;
         this.§0#§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§0#§ = param1.§0#§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<!7§[_loc2_] as b2ManifoldPoint).Set(param1.§<!7§[_loc2_]);
            _loc2_++;
         }
         this.§<V§.SetV(param1.§<V§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§%"+§ = param1.§%"+§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
