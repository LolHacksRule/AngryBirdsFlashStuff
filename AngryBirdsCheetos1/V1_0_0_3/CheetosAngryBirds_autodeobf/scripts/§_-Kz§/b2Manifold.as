package §_-Kz§
{
   import §_-Jf§.*;
   import §_-Vn§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-aM§:int = 1;
      
      public static const §_-VC§:int = 2;
      
      public static const §_-ma§:int = 4;
       
      
      public var §_-rg§:Vector.<b2ManifoldPoint>;
      
      public var §_-JV§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-Kg§:int;
      
      public var §_-BX§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-rg§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-rg§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-JV§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-ej§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-rg§[_loc1_] as b2ManifoldPoint).§_-ej§();
            _loc1_++;
         }
         this.§_-JV§.§return§();
         this.m_localPoint.§return§();
         this.§_-Kg§ = 0;
         this.§_-BX§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-BX§ = param1.§_-BX§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-rg§[_loc2_] as b2ManifoldPoint).Set(param1.§_-rg§[_loc2_]);
            _loc2_++;
         }
         this.§_-JV§.SetV(param1.§_-JV§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-Kg§ = param1.§_-Kg§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
