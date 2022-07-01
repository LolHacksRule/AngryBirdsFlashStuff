package §5!o§
{
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>§:int = 1;
      
      public static const §1!0§:int = 2;
      
      public static const §7" §:int = 4;
       
      
      public var §5!'§:Vector.<b2ManifoldPoint>;
      
      public var §,"'§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §="1§:int;
      
      public var §<!c§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§5!'§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§5!'§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§,"'§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §%i§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§5!'§[_loc1_] as b2ManifoldPoint).§%i§();
            _loc1_++;
         }
         this.§,"'§.§@!s§();
         this.m_localPoint.§@!s§();
         this.§="1§ = 0;
         this.§<!c§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§<!c§ = param1.§<!c§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§5!'§[_loc2_] as b2ManifoldPoint).Set(param1.§5!'§[_loc2_]);
            _loc2_++;
         }
         this.§,"'§.SetV(param1.§,"'§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§="1§ = param1.§="1§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
