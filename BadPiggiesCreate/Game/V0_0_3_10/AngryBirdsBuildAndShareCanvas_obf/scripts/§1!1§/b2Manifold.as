package §1!1§
{
   import §!S§.*;
   import §?!h§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §0"8§:int = 1;
      
      public static const §""'§:int = 2;
      
      public static const §,!t§:int = 4;
       
      
      public var §!!6§:Vector.<b2ManifoldPoint>;
      
      public var §`4§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §""#§:int;
      
      public var §]7§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§!!6§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§!!6§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§`4§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §+Q§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!!6§[_loc1_] as b2ManifoldPoint).§+Q§();
            _loc1_++;
         }
         this.§`4§.§+Z§();
         this.m_localPoint.§+Z§();
         this.§""#§ = 0;
         this.§]7§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§]7§ = param1.§]7§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!!6§[_loc2_] as b2ManifoldPoint).Set(param1.§!!6§[_loc2_]);
            _loc2_++;
         }
         this.§`4§.SetV(param1.§`4§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§""#§ = param1.§""#§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
