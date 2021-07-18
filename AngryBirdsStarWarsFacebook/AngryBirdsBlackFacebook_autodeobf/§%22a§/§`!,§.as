package §"a§
{
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   
   public class §`!,§ extends §3!z§
   {
       
      
      protected var §"!n§:String = null;
      
      protected var §!"y§:Boolean = true;
      
      protected var §<!C§:Number = 1.0;
      
      public function §`!,§(param1:§#_§, param2:§+"2§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§"!n§ = param3;
         this.§!"y§ = param4;
      }
      
      override public function init() : void
      {
         §2#G§.initializeEmptyEnvironment(this.§"!n§,this.§!"y§);
         §2#G§.camera.initSlowScroll(this.§<!C§);
      }
   }
}
