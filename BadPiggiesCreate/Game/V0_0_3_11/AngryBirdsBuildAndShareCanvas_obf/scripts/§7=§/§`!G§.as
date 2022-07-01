package §7=§
{
   import §'x§.§?z§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §`!G§ extends §=!3§
   {
      
      private static const §;_§:Number = 0.001;
      
      private static const §0!S§:uint = 9292;
      
      private static const §>!'§:Number = 0.6;
       
      
      private var §>Y§:Sprite;
      
      private var §02§:DisplayObject;
      
      private var §+"6§:MovieClip;
      
      private var §]o§:DisplayObject;
      
      private var §?!a§:Vector.<DisplayObject>;
      
      private var §'p§:Boolean = false;
      
      private var §8" §:§8!K§;
      
      public function §`!G§()
      {
         super();
         this.§>Y§ = new Sprite();
         addChild(this.§>Y§);
         this.§02§ = new §]!S§.§?! §("night_gradient")();
         this.§02§.alpha = 1;
         addChild(this.§02§);
         this.§]o§ = new §]!S§.§?! §("moon")();
         addChild(this.§]o§);
         this.§]o§.x = this.§]o§.width;
         this.§?!a§ = new Vector.<DisplayObject>();
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc1_++;
         }
         var _loc2_:Class = §]!S§.§?! §("TextField_StabilityTimer");
         this.§+"6§ = new _loc2_();
         addChild(this.§+"6§);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
         this.center();
         this.setText("");
         this.§>Y§.alpha = 0;
         this.§02§.y = -this.§02§.height;
         this.§'p§ = false;
         this.§]o§.y = -100;
         this.§8" § = §%!Z§.§if §.§"<§(this.§]o§,{"y":80},{"y":-300},1.5,§%!Z§.§,!%§);
         this.§8" §.play();
      }
      
      private function center() : void
      {
         var _loc1_:int = §?z§.§9h§();
         var _loc2_:int = §?z§.§68§();
         this.§>Y§.graphics.clear();
         this.§>Y§.graphics.beginFill(§0!S§,1);
         this.§>Y§.graphics.drawRect(0,0,_loc1_,_loc2_);
         this.§>Y§.graphics.endFill();
         this.§02§.width = this.§>Y§.width;
         this.§+"6§.x = _loc1_ / 2 - this.§+"6§.width / 2;
         this.§+"6§.y = _loc2_ / 3;
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = !!this.§'p§ ? -1 : 1;
         this.§>Y§.alpha = Math.max(0,Math.min(§>!'§,this.§>Y§.alpha + _loc2_ * param1 * §;_§));
         this.§02§.y = -this.§02§.height + this.§>Y§.alpha / §>!'§ * this.§02§.height;
      }
      
      public function §9^§() : void
      {
         this.§'p§ = true;
         this.§,C§();
         this.setText("Fail!");
      }
      
      public function §7!G§() : void
      {
         this.§'p§ = true;
         this.§,C§();
         this.setText("Done!");
      }
      
      private function §,C§() : void
      {
         if(this.§8" §)
         {
            this.§8" §.stop();
         }
         this.§8" § = §%!Z§.§if §.§"<§(this.§]o§,{"y":-300},{"y":this.§]o§.y},1.5,§%!Z§.§&e§);
         this.§8" §.play();
      }
      
      private function setText(param1:String) : void
      {
         (this.§+"6§.getChildByName("text") as TextField).text = param1;
      }
      
      override protected function onResize(param1:Event) : void
      {
         this.center();
      }
   }
}
