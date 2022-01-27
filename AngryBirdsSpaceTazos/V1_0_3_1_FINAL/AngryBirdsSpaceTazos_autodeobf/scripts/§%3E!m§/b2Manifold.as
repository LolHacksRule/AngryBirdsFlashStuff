package §>!m§
{
   import §8K§.*;
   import §[!f§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1!n§:int = 1;
      
      public static const §]w§:int = 2;
      
      public static const §"s§:int = 4;
       
      
      public var §9x§:Vector.<b2ManifoldPoint>;
      
      public var §,!J§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §9!w§:int;
      
      public var §"!g§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§9x§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§9x§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§,!J§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §;c§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§9x§[_loc1_] as b2ManifoldPoint).§;c§();
            _loc1_++;
         }
         this.§,!J§.§]#§();
         this.m_localPoint.§]#§();
         this.§9!w§ = 0;
         this.§"!g§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§"!g§ = param1.§"!g§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§9x§[_loc2_] as b2ManifoldPoint).Set(param1.§9x§[_loc2_]);
            _loc2_++;
         }
         this.§,!J§.SetV(param1.§,!J§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§9!w§ = param1.§9!w§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
