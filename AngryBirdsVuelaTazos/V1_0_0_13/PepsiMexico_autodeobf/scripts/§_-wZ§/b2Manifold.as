package §_-wZ§
{
   import §_-SM§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-h6§:int = 1;
      
      public static const §_-EB§:int = 2;
      
      public static const §_-j1§:int = 4;
       
      
      public var §_-KA§:Vector.<b2ManifoldPoint>;
      
      public var §_-1b§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-64§:int;
      
      public var §_-QB§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-KA§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-KA§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-1b§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-ut§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-KA§[_loc1_] as b2ManifoldPoint).§_-ut§();
            _loc1_++;
         }
         this.§_-1b§.§_-pR§();
         this.m_localPoint.§_-pR§();
         this.§_-64§ = 0;
         this.§_-QB§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-QB§ = param1.§_-QB§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-KA§[_loc2_] as b2ManifoldPoint).Set(param1.§_-KA§[_loc2_]);
            _loc2_++;
         }
         this.§_-1b§.SetV(param1.§_-1b§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-64§ = param1.§_-64§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
