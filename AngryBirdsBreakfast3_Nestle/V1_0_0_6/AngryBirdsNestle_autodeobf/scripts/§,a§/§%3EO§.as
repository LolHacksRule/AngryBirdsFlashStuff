package §,a§
{
   import §&<§.§@j§;
   import §?!J§.§#e§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import flash.display.MovieClip;
   
   public class §>O§ extends §#e§
   {
       
      
      protected var §"!M§:MovieClip;
      
      protected var §@!]§:§^!g§;
      
      protected var §6!i§:§3j§;
      
      protected var §^!4§:Number;
      
      protected var §+"0§:Number;
      
      public function §>O§()
      {
         this.§^!4§ = this.§"!M§.height;
         this.§+"0§ = this.§"!M§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §'!1§(param1:§3j§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§@!]§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§3j§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§3j§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§3j§) : void
      {
      }
      
      public function §7!s§(param1:Boolean) : §^!g§
      {
         if(param1)
         {
            this.§@!]§.setEnabled(false);
            this.§@!]§.setComponentState(§@j§.§]P§);
         }
         else
         {
            this.§@!]§.setEnabled(true);
            this.§@!]§.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§@!]§;
      }
      
      override public function get height() : Number
      {
         return this.§^!4§;
      }
      
      override public function get width() : Number
      {
         return this.§+"0§;
      }
   }
}
