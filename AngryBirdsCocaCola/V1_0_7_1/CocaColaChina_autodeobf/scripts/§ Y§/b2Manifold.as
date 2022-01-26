package § Y§
{
   import §#!M§.*;
   import §<!8§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §#!H§:int = 1;
      
      public static const §5N§:int = 2;
      
      public static const §5!J§:int = 4;
       
      
      public var §>!B§:Vector.<b2ManifoldPoint>;
      
      public var §"!§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §'!c§:int;
      
      public var §!L§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§>!B§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§>!B§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§"!§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §&4§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§>!B§[_loc1_] as b2ManifoldPoint).§&4§();
            _loc1_++;
         }
         this.§"!§.§`§();
         this.m_localPoint.§`§();
         this.§'!c§ = 0;
         this.§!L§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§!L§ = param1.§!L§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§>!B§[_loc2_] as b2ManifoldPoint).Set(param1.§>!B§[_loc2_]);
            _loc2_++;
         }
         this.§"!§.SetV(param1.§"!§);
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
