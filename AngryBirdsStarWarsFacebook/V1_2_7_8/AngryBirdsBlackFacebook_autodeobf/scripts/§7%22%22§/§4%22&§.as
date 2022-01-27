package §7""§
{
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4"&§ extends Sprite
   {
       
      
      protected var §=#4§:Number;
      
      protected var §3#'§:Number;
      
      protected var §`r§:Number;
      
      protected var §>!t§:§4!Q§;
      
      protected var §^!o§:Number;
      
      protected var §5e§:Number;
      
      public function §4"&§(param1:Number = 1.25, param2:Number = 0.13)
      {
         super();
         this.§=#4§ = this.§3#'§ = this.§`r§ = 1;
         this.§^!o§ = param1;
         this.§5e§ = param2;
         addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:Event) : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.stop();
         }
         this.§>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":this.§^!o§},null,this.§5e§,§<!Q§.easeOut);
         this.§>!t§.play();
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      protected function onOut(param1:Event) : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.stop();
         }
         this.§>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":1},null,this.§5e§,§<!Q§.easeOut);
         this.§>!t§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§`r§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         this.§`r§ = param1;
         super.scaleX = this.§=#4§ * this.§`r§;
         super.scaleY = this.§3#'§ * this.§`r§;
      }
      
      override public function get scaleX() : Number
      {
         return this.§=#4§;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         this.§=#4§ = param1;
         super.scaleX = this.§=#4§ * this.§`r§;
      }
      
      override public function get scaleY() : Number
      {
         return this.§3#'§;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         this.§3#'§ = param1;
         super.scaleY = this.§3#'§ * this.§`r§;
      }
   }
}
