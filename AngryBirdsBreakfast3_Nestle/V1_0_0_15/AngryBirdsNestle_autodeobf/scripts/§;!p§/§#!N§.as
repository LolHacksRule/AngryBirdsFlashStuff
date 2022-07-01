package §;!p§
{
   import §'"!§.§-!g§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §74§.§^z§;
   import flash.display.MovieClip;
   
   public class §#!N§ extends §^z§
   {
       
      
      protected var §=a§:MovieClip;
      
      protected var §^"0§:§]"%§;
      
      protected var §]!D§:§,6§;
      
      protected var §`!2§:Number;
      
      protected var §'"3§:Number;
      
      public function §#!N§()
      {
         this.§`!2§ = this.§=a§.height;
         this.§'"3§ = this.§=a§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §9e§(param1:§,6§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§^"0§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§,6§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§,6§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§,6§) : void
      {
      }
      
      public function §""-§(param1:Boolean) : §]"%§
      {
         if(param1)
         {
            this.§^"0§.setEnabled(false);
            this.§^"0§.setComponentState(§-!g§.§+O§);
         }
         else
         {
            this.§^"0§.setEnabled(true);
            this.§^"0§.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§^"0§;
      }
      
      override public function get height() : Number
      {
         return this.§`!2§;
      }
      
      override public function get width() : Number
      {
         return this.§'"3§;
      }
   }
}
