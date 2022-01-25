package §8S§
{
   import §5!?§.§>"§;
   
   public class §%!>§ extends §#!,§
   {
       
      
      protected var §23§:String = null;
      
      protected var §`!?§:Boolean = true;
      
      protected var §5o§:Number = 1.0;
      
      public function §%!>§(param1:§>"§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§23§ = param2;
         this.§`!?§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§23§,this.§`!?§);
         mLevelMain.camera.initSlowScroll(this.§5o§);
      }
   }
}
