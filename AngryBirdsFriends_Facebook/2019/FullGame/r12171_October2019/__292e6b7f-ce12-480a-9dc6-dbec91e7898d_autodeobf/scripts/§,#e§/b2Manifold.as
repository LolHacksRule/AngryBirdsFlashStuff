package §,#E§
{
   import §&$+§.*;
   import §04§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9x§:int = 1;
      
      public static const §4^§:int = 2;
      
      public static const §0!p§:int = 4;
       
      
      public var §3!-§:Vector.<b2ManifoldPoint>;
      
      public var §true §:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §#!T§:int;
      
      public var §!!p§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§3!-§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§3!-§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§true § = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §`"R§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§3!-§[_loc1_] as b2ManifoldPoint).§`"R§();
            _loc1_++;
         }
         this.§true §.§3-§();
         this.m_localPoint.§3-§();
         this.§#!T§ = 0;
         this.§!!p§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§!!p§ = param1.§!!p§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§3!-§[_loc2_] as b2ManifoldPoint).Set(param1.§3!-§[_loc2_]);
            _loc2_++;
         }
         this.§true §.SetV(param1.§true §);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§#!T§ = param1.§#!T§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
