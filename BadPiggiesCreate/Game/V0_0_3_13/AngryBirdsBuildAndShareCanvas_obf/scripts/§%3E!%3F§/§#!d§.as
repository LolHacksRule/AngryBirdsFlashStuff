package §>!?§
{
   import §8!E§.§?!X§;
   
   public class §#!d§ extends §'6§
   {
       
      
      protected var §3!V§:String = null;
      
      protected var §6"+§:Boolean = true;
      
      protected var § !'§:Number = 1.0;
      
      public function §#!d§(param1:§?!X§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§3!V§ = param2;
         this.§6"+§ = param3;
      }
      
      override public function init() : void
      {
         §7!;§.initEmptyEnvironment(this.§3!V§,this.§6"+§);
         §7!;§.camera.initSlowScroll(this.§ !'§);
      }
   }
}
