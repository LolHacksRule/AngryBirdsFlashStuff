package § g§
{
   import §,§.§ p§;
   
   public class §1!`§ extends §"!X§
   {
       
      
      protected var §]f§:String = null;
      
      protected var § X§:Boolean = true;
      
      protected var §>!X§:Number = 1.0;
      
      public function §1!`§(param1:§ p§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§]f§ = param2;
         this.§ X§ = param3;
      }
      
      override public function init() : void
      {
         §^!I§.initEmptyEnvironment(this.§]f§,this.§ X§);
         §^!I§.camera.initSlowScroll(this.§>!X§);
      }
   }
}
