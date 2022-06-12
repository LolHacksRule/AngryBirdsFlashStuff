package §[!Z§
{
   import §-!G§.*;
   import §7"'§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §@B§:int = 1;
      
      public static const §8!#§:int = 2;
      
      public static const §6^§:int = 4;
       
      
      public var §3J§:Vector.<b2ManifoldPoint>;
      
      public var §86§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §!!y§:int;
      
      public var §[!3§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§3J§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§3J§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§86§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §8d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§3J§[_loc1_] as b2ManifoldPoint).§8d§();
            _loc1_++;
         }
         this.§86§.§7!@§();
         this.m_localPoint.§7!@§();
         this.§!!y§ = 0;
         this.§[!3§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§[!3§ = param1.§[!3§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§3J§[_loc2_] as b2ManifoldPoint).Set(param1.§3J§[_loc2_]);
            _loc2_++;
         }
         this.§86§.SetV(param1.§86§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§!!y§ = param1.§!!y§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
