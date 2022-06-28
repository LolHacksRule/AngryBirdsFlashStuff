package §8w§
{
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §6!C§:int = 1;
      
      public static const §>!r§:int = 2;
      
      public static const §9!D§:int = 4;
       
      
      public var §4!a§:Vector.<b2ManifoldPoint>;
      
      public var §6O§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"_§:int;
      
      public var §2V§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§4!a§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§4!a§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§6O§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §@!b§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§4!a§[_loc1_] as b2ManifoldPoint).§@!b§();
            _loc1_++;
         }
         this.§6O§.§&!K§();
         this.m_localPoint.§&!K§();
         this.§"_§ = 0;
         this.§2V§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§2V§ = param1.§2V§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§4!a§[_loc2_] as b2ManifoldPoint).Set(param1.§4!a§[_loc2_]);
            _loc2_++;
         }
         this.§6O§.SetV(param1.§6O§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"_§ = param1.§"_§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
