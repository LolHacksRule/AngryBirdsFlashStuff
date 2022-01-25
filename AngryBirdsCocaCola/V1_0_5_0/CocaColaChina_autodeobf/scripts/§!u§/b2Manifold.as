package §!u§
{
   import §54§.*;
   import §;h§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §%N§:int = 1;
      
      public static const § in§:int = 2;
      
      public static const §;!5§:int = 4;
       
      
      public var §+!]§:Vector.<b2ManifoldPoint>;
      
      public var § !W§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2+§:int;
      
      public var §72§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§+!]§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§+!]§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§ !W§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §+!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+!]§[_loc1_] as b2ManifoldPoint).§+!K§();
            _loc1_++;
         }
         this.§ !W§.§9!V§();
         this.m_localPoint.§9!V§();
         this.§2+§ = 0;
         this.§72§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§72§ = param1.§72§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+!]§[_loc2_] as b2ManifoldPoint).Set(param1.§+!]§[_loc2_]);
            _loc2_++;
         }
         this.§ !W§.SetV(param1.§ !W§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§2+§ = param1.§2+§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
