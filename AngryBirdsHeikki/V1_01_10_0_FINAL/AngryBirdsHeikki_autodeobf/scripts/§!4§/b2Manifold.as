package §!4§
{
   import §6A§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §;N§:int = 1;
      
      public static const §%!"§:int = 2;
      
      public static const §9!M§:int = 4;
       
      
      public var §7! §:Vector.<b2ManifoldPoint>;
      
      public var §&h§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2!]§:int;
      
      public var §;6§:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.§7! § = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§7! §[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.§&h§ = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function §;!C§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7! §[_loc1_] as b2ManifoldPoint).§;!C§();
            _loc1_++;
         }
         this.§&h§.§^!,§();
         this.m_localPoint.§^!,§();
         this.§2!]§ = 0;
         this.§;6§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this.§;6§ = param1.§;6§;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§7! §[_loc2_] as b2ManifoldPoint).Set(param1.§7! §[_loc2_]);
            _loc2_++;
         }
         this.§&h§.SetV(param1.§&h§);
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§2!]§ = param1.§2!]§;
      }
      
      public function Copy() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}
