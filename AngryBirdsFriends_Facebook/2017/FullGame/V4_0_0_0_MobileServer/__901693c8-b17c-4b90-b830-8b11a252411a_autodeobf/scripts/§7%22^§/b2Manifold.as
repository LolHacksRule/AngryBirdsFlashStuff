package §7"^§
{
   import §%!9§.*;
   import §9#K§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const § "2§:int = 1;
      
      public static const § ">§:int = 2;
      
      public static const §"c§:int = 4;
       
      
      public var §,"m§:Vector.<b2ManifoldPoint>;
      
      public var §#!F§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §9!a§:int;
      
      public var §@"i§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§,"m§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,"m§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§#!F§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §=!H§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,"m§[_loc1_] as b2ManifoldPoint).§=!H§();
            _loc1_++;
         }
         this.§#!F§.§2!9§();
         this.m_localPoint.§2!9§();
         this.§9!a§ = 0;
         this.§@"i§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§@"i§ = param1.§@"i§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,"m§[_loc2_] as b2ManifoldPoint).Set(param1.§,"m§[_loc2_]);
            _loc2_++;
         }
         this.§#!F§.SetV(param1.§#!F§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§9!a§ = param1.§9!a§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
