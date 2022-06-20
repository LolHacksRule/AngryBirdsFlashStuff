package §4$E§
{
   import §?!C§.*;
   import §?N§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §&$§:int = 1;
      
      public static const §%!^§:int = 2;
      
      public static const §!"i§:int = 4;
       
      
      public var §"f§:Vector.<b2ManifoldPoint>;
      
      public var §&#t§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5"F§:int;
      
      public var §`!o§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§"f§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"f§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§&#t§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §!!C§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"f§[_loc1_] as b2ManifoldPoint).§!!C§();
            _loc1_++;
         }
         this.§&#t§.§1c§();
         this.m_localPoint.§1c§();
         this.§5"F§ = 0;
         this.§`!o§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§`!o§ = param1.§`!o§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§"f§[_loc2_] as b2ManifoldPoint).Set(param1.§"f§[_loc2_]);
            _loc2_++;
         }
         this.§&#t§.SetV(param1.§&#t§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5"F§ = param1.§5"F§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
