package §-p§
{
   import §4!<§.§'!S§;
   
   public class §&h§ extends §+"N§
   {
       
      
      protected var §&!M§:String = null;
      
      protected var §!";§:Boolean = true;
      
      protected var §^p§:Number = 1.0;
      
      public function §&h§(param1:§'!S§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§&!M§ = param2;
         this.§!";§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§&!M§,this.§!";§);
         mLevelMain.camera.initSlowScroll(this.§^p§);
      }
   }
}
