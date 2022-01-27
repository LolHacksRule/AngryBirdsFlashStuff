package §]!=§
{
   import §,#+§.§7!m§;
   import §5!q§.§3"X§;
   
   public class §<M§ extends §?,§
   {
       
      
      protected var §<!h§:String = null;
      
      protected var §0L§:Boolean = true;
      
      protected var §=!%§:Number = 1.0;
      
      public function §<M§(param1:§3"X§, param2:§7!m§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§<!h§ = param3;
         this.§0L§ = param4;
      }
      
      override public function init() : void
      {
         §]""§.initializeEmptyEnvironment(this.§<!h§,this.§0L§);
         §]""§.camera.initSlowScroll(this.§=!%§);
      }
   }
}
