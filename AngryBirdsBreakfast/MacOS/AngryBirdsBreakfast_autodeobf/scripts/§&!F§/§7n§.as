package §&!F§
{
   import §,L§.§%J§;
   import §-!u§.§2u§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import flash.display.MovieClip;
   
   public class §7n§ extends §2u§
   {
       
      
      protected var §'!#§:MovieClip;
      
      protected var §4!H§:§;§;
      
      protected var §<!J§:§"!a§;
      
      protected var §implements§:Number;
      
      protected var §-r§:Number;
      
      public function §7n§()
      {
         this.§implements§ = this.§'!#§.height;
         this.§-r§ = this.§'!#§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §<!m§(param1:§"!a§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§4!H§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§"!a§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§"!a§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§"!a§) : void
      {
      }
      
      public function §+!6§(param1:Boolean) : §;§
      {
         if(param1)
         {
            this.§4!H§.setEnabled(false);
            this.§4!H§.setComponentState(§%J§.§2!r§);
         }
         else
         {
            this.§4!H§.setEnabled(true);
            this.§4!H§.setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§4!H§;
      }
      
      override public function get height() : Number
      {
         return this.§implements§;
      }
      
      override public function get width() : Number
      {
         return this.§-r§;
      }
   }
}
