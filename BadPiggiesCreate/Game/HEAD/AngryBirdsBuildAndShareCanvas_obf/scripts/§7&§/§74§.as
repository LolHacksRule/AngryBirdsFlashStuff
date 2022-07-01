package §7&§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import com.rovio.assets.§69§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §74§ extends §9!R§
   {
      
      private static const §31§:Number = 0.001;
      
      private static const §9[§:uint = 9292;
      
      private static const §;!]§:Number = 0.6;
       
      
      private var §7!y§:Sprite;
      
      private var §0!S§:DisplayObject;
      
      private var §4=§:MovieClip;
      
      private var §8m§:DisplayObject;
      
      private var §<"'§:Vector.<DisplayObject>;
      
      private var §7"7§:Boolean = false;
      
      private var §!;§:§=!r§;
      
      public function §74§()
      {
         super();
         this.§7!y§ = new Sprite();
         addChild(this.§7!y§);
         this.§0!S§ = new §69§.§ 0§("night_gradient")();
         this.§0!S§.alpha = 1;
         this.§8m§ = new §69§.§ 0§("moon")();
         addChild(this.§8m§);
         this.§8m§.x = this.§8m§.width;
         this.§<"'§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §69§.§ 0§("TextField_StabilityTimer");
         this.§4=§ = new _loc2_();
         addChild(this.§4=§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§7!y§.alpha = 0;
         this.§0!S§.y = -this.§0!S§.height;
         this.§7"7§ = false;
         this.§8m§.y = -100;
         this.§!;§ = §7I§.§[E§.§ ";§(this.§8m§,{"y":80},{"y":-300},1.5,§7I§.§;!C§);
         this.§!;§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §'_§.§implements§();
         var _loc2_:int = §'_§.§6l§();
         this.§7!y§.graphics.clear();
         this.§7!y§.graphics.beginFill(§9[§,1);
         this.§7!y§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§7!y§.graphics.endFill();
         this.§0!S§.width = this.§7!y§.width;
         this.§4=§.x = _loc1_ / 2 - this.§4=§.width / 2;
         this.§4=§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§7"7§ ? -1 : 1;
         this.§7!y§.alpha = Math.max(0,Math.min(§;!]§,this.§7!y§.alpha + _loc2_ * param1 * §31§));
         this.§0!S§.y = -this.§0!S§.height + this.§7!y§.alpha / §;!]§ * this.§0!S§.height;
      }
      
      public function §%!§() : void
      {
         this.§7"7§ = true;
         this.§>!c§();
         this.setText("Fail!");
      }
      
      public function §]!y§() : void
      {
         this.§7"7§ = true;
         this.§>!c§();
         this.setText("Done!");
      }
      
      private function §>!c§() : void
      {
         if(this.§!;§)
         {
            this.§!;§.stop();
         }
         this.§!;§ = §7I§.§[E§.§ ";§(this.§8m§,{"y":-300},{"y":this.§8m§.y},1.5,§7I§.§7L§);
         this.§!;§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§4=§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
