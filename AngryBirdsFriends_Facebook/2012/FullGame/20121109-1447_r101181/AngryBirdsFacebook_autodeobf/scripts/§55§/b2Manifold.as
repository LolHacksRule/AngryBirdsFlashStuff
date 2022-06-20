package §55§
{
   import §#]§.*;
   import §4!!§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9M§:int = 1;
      
      public static const §;1§:int = 2;
      
      public static const §#[§:int = 4;
       
      
      public var §1!d§:Vector.<b2ManifoldPoint>;
      
      public var §%C§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §<";§:int;
      
      public var §^M§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§1!d§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§1!d§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§%C§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<t§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1!d§[_loc1_] as b2ManifoldPoint).§<t§();
            _loc1_++;
         }
         this.§%C§.§;v§();
         this.m_localPoint.§;v§();
         this.§<";§ = 0;
         this.§^M§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§^M§ = param1.§^M§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1!d§[_loc2_] as b2ManifoldPoint).Set(param1.§1!d§[_loc2_]);
            _loc2_++;
         }
         this.§%C§.SetV(param1.§%C§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§<";§ = param1.§<";§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
