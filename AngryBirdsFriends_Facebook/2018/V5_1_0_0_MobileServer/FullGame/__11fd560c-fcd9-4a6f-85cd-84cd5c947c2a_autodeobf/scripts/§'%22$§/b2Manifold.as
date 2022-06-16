package §'"$§
{
   import § "%§.*;
   import §,!s§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §@!1§:int = 1;
      
      public static const §"# §:int = 2;
      
      public static const §,!P§:int = 4;
       
      
      public var §"!e§:Vector.<b2ManifoldPoint>;
      
      public var §8&§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"#W§:int;
      
      public var §%!+§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§"!e§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"!e§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§8&§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §1!M§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!e§[_loc1_] as b2ManifoldPoint).§1!M§();
            _loc1_++;
         }
         this.§8&§.§#!t§();
         this.m_localPoint.§#!t§();
         this.§"#W§ = 0;
         this.§%!+§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§%!+§ = param1.§%!+§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!e§[_loc2_] as b2ManifoldPoint).Set(param1.§"!e§[_loc2_]);
            _loc2_++;
         }
         this.§8&§.SetV(param1.§8&§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"#W§ = param1.§"#W§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
