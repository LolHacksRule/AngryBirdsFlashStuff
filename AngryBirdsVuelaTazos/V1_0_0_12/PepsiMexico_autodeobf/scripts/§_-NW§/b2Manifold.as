package §_-Nw§
{
   import §_-9z§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-uU§:int = 1;
      
      public static const §_-Cm§:int = 2;
      
      public static const §_-1x§:int = 4;
       
      
      public var §_-Xy§:Vector.<b2ManifoldPoint>;
      
      public var §_-CA§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-g1§:int;
      
      public var §_-pT§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-Xy§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-Xy§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-CA§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-7h§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Xy§[_loc1_] as b2ManifoldPoint).§_-7h§();
            _loc1_++;
         }
         this.§_-CA§.§_-TJ§();
         this.m_localPoint.§_-TJ§();
         this.§_-g1§ = 0;
         this.§_-pT§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-pT§ = param1.§_-pT§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Xy§[_loc2_] as b2ManifoldPoint).Set(param1.§_-Xy§[_loc2_]);
            _loc2_++;
         }
         this.§_-CA§.SetV(param1.§_-CA§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-g1§ = param1.§_-g1§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
