package §_-mg§
{
   import §_-bA§.*;
   import §_-rz§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-Ia§:int = 1;
      
      public static const §_-y2§:int = 2;
      
      public static const §_-H5§:int = 4;
       
      
      public var §_-Eb§:Vector.<b2ManifoldPoint>;
      
      public var §_-nZ§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-Ra§:int;
      
      public var §_-HT§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-Eb§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-Eb§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-nZ§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-2d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Eb§[_loc1_] as b2ManifoldPoint).§_-2d§();
            _loc1_++;
         }
         this.§_-nZ§.§_-qi§();
         this.m_localPoint.§_-qi§();
         this.§_-Ra§ = 0;
         this.§_-HT§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-HT§ = param1.§_-HT§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Eb§[_loc2_] as b2ManifoldPoint).Set(param1.§_-Eb§[_loc2_]);
            _loc2_++;
         }
         this.§_-nZ§.SetV(param1.§_-nZ§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-Ra§ = param1.§_-Ra§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
