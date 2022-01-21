package §<!!§
{
   import §"U§.*;
   import §=!X§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §3b§:int = 1;
      
      public static const §-!b§:int = 2;
      
      public static const §+!h§:int = 4;
       
      
      public var §;N§:Vector.<b2ManifoldPoint>;
      
      public var §#S§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §+k§:int;
      
      public var §&!-§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§;N§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§;N§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§#S§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §4`§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;N§[_loc1_] as b2ManifoldPoint).§4`§();
            _loc1_++;
         }
         this.§#S§.§1!=§();
         this.m_localPoint.§1!=§();
         this.§+k§ = 0;
         this.§&!-§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§&!-§ = param1.§&!-§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§;N§[_loc2_] as b2ManifoldPoint).Set(param1.§;N§[_loc2_]);
            _loc2_++;
         }
         this.§#S§.SetV(param1.§#S§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§+k§ = param1.§+k§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
