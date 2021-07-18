package §]C§
{
   import §9N§.§9!%§;
   
   public class §^]§ extends §5_§
   {
       
      
      private var §8!W§:String = null;
      
      private var §@!3§:Boolean = true;
      
      protected var §0!C§:Number = 1.0;
      
      public function §^]§(param1:§9!%§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8!W§ = param2;
         this.§@!3§ = param3;
      }
      
      override public function init() : void
      {
         §8@§.initEmptyEnvironment(this.§8!W§,this.§@!3§);
         §8@§.camera.initSlowScroll(this.§0!C§);
      }
   }
}
