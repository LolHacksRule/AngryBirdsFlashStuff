package §7!4§
{
   import §"o§.§ M§;
   
   public class §+!2§ extends §]!6§
   {
       
      
      protected var §`!?§:String = null;
      
      protected var §1-§:Boolean = true;
      
      protected var §3_§:Number = 1.0;
      
      public function §+!2§(param1:§ M§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§`!?§ = param2;
         this.§1-§ = param3;
      }
      
      override public function init() : void
      {
         § 6§.initEmptyEnvironment(this.§`!?§,this.§1-§);
         § 6§.camera.initSlowScroll(this.§3_§);
      }
   }
}
