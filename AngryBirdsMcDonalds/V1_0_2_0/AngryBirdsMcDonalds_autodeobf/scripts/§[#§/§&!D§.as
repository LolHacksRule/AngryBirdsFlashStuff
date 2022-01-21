package §[#§
{
   import §'a§.§0!f§;
   
   public class §&!D§ extends §?!P§
   {
       
      
      protected var §>P§:String = null;
      
      protected var §&+§:Boolean = true;
      
      protected var §7n§:Number = 1.0;
      
      public function §&!D§(param1:§0!f§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§>P§ = param2;
         this.§&+§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§>P§,this.§&+§);
         mLevelMain.camera.initSlowScroll(this.§7n§);
      }
   }
}
