package §#I§
{
   import §@!3§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]Q§:Vector.<Number>;
      
      public var §5!K§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§]Q§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§5!K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
