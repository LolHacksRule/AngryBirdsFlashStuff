package §4U§
{
   import §#!M§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §>#§:Vector.<Number>;
      
      public var §#I§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§>#§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§#I§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
