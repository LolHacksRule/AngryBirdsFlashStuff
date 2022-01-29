package §=#G§
{
   import §;$3§.§8=§;
   import §@0§.§%!q§;
   
   public class §]!W§ extends §,!U§
   {
       
      
      protected var §0#y§:String = null;
      
      protected var §+#&§:Boolean = true;
      
      protected var §!"u§:Number = 1.0;
      
      public function §]!W§(param1:§%!q§, param2:§8=§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§0#y§ = param3;
         this.§+#&§ = param4;
      }
      
      override public function init() : void
      {
         §=#N§.initializeEmptyEnvironment(this.§0#y§,this.§+#&§);
         §=#N§.camera.initSlowScroll(this.§!"u§);
      }
   }
}
