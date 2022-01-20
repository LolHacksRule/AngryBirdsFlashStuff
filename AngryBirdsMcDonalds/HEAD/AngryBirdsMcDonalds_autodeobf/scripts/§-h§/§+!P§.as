package §-h§
{
   import § !J§.§%M§;
   
   public class §+!P§ extends §?!W§
   {
       
      
      protected var §">§:String = null;
      
      protected var §6!T§:Boolean = true;
      
      protected var §,!a§:Number = 1.0;
      
      public function §+!P§(param1:§%M§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§">§ = param2;
         this.§6!T§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§">§,this.§6!T§);
         mLevelMain.camera.initSlowScroll(this.§,!a§);
      }
   }
}
