package §>A§
{
   import §`i§.§2W§;
   
   public class §`!!§ extends §2!1§
   {
       
      
      protected var § !5§:String = null;
      
      protected var §@§:Boolean = true;
      
      protected var §3Y§:Number = 1.0;
      
      public function §`!!§(param1:§2W§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§ !5§ = param2;
         this.§@§ = param3;
      }
      
      override public function init() : void
      {
         §"8§.initEmptyEnvironment(this.§ !5§,this.§@§);
         §"8§.camera.initSlowScroll(this.§3Y§);
      }
   }
}
