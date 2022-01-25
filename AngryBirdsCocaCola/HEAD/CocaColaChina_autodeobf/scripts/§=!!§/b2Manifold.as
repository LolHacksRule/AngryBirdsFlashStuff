package §=!!§
{
   import §&!L§.*;
   import §7!C§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §5N§:int = 1;
      
      public static const §5!J§:int = 2;
      
      public static const §6z§:int = 4;
       
      
      public var §7i§:Vector.<b2ManifoldPoint>;
      
      public var §!L§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §'!c§:int;
      
      public var §#!H§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§7i§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7i§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§!L§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §0c§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7i§[_loc1_] as b2ManifoldPoint).§0c§();
            _loc1_++;
         }
         this.§!L§.§`§();
         this.m_localPoint.§`§();
         this.§'!c§ = 0;
         this.§#!H§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§#!H§ = param1.§#!H§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7i§[_loc2_] as b2ManifoldPoint).Set(param1.§7i§[_loc2_]);
            _loc2_++;
         }
         this.§!L§.SetV(param1.§!L§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§'!c§ = param1.§'!c§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
