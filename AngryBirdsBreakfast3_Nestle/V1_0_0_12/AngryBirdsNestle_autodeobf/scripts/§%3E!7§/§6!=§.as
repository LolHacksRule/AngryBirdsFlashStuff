package §>!7§
{
   import §!R§.§-!T§;
   import §#b§.§[9§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import flash.display.MovieClip;
   
   public class §6!=§ extends §[9§
   {
       
      
      protected var §%"%§:MovieClip;
      
      protected var §9!K§:§ `§;
      
      protected var §6!b§:§%n§;
      
      protected var §+i§:Number;
      
      protected var §!!a§:Number;
      
      public function §6!=§()
      {
         this.§+i§ = this.§%"%§.height;
         this.§!!a§ = this.§%"%§.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function §-w§(param1:§%n§, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.§9!K§)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:§%n§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§%n§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§%n§) : void
      {
      }
      
      public function §4""§(param1:Boolean) : § `§
      {
         if(param1)
         {
            this.§9!K§.setEnabled(false);
            this.§9!K§.setComponentState(§-!T§.§,!H§);
         }
         else
         {
            this.§9!K§.setEnabled(true);
            this.§9!K§.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.§9!K§;
      }
      
      override public function get height() : Number
      {
         return this.§+i§;
      }
      
      override public function get width() : Number
      {
         return this.§!!a§;
      }
   }
}
