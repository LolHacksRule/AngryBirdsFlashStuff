package §9!$§
{
   import §'!3§.*;
   import §3q§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §throw§:int = 1;
      
      public static const §[!$§:int = 2;
      
      public static const §3!+§:int = 4;
       
      
      public var §^G§:Vector.<b2ManifoldPoint>;
      
      public var §[R§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5! §:int;
      
      public var §+!K§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§^G§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§^G§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§[R§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §5!X§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§^G§[_loc1_] as b2ManifoldPoint).§5!X§();
            _loc1_++;
         }
         this.§[R§.§<!5§();
         this.m_localPoint.§<!5§();
         this.§5! § = 0;
         this.§+!K§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§+!K§ = param1.§+!K§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§^G§[_loc2_] as b2ManifoldPoint).Set(param1.§^G§[_loc2_]);
            _loc2_++;
         }
         this.§[R§.SetV(param1.§[R§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5! § = param1.§5! §;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
