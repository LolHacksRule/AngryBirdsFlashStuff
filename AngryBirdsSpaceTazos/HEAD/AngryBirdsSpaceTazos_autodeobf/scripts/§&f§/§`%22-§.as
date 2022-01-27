package §&f§
{
   import §1z§.§^!@§;
   import §3"#§.§`"8§;
   
   public class §`"-§ extends §9!6§
   {
       
      
      protected var §-9§:String = null;
      
      protected var §2n§:Boolean = true;
      
      protected var §+!Q§:Number = 1.0;
      
      public function §`"-§(param1:§`"8§, param2:§^!@§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§-9§ = param3;
         this.§2n§ = param4;
      }
      
      override public function init() : void
      {
         §'"9§.initializeEmptyEnvironment(this.§-9§,this.§2n§);
         §'"9§.camera.initSlowScroll(this.§+!Q§);
      }
   }
}
