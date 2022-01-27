package §0!]§
{
   import §-#a§.§4!Y§;
   import §4#!§.§ t§;
   
   public class §9#9§ extends §%!#§
   {
       
      
      protected var §8#N§:Function;
      
      public function §9#9§(param1:Function)
      {
         super();
         this.§8#N§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§8#N§ = null;
      }
      
      public function §7"c§(param1:Boolean) : void
      {
         var _loc2_:String = §4!Y§.§!!]§;
         var _loc3_:§4!Y§ = new §4!Y§(_loc2_,param1);
         §5M§.addEventListener(§ t§.§4o§,this.onTransitionMiddle);
         §5M§.setTransition(_loc3_,true,true);
         §5M§.showTransition(_loc2_,false);
      }
      
      override protected function onTransitionMiddle(param1:§ t§) : void
      {
         §5M§.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
         this.§8#N§(true);
      }
   }
}
