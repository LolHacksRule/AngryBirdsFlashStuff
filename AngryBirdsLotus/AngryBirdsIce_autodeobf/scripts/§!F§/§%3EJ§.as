package §!F§
{
   import §[x§.§2^§;
   
   public class §>J§ extends §`!&§
   {
       
      
      protected var §2T§:String = null;
      
      protected var §9I§:Boolean = true;
      
      protected var §3C§:Number = 1.0;
      
      public function §>J§(param1:§2^§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§2T§ = param2;
         this.§9I§ = param3;
      }
      
      override public function init() : void
      {
         §1! §.initEmptyEnvironment(this.§2T§,this.§9I§);
         §1! §.camera.initSlowScroll(this.§3C§);
      }
   }
}
