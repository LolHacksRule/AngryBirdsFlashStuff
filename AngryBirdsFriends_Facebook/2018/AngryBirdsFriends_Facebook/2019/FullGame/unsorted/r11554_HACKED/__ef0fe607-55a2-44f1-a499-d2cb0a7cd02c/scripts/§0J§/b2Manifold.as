package §0J§
{
   import §[!3§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §["0§:int = 1;
      
      public static const §2r§:int = 2;
      
      public static const §@#1§:int = 4;
       
      
      public var §%R§:Vector.<b2ManifoldPoint>;
      
      public var § ;§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §'!A§:int;
      
      public var §?!j§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§%R§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§%R§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§ ;§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §9#t§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%R§[_loc1_] as b2ManifoldPoint).§9#t§();
            _loc1_++;
         }
         this.§ ;§.§5J§();
         this.m_localPoint.§5J§();
         this.§'!A§ = 0;
         this.§?!j§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§?!j§ = param1.§?!j§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§%R§[_loc2_] as b2ManifoldPoint).Set(param1.§%R§[_loc2_]);
            _loc2_++;
         }
         this.§ ;§.SetV(param1.§ ;§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§'!A§ = param1.§'!A§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
