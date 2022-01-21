package §[!L§
{
   import §3!@§.§ s§;
   
   public class §9![§ extends §'!U§
   {
       
      
      protected var §>!`§:String = null;
      
      protected var §2q§:Boolean = true;
      
      protected var §#§:Number = 1.0;
      
      public function §9![§(param1:§ s§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§>!`§ = param2;
         this.§2q§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§>!`§,this.§2q§);
         mLevelMain.camera.initSlowScroll(this.§#§);
      }
   }
}
