package §3"q§
{
   import §0H§.*;
   import §0m§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §8N§:int = 1;
      
      public static const §,#§:int = 2;
      
      public static const §-!J§:int = 4;
       
      
      public var §8#N§:Vector.<b2ManifoldPoint>;
      
      public var §7"8§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §6"&§:int;
      
      public var §+!P§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§8#N§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§8#N§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§7"8§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<#W§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§8#N§[_loc1_] as b2ManifoldPoint).§<#W§();
            _loc1_++;
         }
         this.§7"8§.§,[§();
         this.m_localPoint.§,[§();
         this.§6"&§ = 0;
         this.§+!P§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§+!P§ = param1.§+!P§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§8#N§[_loc2_] as b2ManifoldPoint).Set(param1.§8#N§[_loc2_]);
            _loc2_++;
         }
         this.§7"8§.SetV(param1.§7"8§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§6"&§ = param1.§6"&§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
