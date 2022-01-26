package §_-qg§
{
   import §_-Ja§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-1§:int = 1;
      
      public static const §_-zO§:int = 2;
      
      public static const §_-77§:int = 4;
       
      
      public var §_-hn§:Vector.<b2ManifoldPoint>;
      
      public var §_-Pv§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-Sj§:int;
      
      public var §_-Tu§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-hn§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-hn§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-Pv§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-i0§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-hn§[_loc1_] as b2ManifoldPoint).§_-i0§();
            _loc1_++;
         }
         this.§_-Pv§.§_-0a§();
         this.m_localPoint.§_-0a§();
         this.§_-Sj§ = 0;
         this.§_-Tu§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-Tu§ = param1.§_-Tu§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-hn§[_loc2_] as b2ManifoldPoint).Set(param1.§_-hn§[_loc2_]);
            _loc2_++;
         }
         this.§_-Pv§.SetV(param1.§_-Pv§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-Sj§ = param1.§_-Sj§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
