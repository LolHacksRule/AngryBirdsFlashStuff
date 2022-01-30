package §;f§
{
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   
   public class §%!G§ extends §8"5§
   {
       
      
      protected var §"!_§:String = null;
      
      protected var § !M§:Boolean = true;
      
      protected var §9u§:Number = 1.0;
      
      public function §%!G§(param1:§"h§, param2:§5l§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§"!_§ = param3;
         this.§ !M§ = param4;
      }
      
      override public function init() : void
      {
         §`W§.initializeEmptyEnvironment(this.§"!_§,this.§ !M§);
         §`W§.camera.initSlowScroll(this.§9u§);
      }
   }
}
