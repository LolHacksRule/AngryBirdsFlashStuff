package §>z§
{
   import §#;§.§4!8§;
   
   public class § =§ extends §5&§
   {
       
      
      protected var §#!>§:String = null;
      
      protected var §"!$§:Boolean = true;
      
      protected var §4!'§:Number = 1.0;
      
      public function § =§(param1:§4!8§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§#!>§ = param2;
         this.§"!$§ = param3;
      }
      
      override public function init() : void
      {
         §3!3§.initEmptyEnvironment(this.§#!>§,this.§"!$§);
         §3!3§.camera.initSlowScroll(this.§4!'§);
      }
   }
}
