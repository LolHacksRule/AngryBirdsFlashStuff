package §%]§
{
   import §,!3§.*;
   import §3'§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §"!>§:int = 1;
      
      public static const §&W§:int = 2;
      
      public static const §&m§:int = 4;
       
      
      public var §1N§:Vector.<b2ManifoldPoint>;
      
      public var §4!?§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §?S§:int;
      
      public var §in §:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§1N§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§1N§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4!?§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §super§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1N§[_loc1_] as b2ManifoldPoint).§super§();
            _loc1_++;
         }
         this.§4!?§.§#!d§();
         this.m_localPoint.§#!d§();
         this.§?S§ = 0;
         this.§in § = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§in § = param1.§in §;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1N§[_loc2_] as b2ManifoldPoint).Set(param1.§1N§[_loc2_]);
            _loc2_++;
         }
         this.§4!?§.SetV(param1.§4!?§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§?S§ = param1.§?S§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
