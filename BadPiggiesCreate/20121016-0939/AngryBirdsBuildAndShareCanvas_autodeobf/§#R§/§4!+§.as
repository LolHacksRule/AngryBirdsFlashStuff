package §#R§
{
   import §%"$§.§[!0§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §8" §.Quest;
   import §@"5§.§1k§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §4!+§ extends Sprite
   {
      
      private static const §=!N§:int = 5000;
       
      
      private var §'r§:Quest;
      
      private var §^%§:MovieClip;
      
      private var §!!-§:MovieClip;
      
      private var §!!N§:TextField;
      
      private var §]!=§:§3^§;
      
      private var §-U§:Timer;
      
      public function §4!+§(param1:Quest)
      {
         super();
         this.§'r§ = param1;
         this.§'r§.addEventListener(§1k§.§1g§,this.onStateChange);
         this.§'r§.addEventListener(§1k§.§3!u§,this.onStateChange);
         var _loc2_:Class = §>!]§.§1!8§("hint_bubble");
         this.§^%§ = new _loc2_();
         this.§^%§.scaleX = 0;
         this.§^%§.scaleY = 0;
         addChild(this.§^%§);
         var _loc3_:Class = §>!]§.§1!8§("HelperPig");
         this.§!!-§ = new _loc3_();
         this.§!!-§.buttonMode = true;
         this.§!!-§.addEventListener(MouseEvent.CLICK,this.§]!Y§);
         addChild(this.§!!-§);
         this.§!!N§ = this.§^%§.getChildByName("text") as TextField;
         this.§!!N§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §]!Y§(param1:Event) : void
      {
         if(this.§-U§ && this.§-U§.running)
         {
            this.§0-§(false);
         }
         else
         {
            this.§0-§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
         this.onEnterFrame();
      }
      
      private function §?!N§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§!!-§.x = stage.stageWidth - this.§!!-§.width;
         this.§!!-§.y = 40;
         this.§^%§.x = this.§!!-§.x + this.§!!-§.width / 2;
         this.§^%§.y = this.§!!-§.y + this.§!!-§.height / 2;
      }
      
      private function onStateChange(param1:§1k§) : void
      {
         var _loc2_:§[!0§ = this.§'r§.§#D§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§'r§.§-!$§ == Quest.§-!z§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§'r§.§-!$§ == Quest.§9!h§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§!!N§.text && _loc4_ != "")
         {
            this.§!!N§.text = _loc4_;
            this.§0-§(true);
         }
      }
      
      private function §0-§(param1:Boolean) : void
      {
         if(this.§]!=§)
         {
            this.§]!=§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§^%§.scaleX,
            "scaleY":this.§^%§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§]!=§ = §7!E§.§2=§.§<!C§(this.§^%§,_loc4_,_loc2_,0.4,§7!E§.§#r§);
         this.§]!=§.play();
         if(this.§-U§ && this.§-U§.running)
         {
            this.§-U§.stop();
         }
         if(param1)
         {
            this.§-U§ = new Timer(§=!N§,1);
            this.§-U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7x§);
            this.§-U§.start();
         }
      }
      
      private function §7x§(param1:Event) : void
      {
         this.§0-§(false);
      }
   }
}
