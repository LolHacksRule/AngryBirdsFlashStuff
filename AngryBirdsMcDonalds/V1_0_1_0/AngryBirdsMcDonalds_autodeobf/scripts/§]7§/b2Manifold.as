package §]7§
{
   import §!R§.*;
   import §9i§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1!g§:int = 1;
      
      public static const §6U§:int = 2;
      
      public static const §,!b§:int = 4;
       
      
      public var §55§:Vector.<b2ManifoldPoint>;
      
      public var §>!Q§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §+C§:int;
      
      public var §,!!§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§55§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§55§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§>!Q§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<! §() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§55§[_loc1_] as b2ManifoldPoint).§<! §();
            _loc1_++;
         }
         this.§>!Q§.§"9§();
         this.m_localPoint.§"9§();
         this.§+C§ = 0;
         this.§,!!§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§,!!§ = param1.§,!!§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§55§[_loc2_] as b2ManifoldPoint).Set(param1.§55§[_loc2_]);
            _loc2_++;
         }
         this.§>!Q§.SetV(param1.§>!Q§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§+C§ = param1.§+C§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
