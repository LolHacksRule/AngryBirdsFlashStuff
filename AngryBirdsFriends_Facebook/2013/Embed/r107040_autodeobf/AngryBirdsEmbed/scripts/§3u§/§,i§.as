package §3u§
{
   import §9s§.§^9§;
   
   public class §,i§ extends §>'§
   {
       
      
      protected var §#2§:String = null;
      
      protected var §==§:Boolean = true;
      
      protected var §3l§:Number = 1.0;
      
      public function §,i§(param1:§^9§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§#2§ = param2;
         this.§==§ = param3;
      }
      
      override public function init() : void
      {
         §4!I§.initEmptyEnvironment(this.§#2§,this.§==§);
         §4!I§.camera.initSlowScroll(this.§3l§);
      }
   }
}
