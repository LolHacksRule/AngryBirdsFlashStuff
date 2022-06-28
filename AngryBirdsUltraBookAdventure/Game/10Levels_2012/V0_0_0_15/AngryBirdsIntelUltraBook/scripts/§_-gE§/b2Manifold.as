package §_-gE§
{
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-fd§:int = 1;
      
      public static const §_-f8§:int = 2;
      
      public static const §_-vN§:int = 4;
       
      
      public var §_-Eg§:Vector.<b2ManifoldPoint>;
      
      public var §catch§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-1c§:int;
      
      public var §_-XO§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§_-Eg§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-Eg§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§catch§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §_-8Y§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Eg§[_loc1_] as b2ManifoldPoint).§_-8Y§();
            _loc1_++;
         }
         this.§catch§.§_-el§();
         this.m_localPoint.§_-el§();
         this.§_-1c§ = 0;
         this.§_-XO§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§_-XO§ = param1.§_-XO§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-Eg§[_loc2_] as b2ManifoldPoint).Set(param1.§_-Eg§[_loc2_]);
            _loc2_++;
         }
         this.§catch§.SetV(param1.§catch§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-1c§ = param1.§_-1c§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
