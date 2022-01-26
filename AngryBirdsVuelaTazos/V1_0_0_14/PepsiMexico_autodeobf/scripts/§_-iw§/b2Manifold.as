package §_-iw§
{
   import §_-4n§.*;
   import §_-bW§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-a3§:int = 1;
      
      public static const §_-hg§:int = 2;
      
      public static const §_-VV§:int = 4;
       
      
      public var §_-n0§:Vector.<b2ManifoldPoint>;
      
      public var §_-6E§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-rI§:int;
      
      public var §_-9g§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-n0§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-n0§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-6E§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-iK§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-n0§[_loc1_] as b2ManifoldPoint).§_-iK§();
            _loc1_++;
         }
         this.§_-6E§.§_-IE§();
         this.m_localPoint.§_-IE§();
         this.§_-rI§ = 0;
         this.§_-9g§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-9g§ = param1.§_-9g§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-n0§[_loc2_] as b2ManifoldPoint).Set(param1.§_-n0§[_loc2_]);
            _loc2_++;
         }
         this.§_-6E§.SetV(param1.§_-6E§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-rI§ = param1.§_-rI§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
