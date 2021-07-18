package §]§
{
   import §%!0§.§,4§;
   
   public class §[!m§ extends §`!7§
   {
       
      
      protected var §,9§:String = null;
      
      protected var §@"+§:Boolean = true;
      
      protected var §'!u§:Number = 1.0;
      
      public function §[!m§(param1:§,4§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§,9§ = param2;
         this.§@"+§ = param3;
      }
      
      override public function init() : void
      {
         §`!G§.initEmptyEnvironment(this.§,9§,this.§@"+§);
         §`!G§.camera.initSlowScroll(this.§'!u§);
      }
   }
}
