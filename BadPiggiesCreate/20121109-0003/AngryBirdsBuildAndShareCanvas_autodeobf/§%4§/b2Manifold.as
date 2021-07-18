package §%4§
{
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §%"#§:int = 1;
      
      public static const §`!5§:int = 2;
      
      public static const §&O§:int = 4;
       
      
      public var §5S§:Vector.<b2ManifoldPoint>;
      
      public var §5!=§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §0!,§:int;
      
      public var §`!>§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§5S§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§5S§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§5!=§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §+N§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§5S§[_loc1_] as b2ManifoldPoint).§+N§();
            _loc1_++;
         }
         this.§5!=§.§?b§();
         this.m_localPoint.§?b§();
         this.§0!,§ = 0;
         this.§`!>§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§`!>§ = param1.§`!>§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§5S§[_loc2_] as b2ManifoldPoint).Set(param1.§5S§[_loc2_]);
            _loc2_++;
         }
         this.§5!=§.SetV(param1.§5!=§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§0!,§ = param1.§0!,§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
