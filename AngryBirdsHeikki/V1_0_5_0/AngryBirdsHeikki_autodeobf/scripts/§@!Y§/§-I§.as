package §@!Y§
{
   import §"!G§.§#!'§;
   import §+D§.§5!P§;
   
   public class §-I§ extends §#!'§
   {
       
      
      public function §-I§(param1:§5!P§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §4!]§ = param4;
      }
      
      override public function init() : void
      {
         §^!4§.initEmptyEnvironment(§]_§,§8!Y§);
         §^!4§.camera.initSlowScroll(§4!]§);
         §^!4§.camera.manualScale = 0.4;
      }
   }
}
