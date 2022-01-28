package §3§
{
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import com.rovio.assets.§>!]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §5§ extends §9§
   {
      
      private static const §58§:Number = 0.001;
      
      private static const §,@§:uint = 9292;
      
      private static const §?S§:Number = 0.6;
       
      
      private var §!8§:Sprite;
      
      private var §["<§:DisplayObject;
      
      private var §4!$§:MovieClip;
      
      private var §8!R§:DisplayObject;
      
      private var §%y§:Vector.<DisplayObject>;
      
      private var §<"#§:Boolean = false;
      
      private var §%!,§:§3^§;
      
      public function §5§()
      {
         super();
         this.§!8§ = new Sprite();
         addChild(this.§!8§);
         this.§["<§ = new §>!]§.§1!8§("night_gradient")();
         this.§["<§.alpha = 1;
         this.§8!R§ = new §>!]§.§1!8§("moon")();
         addChild(this.§8!R§);
         this.§8!R§.x = this.§8!R§.width;
         this.§%y§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §>!]§.§1!8§("TextField_StabilityTimer");
         this.§4!$§ = new _loc2_();
         addChild(this.§4!$§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§!8§.alpha = 0;
         this.§["<§.y = -this.§["<§.height;
         this.§<"#§ = false;
         this.§8!R§.y = -100;
         this.§%!,§ = §7!E§.§2=§.§<!C§(this.§8!R§,{"y":80},{"y":-300},1.5,§7!E§.§8""§);
         this.§%!,§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §=!X§.§7,§();
         var _loc2_:int = §=!X§.§3?§();
         this.§!8§.graphics.clear();
         this.§!8§.graphics.beginFill(§,@§,1);
         this.§!8§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§!8§.graphics.endFill();
         this.§["<§.width = this.§!8§.width;
         this.§4!$§.x = _loc1_ / 2 - this.§4!$§.width / 2;
         this.§4!$§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§<"#§ ? -1 : 1;
         this.§!8§.alpha = Math.max(0,Math.min(§?S§,this.§!8§.alpha + _loc2_ * param1 * §58§));
         this.§["<§.y = -this.§["<§.height + this.§!8§.alpha / §?S§ * this.§["<§.height;
      }
      
      public function §]"8§() : void
      {
         this.§<"#§ = true;
         this.§!7§();
         this.setText("Fail!");
      }
      
      public function §81§() : void
      {
         this.§<"#§ = true;
         this.§!7§();
         this.setText("Done!");
      }
      
      private function §!7§() : void
      {
         if(this.§%!,§)
         {
            this.§%!,§.stop();
         }
         this.§%!,§ = §7!E§.§2=§.§<!C§(this.§8!R§,{"y":-300},{"y":this.§8!R§.y},1.5,§7!E§.§5!+§);
         this.§%!,§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§4!$§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
