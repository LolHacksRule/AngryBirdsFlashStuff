package §0",§
{
   import § !i§.§>!H§;
   import §1z§.Quest;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import §`!Z§.§-"4§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §'!H§ extends Sprite
   {
      
      private static const §'!h§:int = 5000;
       
      
      private var §81§:Quest;
      
      private var §5M§:MovieClip;
      
      private var §&!?§:MovieClip;
      
      private var §+"7§:TextField;
      
      private var §,I§:§8!K§;
      
      private var §<C§:Timer;
      
      public function §'!H§(param1:Quest)
      {
         super();
         this.§81§ = param1;
         this.§81§.addEventListener(§>!H§.§'§,this.onStateChange);
         this.§81§.addEventListener(§>!H§.§"!L§,this.onStateChange);
         var _loc2_:Class = §]!S§.§?! §("hint_bubble");
         this.§5M§ = new _loc2_();
         this.§5M§.scaleX = 0;
         this.§5M§.scaleY = 0;
         addChild(this.§5M§);
         var _loc3_:Class = §]!S§.§?! §("HelperPig");
         this.§&!?§ = new _loc3_();
         this.§&!?§.buttonMode = true;
         this.§&!?§.addEventListener(MouseEvent.CLICK,this.§+!D§);
         addChild(this.§&!?§);
         this.§+"7§ = this.§5M§.getChildByName("text") as TextField;
         this.§+"7§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §+!D§(param1:Event) : void
      {
         if(this.§<C§ && this.§<C§.running)
         {
            this.§5h§(false);
         }
         else
         {
            this.§5h§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§3M§);
         this.onEnterFrame();
      }
      
      private function §3M§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§3M§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§&!?§.x = stage.stageWidth - this.§&!?§.width;
         this.§&!?§.y = 40;
         this.§5M§.x = this.§&!?§.x + this.§&!?§.width / 2;
         this.§5M§.y = this.§&!?§.y + this.§&!?§.height / 2;
      }
      
      private function onStateChange(param1:§>!H§) : void
      {
         var _loc2_:§-"4§ = this.§81§.§`0§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§81§.§?!N§ == Quest.§=!V§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§81§.§?!N§ == Quest.§2q§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§+"7§.text && _loc4_ != "")
         {
            this.§+"7§.text = _loc4_;
            this.§5h§(true);
         }
      }
      
      private function §5h§(param1:Boolean) : void
      {
         if(this.§,I§)
         {
            this.§,I§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§5M§.scaleX,
            "scaleY":this.§5M§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§,I§ = §%!Z§.§if §.§"<§(this.§5M§,_loc4_,_loc2_,0.4,§%!Z§.§!!B§);
         this.§,I§.play();
         if(this.§<C§ && this.§<C§.running)
         {
            this.§<C§.stop();
         }
         if(param1)
         {
            this.§<C§ = new Timer(§'!h§,1);
            this.§<C§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!_§);
            this.§<C§.start();
         }
      }
      
      private function §!_§(param1:Event) : void
      {
         this.§5h§(false);
      }
   }
}
