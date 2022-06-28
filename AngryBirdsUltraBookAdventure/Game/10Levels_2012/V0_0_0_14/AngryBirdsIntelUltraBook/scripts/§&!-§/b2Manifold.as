package §&!-§
{
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §,!y§:int = 1;
      
      public static const §@!`§:int = 2;
      
      public static const §6$§:int = 4;
       
      
      public var §<8§:Vector.<b2ManifoldPoint>;
      
      public var §0!?§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"!1§:int;
      
      public var §]B§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§<8§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§<8§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§0!?§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §#[§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<8§[_loc1_] as b2ManifoldPoint).§#[§();
            _loc1_++;
         }
         this.§0!?§.§%&§();
         this.m_localPoint.§%&§();
         this.§"!1§ = 0;
         this.§]B§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§]B§ = param1.§]B§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<8§[_loc2_] as b2ManifoldPoint).Set(param1.§<8§[_loc2_]);
            _loc2_++;
         }
         this.§0!?§.SetV(param1.§0!?§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"!1§ = param1.§"!1§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
