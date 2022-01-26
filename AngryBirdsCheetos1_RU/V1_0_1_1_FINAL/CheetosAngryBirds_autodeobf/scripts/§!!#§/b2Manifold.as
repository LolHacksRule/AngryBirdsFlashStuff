package §!!#§
{
   import §4! §.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §4!&§:int = 1;
      
      public static const §,k§:int = 2;
      
      public static const §?e§:int = 4;
       
      
      public var §"!_§:Vector.<b2ManifoldPoint>;
      
      public var § I§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3;§:int;
      
      public var §^d§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§"!_§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"!_§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§ I§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function § Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!_§[_loc1_] as b2ManifoldPoint).§ Z§();
            _loc1_++;
         }
         this.§ I§.§0q§();
         this.m_localPoint.§0q§();
         this.§3;§ = 0;
         this.§^d§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§^d§ = param1.§^d§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!_§[_loc2_] as b2ManifoldPoint).Set(param1.§"!_§[_loc2_]);
            _loc2_++;
         }
         this.§ I§.SetV(param1.§ I§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3;§ = param1.§3;§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
