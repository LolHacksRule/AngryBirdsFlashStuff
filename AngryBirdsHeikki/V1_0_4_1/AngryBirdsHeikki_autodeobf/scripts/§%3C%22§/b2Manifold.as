package §<"§
{
   import §4x§.*;
   import §=i§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §4!Q§:int = 1;
      
      public static const §8?§:int = 2;
      
      public static const §<8§:int = 4;
       
      
      public var §&!4§:Vector.<b2ManifoldPoint>;
      
      public var §=!W§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §'A§:int;
      
      public var §>!=§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§&!4§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§&!4§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§=!W§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §5!9§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&!4§[_loc1_] as b2ManifoldPoint).§5!9§();
            _loc1_++;
         }
         this.§=!W§.§0!=§();
         this.m_localPoint.§0!=§();
         this.§'A§ = 0;
         this.§>!=§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§>!=§ = param1.§>!=§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&!4§[_loc2_] as b2ManifoldPoint).Set(param1.§&!4§[_loc2_]);
            _loc2_++;
         }
         this.§=!W§.SetV(param1.§=!W§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§'A§ = param1.§'A§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
