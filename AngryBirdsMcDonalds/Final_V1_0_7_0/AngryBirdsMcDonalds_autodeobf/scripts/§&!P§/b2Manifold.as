package §&!P§
{
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §`!f§:int = 1;
      
      public static const §8Z§:int = 2;
      
      public static const §[n§:int = 4;
       
      
      public var §"!h§:Vector.<b2ManifoldPoint>;
      
      public var §4!0§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §,!f§:int;
      
      public var §>r§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§"!h§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"!h§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4!0§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<L§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!h§[_loc1_] as b2ManifoldPoint).§<L§();
            _loc1_++;
         }
         this.§4!0§.§4[§();
         this.m_localPoint.§4[§();
         this.§,!f§ = 0;
         this.§>r§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§>r§ = param1.§>r§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"!h§[_loc2_] as b2ManifoldPoint).Set(param1.§"!h§[_loc2_]);
            _loc2_++;
         }
         this.§4!0§.SetV(param1.§4!0§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§,!f§ = param1.§,!f§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
