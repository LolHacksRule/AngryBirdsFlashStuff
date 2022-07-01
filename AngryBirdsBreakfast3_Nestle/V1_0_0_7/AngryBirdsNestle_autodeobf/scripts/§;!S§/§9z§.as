package §;!S§
{
   import §+g§.§'!e§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import flash.display.MovieClip;
   
   public class §9z§ extends §'!e§
   {
       
      
      protected var §0Q§:MovieClip;
      
      protected var §1!y§:§73§;
      
      protected var §2!§:§]"4§;
      
      protected var §1!@§:Number;
      
      protected var §5!q§:Number;
      
      public function §9z§()
      {
         this.§1!@§ = this.§0Q§.height;
         this.§5!q§ = this.§0Q§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §4!H§(param1:§]"4§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§1!y§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§]"4§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§]"4§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§]"4§) : void
      {
      }
      
      public function §!!9§(param1:Boolean) : §73§
      {
         if(param1)
         {
            this.§1!y§.setEnabled(false);
            this.§1!y§.setComponentState(§3!W§.§9k§);
         }
         else
         {
            this.§1!y§.setEnabled(true);
            this.§1!y§.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§1!y§;
      }
      
      override public function get height() : Number
      {
         return this.§1!@§;
      }
      
      override public function get width() : Number
      {
         return this.§5!q§;
      }
   }
}
