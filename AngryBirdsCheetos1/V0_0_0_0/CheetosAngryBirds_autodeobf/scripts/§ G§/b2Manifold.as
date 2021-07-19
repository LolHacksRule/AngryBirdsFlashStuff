package § G§
{
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §<'§:int = 1;
      
      public static const §-b§:int = 2;
      
      public static const §3D§:int = 4;
       
      
      public var §+!S§:Vector.<b2ManifoldPoint>;
      
      public var §39§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3c§:int;
      
      public var §in §:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§+!S§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§+!S§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§39§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §"o§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+!S§[_loc1_] as b2ManifoldPoint).§"o§();
            _loc1_++;
         }
         this.§39§.§^!#§();
         this.m_localPoint.§^!#§();
         this.§3c§ = 0;
         this.§in § = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§in § = param1.§in §;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+!S§[_loc2_] as b2ManifoldPoint).Set(param1.§+!S§[_loc2_]);
            _loc2_++;
         }
         this.§39§.SetV(param1.§39§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3c§ = param1.§3c§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
