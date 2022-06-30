package §3!b§
{
   import §"!I§.§^!2§;
   
   public class §;F§ extends §^!N§
   {
       
      
      protected var §!A§:String = null;
      
      protected var §5B§:Boolean = true;
      
      protected var §1!6§:Number = 1.0;
      
      public function §;F§(param1:§^!2§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§!A§ = param2;
         this.§5B§ = param3;
      }
      
      override public function init() : void
      {
         §=!V§.initEmptyEnvironment(this.§!A§,this.§5B§);
         §=!V§.camera.initSlowScroll(this.§1!6§);
      }
   }
}
