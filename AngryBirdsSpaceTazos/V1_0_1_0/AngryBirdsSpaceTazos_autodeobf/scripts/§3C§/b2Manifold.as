package §3c§
{
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §#m§:int = 1;
      
      public static const §%p§:int = 2;
      
      public static const §9!&§:int = 4;
       
      
      public var §,!T§:Vector.<b2ManifoldPoint>;
      
      public var §0"B§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §0w§:int;
      
      public var §[!J§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§,!T§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,!T§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§0"B§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §`"<§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,!T§[_loc1_] as b2ManifoldPoint).§`"<§();
            _loc1_++;
         }
         this.§0"B§.§@!d§();
         this.m_localPoint.§@!d§();
         this.§0w§ = 0;
         this.§[!J§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§[!J§ = param1.§[!J§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,!T§[_loc2_] as b2ManifoldPoint).Set(param1.§,!T§[_loc2_]);
            _loc2_++;
         }
         this.§0"B§.SetV(param1.§0"B§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§0w§ = param1.§0w§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
