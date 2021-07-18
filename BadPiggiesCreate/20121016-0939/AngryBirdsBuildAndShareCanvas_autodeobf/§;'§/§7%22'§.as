package §;'§
{
   import §5!V§.§!w§;
   
   public class §7"'§ extends §"!&§
   {
       
      
      protected var §[!i§:String = null;
      
      protected var §5!A§:Boolean = true;
      
      protected var §3!=§:Number = 1.0;
      
      public function §7"'§(param1:§!w§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§[!i§ = param2;
         this.§5!A§ = param3;
      }
      
      override public function init() : void
      {
         §9q§.initEmptyEnvironment(this.§[!i§,this.§5!A§);
         §9q§.camera.initSlowScroll(this.§3!=§);
      }
   }
}
