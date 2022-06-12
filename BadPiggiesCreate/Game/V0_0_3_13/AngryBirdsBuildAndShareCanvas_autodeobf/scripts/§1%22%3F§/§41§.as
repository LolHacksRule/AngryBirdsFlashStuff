package §1"?§
{
   import §=!<§.§5!U§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §41§ extends §'"+§
   {
      
      private static const §4m§:Number = 0.001;
      
      private static const §1;§:uint = 9292;
      
      private static const §1^§:Number = 0.6;
       
      
      private var §!!p§:Sprite;
      
      private var §;"<§:DisplayObject;
      
      private var §8!U§:MovieClip;
      
      private var §3!l§:DisplayObject;
      
      private var §'3§:Vector.<DisplayObject>;
      
      private var § M§:Boolean = false;
      
      private var §^L§:§-!m§;
      
      public function §41§()
      {
         super();
         this.§!!p§ = new Sprite();
         addChild(this.§!!p§);
         this.§;"<§ = new §=#§.§1v§("night_gradient")();
         this.§;"<§.alpha = 1;
         this.§3!l§ = new §=#§.§1v§("moon")();
         addChild(this.§3!l§);
         this.§3!l§.x = this.§3!l§.width;
         this.§'3§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §=#§.§1v§("TextField_StabilityTimer");
         this.§8!U§ = new _loc2_();
         addChild(this.§8!U§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§!!p§.alpha = 0;
         this.§;"<§.y = -this.§;"<§.height;
         this.§ M§ = false;
         this.§3!l§.y = -100;
         this.§^L§ = §"L§.§7!?§.§4!P§(this.§3!l§,{"y":80},{"y":-300},1.5,§"L§.§@v§);
         this.§^L§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §5!U§.§#!t§();
         var _loc2_:int = §5!U§.§%" §();
         this.§!!p§.graphics.clear();
         this.§!!p§.graphics.beginFill(§1;§,1);
         this.§!!p§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§!!p§.graphics.endFill();
         this.§;"<§.width = this.§!!p§.width;
         this.§8!U§.x = _loc1_ / 2 - this.§8!U§.width / 2;
         this.§8!U§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§ M§ ? -1 : 1;
         this.§!!p§.alpha = Math.max(0,Math.min(§1^§,this.§!!p§.alpha + _loc2_ * param1 * §4m§));
         this.§;"<§.y = -this.§;"<§.height + this.§!!p§.alpha / §1^§ * this.§;"<§.height;
      }
      
      public function §1!Y§() : void
      {
         this.§ M§ = true;
         this.§get §();
         this.setText("Fail!");
      }
      
      public function §3"0§() : void
      {
         this.§ M§ = true;
         this.§get §();
         this.setText("Done!");
      }
      
      private function §get §() : void
      {
         if(this.§^L§)
         {
            this.§^L§.stop();
         }
         this.§^L§ = §"L§.§7!?§.§4!P§(this.§3!l§,{"y":-300},{"y":this.§3!l§.y},1.5,§"L§.§;§);
         this.§^L§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§8!U§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
