package §9"&§
{
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[!b§.§]"-§;
   import flash.display.MovieClip;
   import §for §.§<!]§;
   
   public class §28§ extends §<!]§
   {
       
      
      protected var §1!2§:MovieClip;
      
      protected var §0!v§:§4!O§;
      
      protected var §#!y§:§9!'§;
      
      protected var §^!V§:Number;
      
      protected var §'^§:Number;
      
      public function §28§()
      {
         this.§^!V§ = this.§1!2§.height;
         this.§'^§ = this.§1!2§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §7!#§(param1:§9!'§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§0!v§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§9!'§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§9!'§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§9!'§) : void
      {
      }
      
      public function §]!P§(param1:Boolean) : §4!O§
      {
         if(param1)
         {
            this.§0!v§.setEnabled(false);
            this.§0!v§.setComponentState(§]"-§.§2"0§);
         }
         else
         {
            this.§0!v§.setEnabled(true);
            this.§0!v§.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§0!v§;
      }
      
      override public function get height() : Number
      {
         return this.§^!V§;
      }
      
      override public function get width() : Number
      {
         return this.§'^§;
      }
   }
}
