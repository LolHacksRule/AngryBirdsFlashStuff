package §^t§
{
   import § !_§.*;
   import §+&§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const § !A§:int = 1;
      
      public static const §&![§:int = 2;
      
      public static const §+!=§:int = 4;
       
      
      public var §]!G§:Vector.<b2ManifoldPoint>;
      
      public var §@;§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3!a§:int;
      
      public var § use§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§]!G§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§]!G§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§@;§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §=s§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§]!G§[_loc1_] as b2ManifoldPoint).§=s§();
            _loc1_++;
         }
         this.§@;§.§>!T§();
         this.m_localPoint.§>!T§();
         this.§3!a§ = 0;
         this.§ use§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§ use§ = param1.§ use§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§]!G§[_loc2_] as b2ManifoldPoint).Set(param1.§]!G§[_loc2_]);
            _loc2_++;
         }
         this.§@;§.SetV(param1.§@;§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3!a§ = param1.§3!a§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
