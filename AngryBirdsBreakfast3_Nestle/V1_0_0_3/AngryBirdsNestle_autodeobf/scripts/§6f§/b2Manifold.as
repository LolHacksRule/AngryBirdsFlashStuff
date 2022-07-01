package §6f§
{
   import § !%§.*;
   import §,!k§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §#!F§:int = 1;
      
      public static const §7m§:int = 2;
      
      public static const §]!W§:int = 4;
       
      
      public var §;!O§:Vector.<b2ManifoldPoint>;
      
      public var §+!B§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §=!;§:int;
      
      public var §%!x§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§;!O§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;!O§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§+!B§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §,E§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;!O§[_loc1_] as b2ManifoldPoint).§,E§();
            _loc1_++;
         }
         this.§+!B§.§2!n§();
         this.m_localPoint.§2!n§();
         this.§=!;§ = 0;
         this.§%!x§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§%!x§ = param1.§%!x§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;!O§[_loc2_] as b2ManifoldPoint).Set(param1.§;!O§[_loc2_]);
            _loc2_++;
         }
         this.§+!B§.SetV(param1.§+!B§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§=!;§ = param1.§=!;§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
