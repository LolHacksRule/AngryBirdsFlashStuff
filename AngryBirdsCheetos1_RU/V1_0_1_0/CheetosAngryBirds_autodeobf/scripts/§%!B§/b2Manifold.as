package §%!B§
{
   import §&!B§.*;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>a§:int = 1;
      
      public static const §;!-§:int = 2;
      
      public static const §6"§:int = 4;
       
      
      public var §%!C§:Vector.<b2ManifoldPoint>;
      
      public var §,?§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §@9§:int;
      
      public var §>#§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§%!C§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§%!C§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§,?§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §^5§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%!C§[_loc1_] as b2ManifoldPoint).§^5§();
            _loc1_++;
         }
         this.§,?§.§,!3§();
         this.m_localPoint.§,!3§();
         this.§@9§ = 0;
         this.§>#§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§>#§ = param1.§>#§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%!C§[_loc2_] as b2ManifoldPoint).Set(param1.§%!C§[_loc2_]);
            _loc2_++;
         }
         this.§,?§.SetV(param1.§,?§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§@9§ = param1.§@9§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
