package §"!J§
{
   import §>2§.§4h§;
   
   public class §'!%§ extends §@4§
   {
       
      
      protected var §5! §:String = null;
      
      protected var §7!A§:Boolean = true;
      
      protected var §;!F§:Number = 1.0;
      
      public function §'!%§(param1:§4h§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§5! § = param2;
         this.§7!A§ = param3;
      }
      
      override public function init() : void
      {
         §@k§.initEmptyEnvironment(this.§5! §,this.§7!A§);
         §@k§.camera.initSlowScroll(this.§;!F§);
      }
   }
}
