package §7"O§
{
   import §#!$§.§2,§;
   import §<"s§.§@![§;
   
   public class §["a§
   {
       
      
      protected var §"q§:§@![§;
      
      public function §["a§()
      {
         super();
         this.§"q§ = §@![§(§;"@§.singleton.popupManager);
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§"q§.isTransitioning();
      }
      
      public function dispose() : void
      {
         this.§"q§.removeEventListener(§2,§.§;"N§,this.onTransitionMiddle);
      }
      
      protected function onTransitionMiddle(param1:§2,§) : void
      {
      }
   }
}
