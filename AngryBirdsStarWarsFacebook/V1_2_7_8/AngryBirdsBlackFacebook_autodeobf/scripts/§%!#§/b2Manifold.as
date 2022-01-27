package §%!#§
{
   import §9!s§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §!!L§:int = 1;
      
      public static const §;"d§:int = 2;
      
      public static const §5"S§:int = 4;
       
      
      public var §`Y§:Vector.<b2ManifoldPoint>;
      
      public var §9!'§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §?I§:int;
      
      public var §+"`§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§`Y§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§`Y§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§9!'§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §1"x§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`Y§[_loc1_] as b2ManifoldPoint).§1"x§();
            _loc1_++;
         }
         this.§9!'§.§@e§();
         this.m_localPoint.§@e§();
         this.§?I§ = 0;
         this.§+"`§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§+"`§ = param1.§+"`§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`Y§[_loc2_] as b2ManifoldPoint).Set(param1.§`Y§[_loc2_]);
            _loc2_++;
         }
         this.§9!'§.SetV(param1.§9!'§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§?I§ = param1.§?I§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
