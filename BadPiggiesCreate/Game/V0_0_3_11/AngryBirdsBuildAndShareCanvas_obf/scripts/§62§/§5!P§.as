package §62§
{
   import §1!v§.§@%§;
   
   public class §5!P§ extends §7! §
   {
       
      
      protected var §2!h§:String = null;
      
      protected var §4"7§:Boolean = true;
      
      protected var §"!U§:Number = 1.0;
      
      public function §5!P§(param1:§@%§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§2!h§ = param2;
         this.§4"7§ = param3;
      }
      
      override public function init() : void
      {
         §]Z§.initEmptyEnvironment(this.§2!h§,this.§4"7§);
         §]Z§.camera.initSlowScroll(this.§"!U§);
      }
   }
}
