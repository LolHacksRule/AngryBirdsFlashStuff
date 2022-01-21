package §8!n§
{
   import §7!Y§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §-!Y§:int = 1;
      
      public static const §?!Z§:int = 2;
      
      public static const §][§:int = 4;
       
      
      public var §%Q§:Vector.<b2ManifoldPoint>;
      
      public var §!!#§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3l§:int;
      
      public var §"e§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§%Q§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§%Q§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§!!#§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §?!;§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%Q§[_loc1_] as b2ManifoldPoint).§?!;§();
            _loc1_++;
         }
         this.§!!#§.§%!&§();
         this.m_localPoint.§%!&§();
         this.§3l§ = 0;
         this.§"e§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§"e§ = param1.§"e§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%Q§[_loc2_] as b2ManifoldPoint).Set(param1.§%Q§[_loc2_]);
            _loc2_++;
         }
         this.§!!#§.SetV(param1.§!!#§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3l§ = param1.§3l§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
