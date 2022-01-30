package §<!p§
{
   import §3!S§.§%s§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §"b§ extends § B§
   {
      
      private static const §7"0§:Number = 0.001;
      
      private static const §2-§:uint = 9292;
      
      private static const §=!g§:Number = 0.6;
       
      
      private var §1!@§:Sprite;
      
      private var §]!J§:DisplayObject;
      
      private var §7!v§:MovieClip;
      
      private var § '§:DisplayObject;
      
      private var §'"3§:Vector.<DisplayObject>;
      
      private var §<!n§:Boolean = false;
      
      private var §6!R§:§^!#§;
      
      public function §"b§()
      {
         super();
         this.§1!@§ = new Sprite();
         addChild(this.§1!@§);
         this.§]!J§ = new §8!q§.§2^§("night_gradient")();
         this.§]!J§.alpha = 1;
         addChild(this.§]!J§);
         this.§ '§ = new §8!q§.§2^§("moon")();
         addChild(this.§ '§);
         this.§ '§.x = this.§ '§.width;
         this.§'"3§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §8!q§.§2^§("TextField_StabilityTimer");
         this.§7!v§ = new _loc2_();
         addChild(this.§7!v§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§1!@§.alpha = 0;
         this.§]!J§.y = -this.§]!J§.height;
         this.§<!n§ = false;
         this.§ '§.y = -100;
         this.§6!R§ = §"g§.§'!o§.§while§(this.§ '§,{"y":80},{"y":-300},1.5,§"g§.§'!9§);
         this.§6!R§.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §%s§.§2w§();
         var _loc2_:int = §%s§.§%!^§();
         this.§1!@§.graphics.clear();
         this.§1!@§.graphics.beginFill(§2-§,1);
         this.§1!@§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§1!@§.graphics.endFill();
         this.§]!J§.width = this.§1!@§.width;
         this.§7!v§.x = _loc1_ / 2 - this.§7!v§.width / 2;
         this.§7!v§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§<!n§ ? -1 : 1;
         this.§1!@§.alpha = Math.max(0,Math.min(§=!g§,this.§1!@§.alpha + _loc2_ * param1 * §7"0§));
         this.§]!J§.y = -this.§]!J§.height + this.§1!@§.alpha / §=!g§ * this.§]!J§.height;
      }
      
      public function §`F§() : void
      {
         this.§<!n§ = true;
         this.§,!A§();
         this.setText("Fail!");
      }
      
      public function §?+§() : void
      {
         this.§<!n§ = true;
         this.§,!A§();
         this.setText("Done!");
      }
      
      private function §,!A§() : void
      {
         if(this.§6!R§)
         {
            this.§6!R§.stop();
         }
         this.§6!R§ = §"g§.§'!o§.§while§(this.§ '§,{"y":-300},{"y":this.§ '§.y},1.5,§"g§.§+!a§);
         this.§6!R§.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§7!v§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
