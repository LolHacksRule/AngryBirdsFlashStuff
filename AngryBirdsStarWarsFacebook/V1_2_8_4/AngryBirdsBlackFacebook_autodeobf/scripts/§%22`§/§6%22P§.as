package §"`§
{
   import §7!H§.§5k§;
   import §7#'§.§&"Y§;
   
   public class §6"P§ extends §0!I§
   {
       
      
      protected var §9"3§:Function;
      
      public function §6"P§(param1:Function)
      {
         super();
         this.§9"3§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§9"3§ = null;
      }
      
      public function §<"f§(param1:Boolean) : void
      {
         var _loc2_:String = §&"Y§.§8!n§;
         var _loc3_:§&"Y§ = new §&"Y§(_loc2_,param1);
         §?"Q§.addEventListener(§5k§.§"!l§,this.onTransitionMiddle);
         §?"Q§.setTransition(_loc3_,true,true);
         §?"Q§.showTransition(_loc2_,false);
      }
      
      override protected function onTransitionMiddle(param1:§5k§) : void
      {
         §?"Q§.removeEventListener(§5k§.§"!l§,this.onTransitionMiddle);
         this.§9"3§(true);
      }
   }
}
