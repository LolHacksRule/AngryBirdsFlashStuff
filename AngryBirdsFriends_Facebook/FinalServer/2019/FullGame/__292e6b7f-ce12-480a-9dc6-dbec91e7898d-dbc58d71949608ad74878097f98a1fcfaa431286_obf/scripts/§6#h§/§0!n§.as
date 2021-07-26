package §6#h§
{
   import §#g§.§8§;
   import §7#$§.§]#q§;
   
   public class §0!n§ extends §]!E§
   {
       
      
      protected var §%$@§:String = null;
      
      protected var §#"e§:Boolean = true;
      
      protected var §7"!§:Number = 1.0;
      
      public function §0!n§(param1:§8#3§, param2:§]#q§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§%$@§ = param3;
         this.§#"e§ = param4;
      }
      
      override public function init() : void
      {
         §9!E§.initializeEmptyEnvironment(this.§%$@§,this.§#"e§);
         §9!E§.camera.initSlowScroll(this.§7"!§);
      }
   }
}
