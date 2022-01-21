package §"!g§
{
   import §<L§.§!!G§;
   
   public class §2!H§ extends §7!W§
   {
       
      
      protected var §<G§:String = null;
      
      protected var §<!4§:Boolean = true;
      
      protected var §&]§:Number = 1.0;
      
      public function §2!H§(param1:§!!G§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§<G§ = param2;
         this.§<!4§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§<G§,this.§<!4§);
         mLevelMain.camera.initSlowScroll(this.§&]§);
      }
   }
}
