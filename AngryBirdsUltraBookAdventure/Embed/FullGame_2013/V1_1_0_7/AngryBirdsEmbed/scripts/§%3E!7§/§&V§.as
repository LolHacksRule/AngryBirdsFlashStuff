package §>!7§
{
   import §6A§.§ !§;
   
   public class §&V§ extends §!q§
   {
       
      
      protected var §@t§:String = null;
      
      protected var §var §:Boolean = true;
      
      protected var §0+§:Number = 1.0;
      
      public function §&V§(param1:§ !§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§@t§ = param2;
         this.§var § = param3;
      }
      
      override public function init() : void
      {
         §?V§.initEmptyEnvironment(this.§@t§,this.§var §);
         §?V§.camera.initSlowScroll(this.§0+§);
      }
   }
}
