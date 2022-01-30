package §,P§
{
   import §-%§.*;
   import §>!R§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1X§:int = 1;
      
      public static const §`!&§:int = 2;
      
      public static const §%!Z§:int = 4;
       
      
      public var §@!_§:Vector.<b2ManifoldPoint>;
      
      public var §=!5§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §^Z§:int;
      
      public var §"!;§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§@!_§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§@!_§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§=!5§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §=a§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§@!_§[_loc1_] as b2ManifoldPoint).§=a§();
            _loc1_++;
         }
         this.§=!5§.§'p§();
         this.m_localPoint.§'p§();
         this.§^Z§ = 0;
         this.§"!;§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§"!;§ = param1.§"!;§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§@!_§[_loc2_] as b2ManifoldPoint).Set(param1.§@!_§[_loc2_]);
            _loc2_++;
         }
         this.§=!5§.SetV(param1.§=!5§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§^Z§ = param1.§^Z§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
