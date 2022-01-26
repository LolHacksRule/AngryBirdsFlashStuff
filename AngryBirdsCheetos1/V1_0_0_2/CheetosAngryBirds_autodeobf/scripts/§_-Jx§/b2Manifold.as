package §_-Jx§
{
   import §_-F2§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-O8§:int = 1;
      
      public static const §_-IX§:int = 2;
      
      public static const §_-vC§:int = 4;
       
      
      public var §_-wz§:Vector.<b2ManifoldPoint>;
      
      public var §_-l6§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-zO§:int;
      
      public var §_-002§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-wz§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-wz§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§_-l6§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-1c§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-wz§[_loc1_] as b2ManifoldPoint).§_-1c§();
            _loc1_++;
         }
         this.§_-l6§.§_-t5§();
         this.m_localPoint.§_-t5§();
         this.§_-zO§ = 0;
         this.§_-002§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-002§ = param1.§_-002§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-wz§[_loc2_] as b2ManifoldPoint).Set(param1.§_-wz§[_loc2_]);
            _loc2_++;
         }
         this.§_-l6§.SetV(param1.§_-l6§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-zO§ = param1.§_-zO§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
