package §<!^§
{
   import §&!+§.*;
   import §8!%§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §`!5§:int = 1;
      
      public static const §[U§:int = 2;
      
      public static const §?F§:int = 4;
       
      
      public var §`!§:Vector.<b2ManifoldPoint>;
      
      public var §=-§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"!V§:int;
      
      public var §'l§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§`!§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§`!§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§=-§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §]!S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`!§[_loc1_] as b2ManifoldPoint).§]!S§();
            _loc1_++;
         }
         this.§=-§.§8Q§();
         this.m_localPoint.§8Q§();
         this.§"!V§ = 0;
         this.§'l§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§'l§ = param1.§'l§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`!§[_loc2_] as b2ManifoldPoint).Set(param1.§`!§[_loc2_]);
            _loc2_++;
         }
         this.§=-§.SetV(param1.§=-§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"!V§ = param1.§"!V§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
