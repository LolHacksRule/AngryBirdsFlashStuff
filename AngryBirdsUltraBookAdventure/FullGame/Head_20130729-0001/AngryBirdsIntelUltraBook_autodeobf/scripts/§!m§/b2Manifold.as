package §!m§
{
   import §+!g§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §@!"§:int = 1;
      
      public static const §<!!§:int = 2;
      
      public static const §&!>§:int = 4;
       
      
      public var §&!2§:Vector.<b2ManifoldPoint>;
      
      public var §-O§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2!5§:int;
      
      public var §5<§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§&!2§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§&!2§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§-O§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §9=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&!2§[_loc1_] as b2ManifoldPoint).§9=§();
            _loc1_++;
         }
         this.§-O§.§@!;§();
         this.m_localPoint.§@!;§();
         this.§2!5§ = 0;
         this.§5<§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§5<§ = param1.§5<§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§&!2§[_loc2_] as b2ManifoldPoint).Set(param1.§&!2§[_loc2_]);
            _loc2_++;
         }
         this.§-O§.SetV(param1.§-O§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§2!5§ = param1.§2!5§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
