package §3"5§
{
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1!9§:int = 1;
      
      public static const §=!m§:int = 2;
      
      public static const §3"f§:int = 4;
       
      
      public var §="8§:Vector.<b2ManifoldPoint>;
      
      public var §[#M§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §%!9§:int;
      
      public var §6#;§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§="8§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§="8§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§[#M§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §'B§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§="8§[_loc1_] as b2ManifoldPoint).§'B§();
            _loc1_++;
         }
         this.§[#M§.§&"Q§();
         this.m_localPoint.§&"Q§();
         this.§%!9§ = 0;
         this.§6#;§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§6#;§ = param1.§6#;§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§="8§[_loc2_] as b2ManifoldPoint).Set(param1.§="8§[_loc2_]);
            _loc2_++;
         }
         this.§[#M§.SetV(param1.§[#M§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§%!9§ = param1.§%!9§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
