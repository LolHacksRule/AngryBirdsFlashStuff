package §0!>§
{
   import §?$#§.§<d§;
   import §?o§.§4#?§;
   
   public class §2"5§ extends §+#5§
   {
       
      
      protected var §0f§:String = null;
      
      protected var §-"[§:Boolean = true;
      
      protected var §2n§:Number = 1.0;
      
      public function §2"5§(param1:§<d§, param2:§4#?§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§0f§ = param3;
         this.§-"[§ = param4;
      }
      
      override public function init() : void
      {
         § 6§.initializeEmptyEnvironment(this.§0f§,this.§-"[§);
         § 6§.camera.initSlowScroll(this.§2n§);
      }
   }
}
