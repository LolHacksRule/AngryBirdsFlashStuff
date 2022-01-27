package §7"O§
{
   import §#!$§.§2,§;
   import §=",§.§#=§;
   
   public class §4"S§ extends §["a§
   {
       
      
      protected var §?"U§:Function;
      
      public function §4"S§(param1:Function)
      {
         super();
         this.§?"U§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§?"U§ = null;
      }
      
      public function §!!`§(param1:Boolean) : void
      {
         var _loc2_:String = §#=§.§&"n§;
         var _loc3_:§#=§ = new §#=§(_loc2_,param1);
         §"q§.addEventListener(§2,§.§;"N§,this.onTransitionMiddle);
         §"q§.setTransition(_loc3_,true,true);
         §"q§.showTransition(_loc2_,false);
      }
      
      override protected function onTransitionMiddle(param1:§2,§) : void
      {
         §"q§.removeEventListener(§2,§.§;"N§,this.onTransitionMiddle);
         this.§?"U§(true);
      }
   }
}
