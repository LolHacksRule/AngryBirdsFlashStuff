package §9"§
{
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §4A§:int = 1;
      
      public static const §0!&§:int = 2;
      
      public static const §5!8§:int = 4;
       
      
      public var §<s§:Vector.<b2ManifoldPoint>;
      
      public var §9]§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §8!J§:int;
      
      public var §!$§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§<s§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§<s§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§9]§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §8j§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<s§[_loc1_] as b2ManifoldPoint).§8j§();
            _loc1_++;
         }
         this.§9]§.§3a§();
         this.m_localPoint.§3a§();
         this.§8!J§ = 0;
         this.§!$§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§!$§ = param1.§!$§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§<s§[_loc2_] as b2ManifoldPoint).Set(param1.§<s§[_loc2_]);
            _loc2_++;
         }
         this.§9]§.SetV(param1.§9]§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§8!J§ = param1.§8!J§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
