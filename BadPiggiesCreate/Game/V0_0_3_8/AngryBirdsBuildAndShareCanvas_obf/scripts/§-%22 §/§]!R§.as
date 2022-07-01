package §-" §
{
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §`%§.§8!0§;
   import com.rovio.assets.§%"4§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §]!R§ extends §if §
   {
      
      private static const §,!<§:Number = 0.001;
      
      private static const §%!v§:uint = 9292;
      
      private static const §!!B§:Number = 0.6;
       
      
      private var §!!q§:Sprite;
      
      private var §6!5§:DisplayObject;
      
      private var §;"§:MovieClip;
      
      private var §3!K§:DisplayObject;
      
      private var §%!c§:Vector.<DisplayObject>;
      
      private var §%#§:Boolean = false;
      
      private var §^>§:§;!5§;
      
      public function §]!R§()
      {
         super();
         this.§!!q§ = new Sprite();
         addChild(this.§!!q§);
         this.§6!5§ = new §%"4§.§>!v§("night_gradient")();
         this.§6!5§.alpha = 1;
         addChild(this.§6!5§);
         this.§3!K§ = new §%"4§.§>!v§("moon")();
         addChild(this.§3!K§);
         this.§3!K§.x = this.§3!K§.width;
         this.§%!c§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §%"4§.§>!v§("TextField_StabilityTimer");
         this.§;"§ = new _loc2_();
         addChild(this.§;"§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§!!q§.alpha = 0;
         this.§6!5§.y = -this.§6!5§.height;
         this.§%#§ = false;
         this.§3!K§.y = -100;
         this.§^>§ = §"!5§.§9j§.§4!p§(this.§3!K§,{"y":80},{"y":-300},1.5,§"!5§.§1a§);
         this.§^>§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §8!0§.§]f§();
         var _loc2_:int = §8!0§.§4!;§();
         this.§!!q§.graphics.clear();
         this.§!!q§.graphics.beginFill(§%!v§,1);
         this.§!!q§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§!!q§.graphics.endFill();
         this.§6!5§.width = this.§!!q§.width;
         this.§;"§.x = _loc1_ / 2 - this.§;"§.width / 2;
         this.§;"§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§%#§ ? -1 : 1;
         this.§!!q§.alpha = Math.max(0,Math.min(§!!B§,this.§!!q§.alpha + _loc2_ * param1 * §,!<§));
         this.§6!5§.y = -this.§6!5§.height + this.§!!q§.alpha / §!!B§ * this.§6!5§.height;
      }
      
      public function §<_§() : void
      {
         this.§%#§ = true;
         this.§"S§();
         this.setText("Fail!");
      }
      
      public function §4!x§() : void
      {
         this.§%#§ = true;
         this.§"S§();
         this.setText("Done!");
      }
      
      private function §"S§() : void
      {
         if(this.§^>§)
         {
            this.§^>§.stop();
         }
         this.§^>§ = §"!5§.§9j§.§4!p§(this.§3!K§,{"y":-300},{"y":this.§3!K§.y},1.5,§"!5§.§+!F§);
         this.§^>§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§;"§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
