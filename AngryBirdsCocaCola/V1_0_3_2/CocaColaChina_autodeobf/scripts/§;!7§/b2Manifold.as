package §;!7§
{
   import §"!R§.*;
   import §implements§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §0<§:int = 1;
      
      public static const §"!F§:int = 2;
      
      public static const §]6§:int = 4;
       
      
      public var §9;§:Vector.<b2ManifoldPoint>;
      
      public var §^!!§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §;>§:int;
      
      public var §!!_§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§9;§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§9;§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§^!!§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §8^§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§9;§[_loc1_] as b2ManifoldPoint).§8^§();
            _loc1_++;
         }
         this.§^!!§.§^!&§();
         this.m_localPoint.§^!&§();
         this.§;>§ = 0;
         this.§!!_§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§!!_§ = param1.§!!_§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§9;§[_loc2_] as b2ManifoldPoint).Set(param1.§9;§[_loc2_]);
            _loc2_++;
         }
         this.§^!!§.SetV(param1.§^!!§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§;>§ = param1.§;>§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
