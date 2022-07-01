package §;!9§
{
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§-U§;
   import §[!a§.§`?§;
   import flash.display.MovieClip;
   
   public class §1O§ extends §`?§
   {
       
      
      protected var §=!1§:MovieClip;
      
      protected var §[!]§:§9!M§;
      
      protected var §!c§:§^!i§;
      
      protected var §1Z§:Number;
      
      protected var §-"-§:Number;
      
      public function §1O§()
      {
         this.§1Z§ = this.§=!1§.height;
         this.§-"-§ = this.§=!1§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §[9§(param1:§^!i§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§[!]§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§^!i§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§^!i§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§^!i§) : void
      {
      }
      
      public function §!!&§(param1:Boolean) : §9!M§
      {
         if(param1)
         {
            this.§[!]§.setEnabled(false);
            this.§[!]§.setComponentState(§-U§.§;!G§);
         }
         else
         {
            this.§[!]§.setEnabled(true);
            this.§[!]§.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§[!]§;
      }
      
      override public function get height() : Number
      {
         return this.§1Z§;
      }
      
      override public function get width() : Number
      {
         return this.§-"-§;
      }
   }
}
