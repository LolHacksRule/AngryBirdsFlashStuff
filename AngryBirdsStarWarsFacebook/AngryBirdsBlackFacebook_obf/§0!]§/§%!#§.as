package §0!]§
{
   import §!"e§.§9#B§;
   import §4#!§.§ t§;
   
   public class §%!#§
   {
       
      
      protected var §5M§:§9#B§;
      
      public function §%!#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
         }
         while(!_loc1_);
         
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§5M§.isTransitioning();
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5M§.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
         }
      }
      
      protected function onTransitionMiddle(param1:§ t§) : void
      {
      }
   }
}
