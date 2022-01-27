package §>r§
{
   import §7!I§.*;
   import §7"A§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §=g§:int = 1;
      
      public static const § !e§:int = 2;
      
      public static const §'!=§:int = 4;
       
      
      public var §+"5§:Vector.<b2ManifoldPoint>;
      
      public var §!!M§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §<"a§:int;
      
      public var §="#§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§+"5§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§+"5§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§!!M§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §`"v§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+"5§[_loc1_] as b2ManifoldPoint).§`"v§();
            _loc1_++;
         }
         this.§!!M§.§6![§();
         this.m_localPoint.§6![§();
         this.§<"a§ = 0;
         this.§="#§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§="#§ = param1.§="#§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+"5§[_loc2_] as b2ManifoldPoint).Set(param1.§+"5§[_loc2_]);
            _loc2_++;
         }
         this.§!!M§.SetV(param1.§!!M§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§<"a§ = param1.§<"a§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
