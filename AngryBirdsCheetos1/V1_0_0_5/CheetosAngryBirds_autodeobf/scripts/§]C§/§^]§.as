package §]C§
{
   import §?'§.§9N§;
   
   public class §^]§ extends §5_§
   {
       
      
      private var §0^§:String = null;
      
      private var §@!3§:Boolean = true;
      
      protected var §0!C§:Number = 1.0;
      
      public function §^]§(param1:§9N§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§0^§ = param2;
         this.§@!3§ = param3;
      }
      
      override public function init() : void
      {
         §;c§.initEmptyEnvironment(this.§0^§,this.§@!3§);
         §;c§.camera.initSlowScroll(this.§0!C§);
      }
   }
}
