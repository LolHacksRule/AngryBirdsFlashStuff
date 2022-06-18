package § !F§
{
   import §8!`§.§4J§;
   
   public class §4!U§ extends §9B§
   {
       
      
      protected var §9S§:String = null;
      
      protected var §%!M§:Boolean = true;
      
      protected var § Q§:Number = 1.0;
      
      public function §4!U§(param1:§4J§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§9S§ = param2;
         this.§%!M§ = param3;
      }
      
      override public function init() : void
      {
         §'N§.initEmptyEnvironment(this.§9S§,this.§%!M§);
         §'N§.camera.initSlowScroll(this.§ Q§);
      }
   }
}
