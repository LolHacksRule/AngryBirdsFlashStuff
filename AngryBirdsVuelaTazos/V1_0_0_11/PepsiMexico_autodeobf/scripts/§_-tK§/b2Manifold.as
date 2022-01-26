package §_-tK§
{
   import §_-dx§.*;
   import §_-iO§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-DR§:int = 1;
      
      public static const §_-3S§:int = 2;
      
      public static const §_-mn§:int = 4;
       
      
      public var §_-of§:Vector.<b2ManifoldPoint>;
      
      public var §_-lj§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-9f§:int;
      
      public var §_-sx§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-of§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-of§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-lj§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-Mm§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-of§[_loc1_] as b2ManifoldPoint).§_-Mm§();
            _loc1_++;
         }
         this.§_-lj§.§_-pZ§();
         this.m_localPoint.§_-pZ§();
         this.§_-9f§ = 0;
         this.§_-sx§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-sx§ = param1.§_-sx§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-of§[_loc2_] as b2ManifoldPoint).Set(param1.§_-of§[_loc2_]);
            _loc2_++;
         }
         this.§_-lj§.SetV(param1.§_-lj§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-9f§ = param1.§_-9f§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
