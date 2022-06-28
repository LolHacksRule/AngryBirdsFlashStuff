package §91§
{
   import §]!@§.LevelMain;
   
   public class §4!"§ extends BasicController
   {
       
      
      protected var §!!A§:String = null;
      
      protected var §;!7§:Boolean = true;
      
      protected var §]"§:Number = 1.0;
      
      public function §4!"§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§!!A§ = param2;
         this.§;!7§ = param3;
      }
      
      override public function init() : void
      {
         §`s§.initEmptyEnvironment(this.§!!A§,this.§;!7§);
         §`s§.camera.initSlowScroll(this.§]"§);
      }
   }
}
