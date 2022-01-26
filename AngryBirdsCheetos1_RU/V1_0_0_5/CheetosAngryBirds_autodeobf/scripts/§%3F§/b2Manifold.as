package §?§
{
   import § !5§.*;
   import §+,§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §2A§:int = 1;
      
      public static const §[,§:int = 2;
      
      public static const §&<§:int = 4;
       
      
      public var §,O§:Vector.<b2ManifoldPoint>;
      
      public var §]o§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §&D§:int;
      
      public var §6!G§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§,O§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,O§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§]o§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §[X§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,O§[_loc1_] as b2ManifoldPoint).§[X§();
            _loc1_++;
         }
         this.§]o§.§&N§();
         this.m_localPoint.§&N§();
         this.§&D§ = 0;
         this.§6!G§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§6!G§ = param1.§6!G§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,O§[_loc2_] as b2ManifoldPoint).Set(param1.§,O§[_loc2_]);
            _loc2_++;
         }
         this.§]o§.SetV(param1.§]o§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§&D§ = param1.§&D§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
