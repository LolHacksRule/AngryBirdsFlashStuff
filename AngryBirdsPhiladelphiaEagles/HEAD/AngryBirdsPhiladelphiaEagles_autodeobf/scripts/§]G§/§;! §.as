package §]G§
{
   import §%"§.§ do§;
   
   public class §;! § extends §8!=§
   {
       
      
      protected var §#6§:String = null;
      
      protected var §1!N§:Boolean = true;
      
      protected var §6!9§:Number = 1.0;
      
      public function §;! §(param1:§ do§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§#6§ = param2;
         this.§1!N§ = param3;
      }
      
      override public function init() : void
      {
         §-H§.initEmptyEnvironment(this.§#6§,this.§1!N§);
         §-H§.camera.initSlowScroll(this.§6!9§);
      }
   }
}
