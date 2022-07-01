package §9!Z§
{
   import §'I§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §9S§:Vector.<Number>;
      
      public var §#!<§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§9S§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§#!<§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
