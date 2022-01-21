package §7!5§
{
   import §7!Y§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §7q§:Vector.<Number>;
      
      public var §>I§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§7q§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§>I§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
