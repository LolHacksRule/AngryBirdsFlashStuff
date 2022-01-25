package §^!&§
{
   import §2!G§.§2!V§;
   
   public class §?!N§ extends §&!$§
   {
       
      
      protected var §;!>§:String = null;
      
      protected var §1r§:Boolean = true;
      
      protected var §6_§:Number = 1.0;
      
      public function §?!N§(param1:§2!V§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§;!>§ = param2;
         this.§1r§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§;!>§,this.§1r§);
         mLevelMain.camera.initSlowScroll(this.§6_§);
      }
   }
}
