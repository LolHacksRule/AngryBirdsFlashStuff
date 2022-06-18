package §'8§
{
   import §+!%§.§'!"§;
   
   public class §,,§ extends §2^§
   {
       
      
      protected var §<V§:String = null;
      
      protected var §3K§:Boolean = true;
      
      protected var §15§:Number = 1.0;
      
      public function §,,§(param1:§'!"§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§<V§ = param2;
         this.§3K§ = param3;
      }
      
      override public function init() : void
      {
         §]U§.initEmptyEnvironment(this.§<V§,this.§3K§);
         §]U§.camera.initSlowScroll(this.§15§);
      }
   }
}
