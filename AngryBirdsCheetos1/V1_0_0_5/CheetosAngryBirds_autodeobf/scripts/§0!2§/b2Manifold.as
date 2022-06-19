package §0!2§
{
   import §;]§.*;
   import §=E§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §in §:int = 1;
      
      public static const §<'§:int = 2;
      
      public static const §-b§:int = 4;
       
      
      public var §+!S§:Vector.<b2ManifoldPoint>;
      
      public var §1J§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3c§:int;
      
      public var §39§:int = 0;
      
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
         this.§1J§ = new b2Vec2();
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
         this.§1J§.§^!#§();
         this.m_localPoint.§^!#§();
         this.§3c§ = 0;
         this.§39§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§39§ = param1.§39§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§+!S§[_loc2_] as b2ManifoldPoint).Set(param1.§+!S§[_loc2_]);
            _loc2_++;
         }
         this.§1J§.SetV(param1.§1J§);
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
