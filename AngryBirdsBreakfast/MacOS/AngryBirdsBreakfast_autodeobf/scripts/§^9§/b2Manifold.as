package §^9§
{
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1K§:int = 1;
      
      public static const §3!u§:int = 2;
      
      public static const §8!p§:int = 4;
       
      
      public var §"A§:Vector.<b2ManifoldPoint>;
      
      public var §'c§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §6m§:int;
      
      public var §26§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§"A§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"A§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§'c§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §?!r§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"A§[_loc1_] as b2ManifoldPoint).§?!r§();
            _loc1_++;
         }
         this.§'c§.§5!H§();
         this.m_localPoint.§5!H§();
         this.§6m§ = 0;
         this.§26§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§26§ = param1.§26§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"A§[_loc2_] as b2ManifoldPoint).Set(param1.§"A§[_loc2_]);
            _loc2_++;
         }
         this.§'c§.SetV(param1.§'c§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§6m§ = param1.§6m§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
