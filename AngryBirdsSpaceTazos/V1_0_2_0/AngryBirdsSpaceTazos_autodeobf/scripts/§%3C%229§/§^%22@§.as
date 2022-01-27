package §<"9§
{
   import §;!0§.;
   import §?!<§.§'!1§;
   
   public class §^"@§ extends §2!O§
   {
       
      
      protected var §`!G§:String = null;
      
      protected var §]!0§:Boolean = true;
      
      protected var §9"8§:Number = 1.0;
      
      public function §^"@§(param1:§'!1§, param2:§#2§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§`!G§ = param3;
         this.§]!0§ = param4;
      }
      
      override public function init() : void
      {
         §1!3§.initializeEmptyEnvironment(this.§`!G§,this.§]!0§);
         §1!3§.camera.initSlowScroll(this.§9"8§);
      }
   }
}
