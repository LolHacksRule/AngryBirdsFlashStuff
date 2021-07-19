package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §6C§:int = 1;
      
      public static const §>E§:int = 2;
      
      public static const §&!5§:int = 4;
       
      
      public var §@Z§:Vector.<b2ManifoldPoint>;
      
      public var §7!A§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §#!&§:int;
      
      public var §break§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§@Z§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§@Z§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§7!A§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §2'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§@Z§[_loc1_] as b2ManifoldPoint).§2'§();
            _loc1_++;
         }
         this.§7!A§.§7_§();
         this.m_localPoint.§7_§();
         this.§#!&§ = 0;
         this.§break§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§break§ = param1.§break§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§@Z§[_loc2_] as b2ManifoldPoint).Set(param1.§@Z§[_loc2_]);
            _loc2_++;
         }
         this.§7!A§.SetV(param1.§7!A§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§#!&§ = param1.§#!&§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
