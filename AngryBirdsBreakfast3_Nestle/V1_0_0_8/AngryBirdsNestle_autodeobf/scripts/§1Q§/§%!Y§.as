package §1Q§
{
   import §8!e§.§3"&§;
   import §9G§.§2F§;
   
   public class §%!Y§ extends §]_§
   {
       
      
      protected var §6]§:String = null;
      
      protected var §>!#§:Boolean = true;
      
      protected var §@!g§:Number = 1.0;
      
      public function §%!Y§(param1:§2F§, param2:§3"&§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§6]§ = param3;
         this.§>!#§ = param4;
      }
      
      override public function init() : void
      {
         §5M§.initializeEmptyEnvironment(this.§6]§,this.§>!#§);
         §5M§.camera.initSlowScroll(this.§@!g§);
      }
   }
}
