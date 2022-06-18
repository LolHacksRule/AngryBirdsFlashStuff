package §8E§
{
   import §9T§.§=!^§;
   
   public class §@Z§ extends §#!8§
   {
       
      
      protected var §@0§:String = null;
      
      protected var §0b§:Boolean = true;
      
      protected var §?v§:Number = 1.0;
      
      public function §@Z§(param1:§=!^§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§@0§ = param2;
         this.§0b§ = param3;
      }
      
      override public function init() : void
      {
         §&?§.initEmptyEnvironment(this.§@0§,this.§0b§);
         §&?§.camera.initSlowScroll(this.§?v§);
      }
   }
}
