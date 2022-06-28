package §48§
{
   import §40§.§5G§;
   
   public class §>6§ extends §?x§
   {
       
      
      protected var §<H§:String = null;
      
      protected var §;!G§:Boolean = true;
      
      protected var §>=§:Number = 1.0;
      
      public function §>6§(param1:§5G§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§<H§ = param2;
         this.§;!G§ = param3;
      }
      
      override public function init() : void
      {
         §#!U§.initEmptyEnvironment(this.§<H§,this.§;!G§);
         §#!U§.camera.initSlowScroll(this.§>=§);
      }
   }
}
