package §+d§
{
   import §6%§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §#3§:Vector.<Number>;
      
      public var § 2§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§#3§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§ 2§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
