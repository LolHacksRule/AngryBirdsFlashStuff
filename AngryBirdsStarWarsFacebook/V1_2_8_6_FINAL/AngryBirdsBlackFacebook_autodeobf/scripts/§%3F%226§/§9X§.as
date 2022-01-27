package §?"6§
{
   import §"§.§;!E§;
   import §null §.§5#§;
   
   public class §9X§ extends § !^§
   {
       
      
      protected var §#P§:String = null;
      
      protected var §?4§:Boolean = true;
      
      protected var §8"q§:Number = 1.0;
      
      public function §9X§(param1:§;!E§, param2:§5#§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§#P§ = param3;
         this.§?4§ = param4;
      }
      
      override public function init() : void
      {
         §+!E§.initializeEmptyEnvironment(this.§#P§,this.§?4§);
         §+!E§.camera.initSlowScroll(this.§8"q§);
      }
   }
}
