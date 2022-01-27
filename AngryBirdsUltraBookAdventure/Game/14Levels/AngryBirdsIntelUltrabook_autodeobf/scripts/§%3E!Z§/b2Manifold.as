package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §+!,§:int = 1;
      
      public static const §-!-§:int = 2;
      
      public static const §3!J§:int = 4;
       
      
      public var § !C§:Vector.<b2ManifoldPoint>;
      
      public var §1!§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3r§:int;
      
      public var §&!h§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§ !C§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§ !C§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§1!§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §2I§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ !C§[_loc1_] as b2ManifoldPoint).§2I§();
            _loc1_++;
         }
         this.§1!§.§+J§();
         this.m_localPoint.§+J§();
         this.§3r§ = 0;
         this.§&!h§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§&!h§ = param1.§&!h§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ !C§[_loc2_] as b2ManifoldPoint).Set(param1.§ !C§[_loc2_]);
            _loc2_++;
         }
         this.§1!§.SetV(param1.§1!§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3r§ = param1.§3r§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
