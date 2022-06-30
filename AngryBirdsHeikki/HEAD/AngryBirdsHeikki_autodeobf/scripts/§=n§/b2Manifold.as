package §=n§
{
   import §6%§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §=;§:int = 1;
      
      public static const §@!A§:int = 2;
      
      public static const § e§:int = 4;
       
      
      public var §0F§:Vector.<b2ManifoldPoint>;
      
      public var §#e§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5!'§:int;
      
      public var §;!e§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§0F§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§0F§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§#e§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §"!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§0F§[_loc1_] as b2ManifoldPoint).§"!K§();
            _loc1_++;
         }
         this.§#e§.§8c§();
         this.m_localPoint.§8c§();
         this.§5!'§ = 0;
         this.§;!e§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§;!e§ = param1.§;!e§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§0F§[_loc2_] as b2ManifoldPoint).Set(param1.§0F§[_loc2_]);
            _loc2_++;
         }
         this.§#e§.SetV(param1.§#e§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5!'§ = param1.§5!'§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
