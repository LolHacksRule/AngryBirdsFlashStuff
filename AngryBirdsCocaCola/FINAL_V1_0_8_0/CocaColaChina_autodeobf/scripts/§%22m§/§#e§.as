package §"m§
{
   import §&F§.§>!2§;
   
   public class §#e§ extends §2!Z§
   {
       
      
      protected var §8!L§:String = null;
      
      protected var §9!G§:Boolean = true;
      
      protected var §-!O§:Number = 1.0;
      
      public function §#e§(param1:§>!2§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8!L§ = param2;
         this.§9!G§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§8!L§,this.§9!G§);
         mLevelMain.camera.initSlowScroll(this.§-!O§);
      }
   }
}
