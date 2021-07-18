package §0!]§
{
   import §!"e§.§9#B§;
   import §4#!§.§ t§;
   
   public class §%!#§
   {
       
      
      protected var §5M§:§9#B§;
      
      public function §%!#§()
      {
         super();
         this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§5M§.isTransitioning();
      }
      
      public function dispose() : void
      {
         this.§5M§.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
      }
      
      protected function onTransitionMiddle(param1:§ t§) : void
      {
      }
   }
}
