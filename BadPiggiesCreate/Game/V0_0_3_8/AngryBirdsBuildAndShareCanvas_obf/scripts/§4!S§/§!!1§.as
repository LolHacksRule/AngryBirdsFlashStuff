package §4!S§
{
   import §%h§.§5X§;
   
   public class §!!1§ extends §"!K§
   {
       
      
      protected var §;&§:String = null;
      
      protected var §6T§:Boolean = true;
      
      protected var §4t§:Number = 1.0;
      
      public function §!!1§(param1:§5X§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§;&§ = param2;
         this.§6T§ = param3;
      }
      
      override public function init() : void
      {
         §>"2§.initEmptyEnvironment(this.§;&§,this.§6T§);
         §>"2§.camera.initSlowScroll(this.§4t§);
      }
   }
}
