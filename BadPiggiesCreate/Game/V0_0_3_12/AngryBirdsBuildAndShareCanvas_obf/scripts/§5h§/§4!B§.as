package §5h§
{
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §7"1§.§%W§;
   import com.rovio.assets.§!"'§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §4!B§ extends §`!5§
   {
      
      private static const §<X§:Number = 0.001;
      
      private static const §8l§:uint = 9292;
      
      private static const §`3§:Number = 0.6;
       
      
      private var §5!d§:Sprite;
      
      private var §@"&§:DisplayObject;
      
      private var §-G§:MovieClip;
      
      private var §'g§:DisplayObject;
      
      private var §[Y§:Vector.<DisplayObject>;
      
      private var §3"6§:Boolean = false;
      
      private var §0s§:§+I§;
      
      public function §4!B§()
      {
         super();
         this.§5!d§ = new Sprite();
         addChild(this.§5!d§);
         this.§@"&§ = new §!"'§.§%!Q§("night_gradient")();
         this.§@"&§.alpha = 1;
         this.§'g§ = new §!"'§.§%!Q§("moon")();
         addChild(this.§'g§);
         this.§'g§.x = this.§'g§.width;
         this.§[Y§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §!"'§.§%!Q§("TextField_StabilityTimer");
         this.§-G§ = new _loc2_();
         addChild(this.§-G§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§5!d§.alpha = 0;
         this.§@"&§.y = -this.§@"&§.height;
         this.§3"6§ = false;
         this.§'g§.y = -100;
         this.§0s§ = §-!M§.§ "!§.§+d§(this.§'g§,{"y":80},{"y":-300},1.5,§-!M§.§ §);
         this.§0s§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §%W§.§;v§();
         var _loc2_:int = §%W§.§>^§();
         this.§5!d§.graphics.clear();
         this.§5!d§.graphics.beginFill(§8l§,1);
         this.§5!d§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§5!d§.graphics.endFill();
         this.§@"&§.width = this.§5!d§.width;
         this.§-G§.x = _loc1_ / 2 - this.§-G§.width / 2;
         this.§-G§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§3"6§ ? -1 : 1;
         this.§5!d§.alpha = Math.max(0,Math.min(§`3§,this.§5!d§.alpha + _loc2_ * param1 * §<X§));
         this.§@"&§.y = -this.§@"&§.height + this.§5!d§.alpha / §`3§ * this.§@"&§.height;
      }
      
      public function §%!q§() : void
      {
         this.§3"6§ = true;
         this.§5P§();
         this.setText("Fail!");
      }
      
      public function §9" §() : void
      {
         this.§3"6§ = true;
         this.§5P§();
         this.setText("Done!");
      }
      
      private function §5P§() : void
      {
         if(this.§0s§)
         {
            this.§0s§.stop();
         }
         this.§0s§ = §-!M§.§ "!§.§+d§(this.§'g§,{"y":-300},{"y":this.§'g§.y},1.5,§-!M§.§5",§);
         this.§0s§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§-G§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
