package § M§
{
   import §'4§.§^g§;
   import §`!j§.§9"!§;
   
   public class §`"2§ extends §;!!§
   {
       
      
      protected var §;!2§:String = null;
      
      protected var §["E§:Boolean = true;
      
      protected var §,9§:Number = 1.0;
      
      public function §`"2§(param1:§^g§, param2:§9"!§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§;!2§ = param3;
         this.§["E§ = param4;
      }
      
      override public function init() : void
      {
         §?>§.initializeEmptyEnvironment(this.§;!2§,this.§["E§);
         §?>§.camera.initSlowScroll(this.§,9§);
      }
   }
}
