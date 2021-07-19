package §'"-§
{
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>E§:int = 1;
      
      public static const §[!7§:int = 2;
      
      public static const §?!Q§:int = 4;
       
      
      public var §4!_§:Vector.<b2ManifoldPoint>;
      
      public var §3=§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §<"@§:int;
      
      public var §0,§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§4!_§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§4!_§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§3=§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<"U§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§4!_§[_loc1_] as b2ManifoldPoint).§<"U§();
            _loc1_++;
         }
         this.§3=§.§%y§();
         this.m_localPoint.§%y§();
         this.§<"@§ = 0;
         this.§0,§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§0,§ = param1.§0,§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§4!_§[_loc2_] as b2ManifoldPoint).Set(param1.§4!_§[_loc2_]);
            _loc2_++;
         }
         this.§3=§.SetV(param1.§3=§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§<"@§ = param1.§<"@§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
