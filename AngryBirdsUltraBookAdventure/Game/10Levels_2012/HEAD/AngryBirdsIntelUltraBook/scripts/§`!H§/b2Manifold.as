package §`!H§
{
   import §8!H§.*;
   import §?!&§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §&>§:int = 1;
      
      public static const §0^§:int = 2;
      
      public static const §'!h§:int = 4;
       
      
      public var § 2§:Vector.<b2ManifoldPoint>;
      
      public var §4!f§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §@!D§:int;
      
      public var §7I§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§ 2§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§ 2§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4!f§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §`!B§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ 2§[_loc1_] as b2ManifoldPoint).§`!B§();
            _loc1_++;
         }
         this.§4!f§.§@l§();
         this.m_localPoint.§@l§();
         this.§@!D§ = 0;
         this.§7I§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§7I§ = param1.§7I§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§ 2§[_loc2_] as b2ManifoldPoint).Set(param1.§ 2§[_loc2_]);
            _loc2_++;
         }
         this.§4!f§.SetV(param1.§4!f§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§@!D§ = param1.§@!D§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
