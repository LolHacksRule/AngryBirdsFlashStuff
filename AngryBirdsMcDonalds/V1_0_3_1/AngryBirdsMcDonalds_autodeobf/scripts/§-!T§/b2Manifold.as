package §-!T§
{
   import §0,§.*;
   import §3o§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §3!?§:int = 1;
      
      public static const §>!<§:int = 2;
      
      public static const §6!@§:int = 4;
       
      
      public var §0!4§:Vector.<b2ManifoldPoint>;
      
      public var §^!Q§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5!a§:int;
      
      public var §'q§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§0!4§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§0!4§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§^!Q§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §?r§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§0!4§[_loc1_] as b2ManifoldPoint).§?r§();
            _loc1_++;
         }
         this.§^!Q§.§ !b§();
         this.m_localPoint.§ !b§();
         this.§5!a§ = 0;
         this.§'q§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§'q§ = param1.§'q§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§0!4§[_loc2_] as b2ManifoldPoint).Set(param1.§0!4§[_loc2_]);
            _loc2_++;
         }
         this.§^!Q§.SetV(param1.§^!Q§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5!a§ = param1.§5!a§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
