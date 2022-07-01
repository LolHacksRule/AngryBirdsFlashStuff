package §1W§
{
   import §12§.§-!U§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §@f§.§4d§;
   import flash.display.MovieClip;
   
   public class §;"$§ extends §-!U§
   {
       
      
      protected var §3H§:MovieClip;
      
      protected var §!q§:§?v§;
      
      protected var §+!?§:§5" §;
      
      protected var §4!J§:Number;
      
      protected var §<!z§:Number;
      
      public function §;"$§()
      {
         this.§4!J§ = this.§3H§.height;
         this.§<!z§ = this.§3H§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §-!b§(param1:§5" §, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§!q§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§5" §) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§5" §, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§5" §) : void
      {
      }
      
      public function §=1§(param1:Boolean) : §?v§
      {
         if(param1)
         {
            this.§!q§.setEnabled(false);
            this.§!q§.setComponentState(§4d§.§&!i§);
         }
         else
         {
            this.§!q§.setEnabled(true);
            this.§!q§.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§!q§;
      }
      
      override public function get height() : Number
      {
         return this.§4!J§;
      }
      
      override public function get width() : Number
      {
         return this.§<!z§;
      }
   }
}
