package §72§
{
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §"^§:int = 1;
      
      public static const §+!M§:int = 2;
      
      public static const §6!X§:int = 4;
       
      
      public var §,!f§:Vector.<b2ManifoldPoint>;
      
      public var §=i§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §+!?§:int;
      
      public var §63§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§,!f§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§,!f§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§=i§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §<!e§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,!f§[_loc1_] as b2ManifoldPoint).§<!e§();
            _loc1_++;
         }
         this.§=i§.§`!5§();
         this.m_localPoint.§`!5§();
         this.§+!?§ = 0;
         this.§63§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§63§ = param1.§63§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§,!f§[_loc2_] as b2ManifoldPoint).Set(param1.§,!f§[_loc2_]);
            _loc2_++;
         }
         this.§=i§.SetV(param1.§=i§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§+!?§ = param1.§+!?§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
