package §5s§
{
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   
   public class §]s§ extends §6z§
   {
       
      
      protected var §7"<§:String = null;
      
      protected var §`O§:Boolean = true;
      
      protected var §'c§:Number = 1.0;
      
      public function §]s§(param1:§1!R§, param2:§,!j§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§7"<§ = param3;
         this.§`O§ = param4;
      }
      
      override public function init() : void
      {
         §;H§.initializeEmptyEnvironment(this.§7"<§,this.§`O§);
         §;H§.camera.initSlowScroll(this.§'c§);
      }
   }
}
