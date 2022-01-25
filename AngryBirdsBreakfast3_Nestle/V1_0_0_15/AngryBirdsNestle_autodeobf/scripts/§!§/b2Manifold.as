package §!§
{
   import §'!_§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9!+§:int = 1;
      
      public static const §'h§:int = 2;
      
      public static const §!F§:int = 4;
       
      
      public var §`9§:Vector.<b2ManifoldPoint>;
      
      public var §4!D§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5Q§:int;
      
      public var §4!5§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§`9§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§`9§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§4!D§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §[!2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`9§[_loc1_] as b2ManifoldPoint).§[!2§();
            _loc1_++;
         }
         this.§4!D§.§>![§();
         this.m_localPoint.§>![§();
         this.§5Q§ = 0;
         this.§4!5§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§4!5§ = param1.§4!5§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`9§[_loc2_] as b2ManifoldPoint).Set(param1.§`9§[_loc2_]);
            _loc2_++;
         }
         this.§4!D§.SetV(param1.§4!D§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5Q§ = param1.§5Q§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
