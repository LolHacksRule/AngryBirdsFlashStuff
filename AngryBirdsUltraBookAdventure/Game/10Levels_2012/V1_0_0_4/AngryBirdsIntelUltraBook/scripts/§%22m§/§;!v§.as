package §"m§
{
   import §,!5§.§^g§;
   
   public class §;!v§ extends §1!%§
   {
       
      
      protected var §+!m§:String = null;
      
      protected var §^!m§:Boolean = true;
      
      protected var §4![§:Number = 1.0;
      
      public function §;!v§(param1:§^g§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§+!m§ = param2;
         this.§^!m§ = param3;
      }
      
      override public function init() : void
      {
         §?l§.initEmptyEnvironment(this.§+!m§,this.§^!m§);
         §?l§.camera.initSlowScroll(this.§4![§);
      }
   }
}
