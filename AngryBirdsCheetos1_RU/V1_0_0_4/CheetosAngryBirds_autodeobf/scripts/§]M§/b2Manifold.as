package §]M§
{
   import §"v§.*;
   import §5!K§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9_§:int = 1;
      
      public static const § V§:int = 2;
      
      public static const §5!V§:int = 4;
       
      
      public var §!!=§:Vector.<b2ManifoldPoint>;
      
      public var §4S§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §&>§:int;
      
      public var §<n§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§!!=§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§!!=§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4S§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §"L§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!!=§[_loc1_] as b2ManifoldPoint).§"L§();
            _loc1_++;
         }
         this.§4S§.§6d§();
         this.m_localPoint.§6d§();
         this.§&>§ = 0;
         this.§<n§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§<n§ = param1.§<n§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§!!=§[_loc2_] as b2ManifoldPoint).Set(param1.§!!=§[_loc2_]);
            _loc2_++;
         }
         this.§4S§.SetV(param1.§4S§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§&>§ = param1.§&>§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
