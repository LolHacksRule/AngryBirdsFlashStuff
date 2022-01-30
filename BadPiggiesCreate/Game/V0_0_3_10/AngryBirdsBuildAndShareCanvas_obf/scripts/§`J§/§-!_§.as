package §`J§
{
   import § L§.§4"8§;
   import §#L§.§!!Q§;
   import §="$§.Quest;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §-!_§ extends Sprite
   {
      
      private static const §21§:int = 5000;
       
      
      private var §@_§:Quest;
      
      private var §]f§:MovieClip;
      
      private var §>!W§:MovieClip;
      
      private var §>Z§:TextField;
      
      private var §%"2§:§^F§;
      
      private var §'!U§:Timer;
      
      public function §-!_§(param1:Quest)
      {
         super();
         this.§@_§ = param1;
         this.§@_§.addEventListener(§!!Q§.§%g§,this.onStateChange);
         this.§@_§.addEventListener(§!!Q§.§?!;§,this.onStateChange);
         var _loc2_:Class = §5!+§.§,]§("hint_bubble");
         this.§]f§ = new _loc2_();
         this.§]f§.scaleX = 0;
         this.§]f§.scaleY = 0;
         addChild(this.§]f§);
         var _loc3_:Class = §5!+§.§,]§("HelperPig");
         this.§>!W§ = new _loc3_();
         this.§>!W§.buttonMode = true;
         this.§>!W§.addEventListener(MouseEvent.CLICK,this.§'!7§);
         addChild(this.§>!W§);
         this.§>Z§ = this.§]f§.getChildByName("text") as TextField;
         this.§>Z§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §'!7§(param1:Event) : void
      {
         if(this.§'!U§ && this.§'!U§.running)
         {
            this.§#!9§(false);
         }
         else
         {
            this.§#!9§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
         this.onEnterFrame();
      }
      
      private function §>!=§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§>!W§.x = stage.stageWidth - this.§>!W§.width;
         this.§>!W§.y = 40;
         this.§]f§.x = this.§>!W§.x + this.§>!W§.width / 2;
         this.§]f§.y = this.§>!W§.y + this.§>!W§.height / 2;
      }
      
      private function onStateChange(param1:§!!Q§) : void
      {
         var _loc2_:§4"8§ = this.§@_§.§8v§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§@_§.§3"§ == Quest.§`!k§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§@_§.§3"§ == Quest.§#=§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§>Z§.text && _loc4_ != "")
         {
            this.§>Z§.text = _loc4_;
            this.§#!9§(true);
         }
      }
      
      private function §#!9§(param1:Boolean) : void
      {
         if(this.§%"2§)
         {
            this.§%"2§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§]f§.scaleX,
            "scaleY":this.§]f§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§%"2§ = §<y§.§,l§.§]!C§(this.§]f§,_loc4_,_loc2_,0.4,§<y§.§]1§);
         this.§%"2§.play();
         if(this.§'!U§ && this.§'!U§.running)
         {
            this.§'!U§.stop();
         }
         if(param1)
         {
            this.§'!U§ = new Timer(§21§,1);
            this.§'!U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§=R§);
            this.§'!U§.start();
         }
      }
      
      private function §=R§(param1:Event) : void
      {
         this.§#!9§(false);
      }
   }
}
