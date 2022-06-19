package §_-yI§
{
   import §_-b4§.*;
   import §_-cP§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-qM§:int = 1;
      
      public static const §_-86§:int = 2;
      
      public static const §_-LY§:int = 4;
       
      
      public var §_-B0§:Vector.<b2ManifoldPoint>;
      
      public var §_-0R§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-f7§:int;
      
      public var §_-KL§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-B0§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-B0§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-0R§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-Ji§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-B0§[_loc1_] as b2ManifoldPoint).§_-Ji§();
            _loc1_++;
         }
         this.§_-0R§.§_-WO§();
         this.m_localPoint.§_-WO§();
         this.§_-f7§ = 0;
         this.§_-KL§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-KL§ = param1.§_-KL§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-B0§[_loc2_] as b2ManifoldPoint).Set(param1.§_-B0§[_loc2_]);
            _loc2_++;
         }
         this.§_-0R§.SetV(param1.§_-0R§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-f7§ = param1.§_-f7§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
