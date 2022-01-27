package §`"]§
{
   import §!"-§.§]"_§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § D§ extends Sprite
   {
       
      
      protected var §`!W§:Number;
      
      protected var §&U§:Number;
      
      protected var §2!v§:Number;
      
      protected var §%!1§:§%b§;
      
      protected var §="7§:Number;
      
      protected var §[h§:Number;
      
      public function § D§(param1:Number = 1.25, param2:Number = 0.13)
      {
         super();
         this.§`!W§ = this.§&U§ = this.§2!v§ = 1;
         this.§="7§ = param1;
         this.§[h§ = param2;
         addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:Event) : void
      {
         if(this.§%!1§)
         {
            this.§%!1§.stop();
         }
         this.§%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":this.§="7§},null,this.§[h§,§]"_§.easeOut);
         this.§%!1§.play();
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      protected function onOut(param1:Event) : void
      {
         if(this.§%!1§)
         {
            this.§%!1§.stop();
         }
         this.§%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":1},null,this.§[h§,§]"_§.easeOut);
         this.§%!1§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§2!v§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         this.§2!v§ = param1;
         super.scaleX = this.§`!W§ * this.§2!v§;
         super.scaleY = this.§&U§ * this.§2!v§;
      }
      
      override public function get scaleX() : Number
      {
         return this.§`!W§;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         this.§`!W§ = param1;
         super.scaleX = this.§`!W§ * this.§2!v§;
      }
      
      override public function get scaleY() : Number
      {
         return this.§&U§;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         this.§&U§ = param1;
         super.scaleY = this.§&U§ * this.§2!v§;
      }
   }
}
