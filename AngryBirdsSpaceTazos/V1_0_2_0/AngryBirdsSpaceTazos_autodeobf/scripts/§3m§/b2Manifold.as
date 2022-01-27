package §3m§
{
   import §&!S§.*;
   import §@!@§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §4r§:int = 1;
      
      public static const §="G§:int = 2;
      
      public static const §?r§:int = 4;
       
      
      public var §-P§:Vector.<b2ManifoldPoint>;
      
      public var §["0§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5!q§:int;
      
      public var §61§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§-P§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§-P§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§["0§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §3"8§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§-P§[_loc1_] as b2ManifoldPoint).§3"8§();
            _loc1_++;
         }
         this.§["0§.§ "2§();
         this.m_localPoint.§ "2§();
         this.§5!q§ = 0;
         this.§61§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§61§ = param1.§61§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§-P§[_loc2_] as b2ManifoldPoint).Set(param1.§-P§[_loc2_]);
            _loc2_++;
         }
         this.§["0§.SetV(param1.§["0§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5!q§ = param1.§5!q§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
