package §7!&§
{
   import §'I§.*;
   import §?"'§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §2l§:int = 1;
      
      public static const §6!p§:int = 2;
      
      public static const §+!h§:int = 4;
       
      
      public var §#$§:Vector.<b2ManifoldPoint>;
      
      public var §<!y§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §[!5§:int;
      
      public var §<X§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§#$§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§#$§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§<!y§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §`p§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§#$§[_loc1_] as b2ManifoldPoint).§`p§();
            _loc1_++;
         }
         this.§<!y§.§6!c§();
         this.m_localPoint.§6!c§();
         this.§[!5§ = 0;
         this.§<X§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§<X§ = param1.§<X§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§#$§[_loc2_] as b2ManifoldPoint).Set(param1.§#$§[_loc2_]);
            _loc2_++;
         }
         this.§<!y§.SetV(param1.§<!y§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§[!5§ = param1.§[!5§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
