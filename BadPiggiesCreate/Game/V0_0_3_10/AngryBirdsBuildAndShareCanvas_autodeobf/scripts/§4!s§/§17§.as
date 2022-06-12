package §4!s§
{
   import §1U§.§"!V§;
   import §^I§.§5! §;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   
   public class §17§ extends Sprite
   {
       
      
      protected var §9!M§:Sprite;
      
      protected var §?!i§:DisplayObject;
      
      protected var §>!i§:Sprite;
      
      public function §17§()
      {
         super();
         addChild(this.§>!i§ = new Sprite());
         this.§>!i§.addChild(this.§9!M§ = new Sprite());
         this.§?!i§ = new §5! §(2,2,0);
         this.§?!i§.width = §"!V§.§<!8§;
         this.§?!i§.height = §"!V§.§[V§;
         addChild(this.§?!i§);
         this.§?!i§.alpha = 0.5;
      }
      
      public function get §%!6§() : Sprite
      {
         return this.§9!M§;
      }
      
      public function get §,!q§() : DisplayObject
      {
         return this.§?!i§;
      }
      
      public function get §^f§() : Sprite
      {
         return this.§>!i§;
      }
      
      public function §&!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?!i§.width / this.§?!i§.height;
         this.§?!i§.width = param1 + 600 / _loc3_;
         this.§?!i§.height = param2 + 600 / _loc3_;
      }
   }
}
