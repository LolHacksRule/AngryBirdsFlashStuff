package §!!G§
{
   import §9!?§.§^]§;
   
   public class §6i§ extends §+l§
   {
       
      
      private var §5e§:String = null;
      
      private var §"t§:Boolean = true;
      
      protected var §-p§:Number = 1.0;
      
      public function §6i§(param1:§^]§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§5e§ = param2;
         this.§"t§ = param3;
      }
      
      override public function init() : void
      {
         §]!9§.initEmptyEnvironment(this.§5e§,this.§"t§);
         §]!9§.camera.initSlowScroll(this.§-p§);
      }
   }
}
