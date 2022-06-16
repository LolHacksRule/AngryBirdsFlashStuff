package §+_§
{
   import §`!4§.§6l§;
   
   public class §,f§ extends §+3§
   {
       
      
      protected var §^!E§:String = null;
      
      protected var §8!I§:Boolean = true;
      
      protected var §5!@§:Number = 1.0;
      
      public function §,f§(param1:§6l§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§^!E§ = param2;
         this.§8!I§ = param3;
      }
      
      override public function init() : void
      {
         §#J§.initEmptyEnvironment(this.§^!E§,this.§8!I§);
         §#J§.camera.initSlowScroll(this.§5!@§);
      }
   }
}
