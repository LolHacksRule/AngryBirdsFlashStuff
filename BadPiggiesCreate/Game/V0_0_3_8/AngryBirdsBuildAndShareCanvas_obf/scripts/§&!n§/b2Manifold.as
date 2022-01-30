package §&!n§
{
   import §8,§.*;
   import §9v§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §5![§:int = 1;
      
      public static const § !b§:int = 2;
      
      public static const §;!4§:int = 4;
       
      
      public var §'!N§:Vector.<b2ManifoldPoint>;
      
      public var §'""§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §;M§:int;
      
      public var §@!p§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§'!N§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§'!N§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§'""§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §8!<§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§'!N§[_loc1_] as b2ManifoldPoint).§8!<§();
            _loc1_++;
         }
         this.§'""§.§6V§();
         this.m_localPoint.§6V§();
         this.§;M§ = 0;
         this.§@!p§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§@!p§ = param1.§@!p§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§'!N§[_loc2_] as b2ManifoldPoint).Set(param1.§'!N§[_loc2_]);
            _loc2_++;
         }
         this.§'""§.SetV(param1.§'""§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§;M§ = param1.§;M§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
