package §,y§
{
   import §4!s§.§%I§;
   
   public class §8!w§ extends §]s§
   {
       
      
      protected var §<!v§:String = null;
      
      protected var §?!F§:Boolean = true;
      
      protected var §?g§:Number = 1.0;
      
      public function §8!w§(param1:§%I§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§<!v§ = param2;
         this.§?!F§ = param3;
      }
      
      override public function init() : void
      {
         §,!T§.initEmptyEnvironment(this.§<!v§,this.§?!F§);
         §,!T§.camera.initSlowScroll(this.§?g§);
      }
   }
}
