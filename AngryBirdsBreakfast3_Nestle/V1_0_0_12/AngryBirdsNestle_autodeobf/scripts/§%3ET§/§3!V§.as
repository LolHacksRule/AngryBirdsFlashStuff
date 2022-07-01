package §>T§
{
   import § 2§.§=+§;
   
   public class §3!V§ extends §>X§
   {
       
      
      protected var §?!b§:String = null;
      
      protected var §4'§:Boolean = true;
      
      protected var §,!>§:Number = 1.0;
      
      public function §3!V§(param1:§=+§, param2:§-g§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§?!b§ = param3;
         this.§4'§ = param4;
      }
      
      override public function init() : void
      {
         §false§.initializeEmptyEnvironment(this.§?!b§,this.§4'§);
         §false§.camera.initSlowScroll(this.§,!>§);
      }
   }
}
