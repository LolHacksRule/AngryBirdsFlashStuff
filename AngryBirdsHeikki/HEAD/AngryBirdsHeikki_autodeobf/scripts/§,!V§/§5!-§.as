package §,!V§
{
   import §9!'§.§0!%§;
   
   public class §5!-§ extends §,k§
   {
       
      
      protected var §-a§:String = null;
      
      protected var §@?§:Boolean = true;
      
      protected var §`!f§:Number = 1.0;
      
      public function §5!-§(param1:§0!%§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§-a§ = param2;
         this.§@?§ = param3;
      }
      
      override public function init() : void
      {
         §]B§.initEmptyEnvironment(this.§-a§,this.§@?§);
         §]B§.camera.initSlowScroll(this.§`!f§);
      }
   }
}
