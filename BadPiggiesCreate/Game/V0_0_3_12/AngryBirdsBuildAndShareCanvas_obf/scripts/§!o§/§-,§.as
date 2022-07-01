package §!o§
{
   import §0"7§.§ !2§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §2!w§.Quest;
   import §4!6§.§@p§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §-,§ extends Sprite
   {
      
      private static const §,!6§:int = 5000;
       
      
      private var §>!V§:Quest;
      
      private var §8%§:MovieClip;
      
      private var §4D§:MovieClip;
      
      private var §-!#§:TextField;
      
      private var §?!e§:§+I§;
      
      private var §,"%§:Timer;
      
      public function §-,§(param1:Quest)
      {
         super();
         this.§>!V§ = param1;
         this.§>!V§.addEventListener(§ !2§.§=";§,this.onStateChange);
         this.§>!V§.addEventListener(§ !2§.§6@§,this.onStateChange);
         var _loc2_:Class = §!"'§.§%!Q§("hint_bubble");
         this.§8%§ = new _loc2_();
         this.§8%§.scaleX = 0;
         this.§8%§.scaleY = 0;
         addChild(this.§8%§);
         var _loc3_:Class = §!"'§.§%!Q§("HelperPig");
         this.§4D§ = new _loc3_();
         this.§4D§.buttonMode = true;
         this.§4D§.addEventListener(MouseEvent.CLICK,this.§;^§);
         addChild(this.§4D§);
         this.§-!#§ = this.§8%§.getChildByName("text") as TextField;
         this.§-!#§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §;^§(param1:Event) : void
      {
         if(this.§,"%§ && this.§,"%§.running)
         {
            this.§-!c§(false);
         }
         else
         {
            this.§-!c§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
         this.onEnterFrame();
      }
      
      private function §1?§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§4D§.x = stage.stageWidth - this.§4D§.width;
         this.§4D§.y = 40;
         this.§8%§.x = this.§4D§.x + this.§4D§.width / 2;
         this.§8%§.y = this.§4D§.y + this.§4D§.height / 2;
      }
      
      private function onStateChange(param1:§ !2§) : void
      {
         var _loc2_:§@p§ = this.§>!V§.§;!!§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§>!V§.§=t§ == Quest.§]!V§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§>!V§.§=t§ == Quest.§?!f§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§-!#§.text && _loc4_ != "")
         {
            this.§-!#§.text = _loc4_;
            this.§-!c§(true);
         }
      }
      
      private function §-!c§(param1:Boolean) : void
      {
         if(this.§?!e§)
         {
            this.§?!e§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§8%§.scaleX,
            "scaleY":this.§8%§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§?!e§ = §-!M§.§ "!§.§+d§(this.§8%§,_loc4_,_loc2_,0.4,§-!M§.§62§);
         this.§?!e§.play();
         if(this.§,"%§ && this.§,"%§.running)
         {
            this.§,"%§.stop();
         }
         if(param1)
         {
            this.§,"%§ = new Timer(§,!6§,1);
            this.§,"%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§4U§);
            this.§,"%§.start();
         }
      }
      
      private function §4U§(param1:Event) : void
      {
         this.§-!c§(false);
      }
   }
}
