package §8!I§
{
   import §4x§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]!T§:Vector.<Number>;
      
      public var §%e§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§]!T§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§%e§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
