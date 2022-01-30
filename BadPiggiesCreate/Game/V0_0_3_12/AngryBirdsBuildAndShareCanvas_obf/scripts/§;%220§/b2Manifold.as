package §;"0§
{
   import §3!t§.*;
   import §6!`§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §2"2§:int = 1;
      
      public static const §?B§:int = 2;
      
      public static const §`9§:int = 4;
       
      
      public var § !J§:Vector.<b2ManifoldPoint>;
      
      public var §^S§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §+V§:int;
      
      public var §3!G§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§ !J§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§ !J§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§^S§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §%@§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ !J§[_loc1_] as b2ManifoldPoint).§%@§();
            _loc1_++;
         }
         this.§^S§.§ 4§();
         this.m_localPoint.§ 4§();
         this.§+V§ = 0;
         this.§3!G§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§3!G§ = param1.§3!G§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ !J§[_loc2_] as b2ManifoldPoint).Set(param1.§ !J§[_loc2_]);
            _loc2_++;
         }
         this.§^S§.SetV(param1.§^S§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§+V§ = param1.§+V§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
