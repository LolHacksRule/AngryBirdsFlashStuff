package §9!o§
{
   import §'<§.§=!o§;
   import §0I§.§!!p§;
   
   public class §=!-§ extends §=!>§
   {
       
      
      protected var §7_§:String = null;
      
      protected var §4!Y§:Boolean = true;
      
      protected var §?!V§:Number = 1.0;
      
      public function §=!-§(param1:§!!p§, param2:§=!o§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§7_§ = param3;
         this.§4!Y§ = param4;
      }
      
      override public function init() : void
      {
         §-!r§.initializeEmptyEnvironment(this.§7_§,this.§4!Y§);
         §-!r§.camera.initSlowScroll(this.§?!V§);
      }
   }
}
