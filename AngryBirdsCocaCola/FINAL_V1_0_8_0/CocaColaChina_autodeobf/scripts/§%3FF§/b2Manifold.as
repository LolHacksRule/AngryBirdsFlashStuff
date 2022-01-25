package §?F§
{
   import §6V§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §-G§:int = 1;
      
      public static const §3s§:int = 2;
      
      public static const §'!T§:int = 4;
       
      
      public var §1!§:Vector.<b2ManifoldPoint>;
      
      public var §4!F§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2M§:int;
      
      public var §6p§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§1!§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§1!§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4!F§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §>[§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1!§[_loc1_] as b2ManifoldPoint).§>[§();
            _loc1_++;
         }
         this.§4!F§.§;@§();
         this.m_localPoint.§;@§();
         this.§2M§ = 0;
         this.§6p§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§6p§ = param1.§6p§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§1!§[_loc2_] as b2ManifoldPoint).Set(param1.§1!§[_loc2_]);
            _loc2_++;
         }
         this.§4!F§.SetV(param1.§4!F§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§2M§ = param1.§2M§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
