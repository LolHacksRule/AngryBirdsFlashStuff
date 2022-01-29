package §@!S§
{
   import §?N§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §9$E§:Vector.<Number>;
      
      public var §^#S§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§9$E§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§^#S§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
