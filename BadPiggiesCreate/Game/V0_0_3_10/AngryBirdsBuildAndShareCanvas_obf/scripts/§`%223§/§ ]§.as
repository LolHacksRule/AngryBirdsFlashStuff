package §`"3§
{
   import §1U§.§"!V§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class § ]§ extends §%"7§
   {
      
      private static const §&"-§:Number = 0.001;
      
      private static const §'"#§:uint = 9292;
      
      private static const §3b§:Number = 0.6;
       
      
      private var §[m§:Sprite;
      
      private var §?"'§:DisplayObject;
      
      private var §+""§:MovieClip;
      
      private var §-v§:DisplayObject;
      
      private var §;!#§:Vector.<DisplayObject>;
      
      private var §@!0§:Boolean = false;
      
      private var §5U§:§^F§;
      
      public function § ]§()
      {
         super();
         this.§[m§ = new Sprite();
         addChild(this.§[m§);
         this.§?"'§ = new §5!+§.§,]§("night_gradient")();
         this.§?"'§.alpha = 1;
         addChild(this.§?"'§);
         this.§-v§ = new §5!+§.§,]§("moon")();
         addChild(this.§-v§);
         this.§-v§.x = this.§-v§.width;
         this.§;!#§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §5!+§.§,]§("TextField_StabilityTimer");
         this.§+""§ = new _loc2_();
         addChild(this.§+""§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§[m§.alpha = 0;
         this.§?"'§.y = -this.§?"'§.height;
         this.§@!0§ = false;
         this.§-v§.y = -100;
         this.§5U§ = §<y§.§,l§.§]!C§(this.§-v§,{"y":80},{"y":-300},1.5,§<y§.§9!=§);
         this.§5U§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §"!V§.§ !N§();
         var _loc2_:int = §"!V§.§@!w§();
         this.§[m§.graphics.clear();
         this.§[m§.graphics.beginFill(§'"#§,1);
         this.§[m§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§[m§.graphics.endFill();
         this.§?"'§.width = this.§[m§.width;
         this.§+""§.x = _loc1_ / 2 - this.§+""§.width / 2;
         this.§+""§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§@!0§ ? -1 : 1;
         this.§[m§.alpha = Math.max(0,Math.min(§3b§,this.§[m§.alpha + _loc2_ * param1 * §&"-§));
         this.§?"'§.y = -this.§?"'§.height + this.§[m§.alpha / §3b§ * this.§?"'§.height;
      }
      
      public function §+!S§() : void
      {
         this.§@!0§ = true;
         this.§6!#§();
         this.setText("Fail!");
      }
      
      public function §`!u§() : void
      {
         this.§@!0§ = true;
         this.§6!#§();
         this.setText("Done!");
      }
      
      private function §6!#§() : void
      {
         if(this.§5U§)
         {
            this.§5U§.stop();
         }
         this.§5U§ = §<y§.§,l§.§]!C§(this.§-v§,{"y":-300},{"y":this.§-v§.y},1.5,§<y§.§-!]§);
         this.§5U§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§+""§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
