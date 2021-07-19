package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3#<§ extends Sprite
   {
       
      
      protected var §!!I§:Number;
      
      protected var §5i§:Number;
      
      protected var §6"5§:Number;
      
      protected var §%#V§:§[#R§;
      
      protected var §5!f§:Number;
      
      protected var §3#M§:Number;
      
      public function §3#<§(param1:Number = 1.25, param2:Number = 0.13)
      {
         super();
         this.§!!I§ = this.§5i§ = this.§6"5§ = 1;
         this.§5!f§ = param1;
         this.§3#M§ = param2;
         addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:Event) : void
      {
         if(this.§%#V§)
         {
            this.§%#V§.stop();
         }
         this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":this.§5!f§},null,this.§3#M§,§9!Z§.easeOut);
         this.§%#V§.play();
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      protected function onOut(param1:Event) : void
      {
         if(this.§%#V§)
         {
            this.§%#V§.stop();
         }
         this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,this.§3#M§,§9!Z§.easeOut);
         this.§%#V§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§6"5§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         this.§6"5§ = param1;
         super.scaleX = this.§!!I§ * this.§6"5§;
         super.scaleY = this.§5i§ * this.§6"5§;
      }
      
      override public function get scaleX() : Number
      {
         return this.§!!I§;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         this.§!!I§ = param1;
         super.scaleX = this.§!!I§ * this.§6"5§;
      }
      
      override public function get scaleY() : Number
      {
         return this.§5i§;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         this.§5i§ = param1;
         super.scaleY = this.§5i§ * this.§6"5§;
      }
   }
}
