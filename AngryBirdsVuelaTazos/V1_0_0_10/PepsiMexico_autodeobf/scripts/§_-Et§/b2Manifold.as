package §_-Et§
{
   import §_-Zl§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-fZ§:int = 1;
      
      public static const §_-Qj§:int = 2;
      
      public static const §_-E7§:int = 4;
       
      
      public var §_-fG§:Vector.<b2ManifoldPoint>;
      
      public var §_-By§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-K9§:int;
      
      public var §_-GS§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-fG§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-fG§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-By§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-t3§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-fG§[_loc1_] as b2ManifoldPoint).§_-t3§();
            _loc1_++;
         }
         this.§_-By§.§_-Vw§();
         this.m_localPoint.§_-Vw§();
         this.§_-K9§ = 0;
         this.§_-GS§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-GS§ = param1.§_-GS§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-fG§[_loc2_] as b2ManifoldPoint).Set(param1.§_-fG§[_loc2_]);
            _loc2_++;
         }
         this.§_-By§.SetV(param1.§_-By§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-K9§ = param1.§_-K9§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
