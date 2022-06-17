package §3![§
{
   import §9"!§.§9"3§;
   
   public class §1F§ extends §#y§
   {
       
      
      protected var §8!i§:String = null;
      
      protected var §#!<§:Boolean = true;
      
      protected var §4!o§:Number = 1.0;
      
      public function §1F§(param1:§9"3§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8!i§ = param2;
         this.§#!<§ = param3;
      }
      
      override public function init() : void
      {
         §@O§.initEmptyEnvironment(this.§8!i§,this.§#!<§);
         §@O§.camera.initSlowScroll(this.§4!o§);
      }
   }
}
