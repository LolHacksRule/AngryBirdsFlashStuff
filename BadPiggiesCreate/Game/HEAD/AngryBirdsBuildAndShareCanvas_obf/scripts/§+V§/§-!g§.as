package §+V§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §4m§.§9g§;
   import §;" §.Quest;
   import §`!,§.§[!&§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §-!g§ extends Sprite
   {
      
      private static const §8O§:int = 5000;
       
      
      private var §[o§:Quest;
      
      private var §0p§:MovieClip;
      
      private var §0!m§:MovieClip;
      
      private var §-"1§:TextField;
      
      private var §]!k§:§=!r§;
      
      private var §>!M§:Timer;
      
      public function §-!g§(param1:Quest)
      {
         super();
         this.§[o§ = param1;
         this.§[o§.addEventListener(§[!&§.§#+§,this.onStateChange);
         this.§[o§.addEventListener(§[!&§.§^[§,this.onStateChange);
         var _loc2_:Class = §69§.§ 0§("hint_bubble");
         this.§0p§ = new _loc2_();
         this.§0p§.scaleX = 0;
         this.§0p§.scaleY = 0;
         addChild(this.§0p§);
         var _loc3_:Class = §69§.§ 0§("HelperPig");
         this.§0!m§ = new _loc3_();
         this.§0!m§.buttonMode = true;
         this.§0!m§.addEventListener(MouseEvent.CLICK,this.§["8§);
         addChild(this.§0!m§);
         this.§-"1§ = this.§0p§.getChildByName("text") as TextField;
         this.§-"1§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §["8§(param1:Event) : void
      {
         if(this.§>!M§ && this.§>!M§.running)
         {
            this.§=!y§(false);
         }
         else
         {
            this.§=!y§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         this.onEnterFrame();
      }
      
      private function §8!_§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§0!m§.x = stage.stageWidth - this.§0!m§.width;
         this.§0!m§.y = 40;
         this.§0p§.x = this.§0!m§.x + this.§0!m§.width / 2;
         this.§0p§.y = this.§0!m§.y + this.§0!m§.height / 2;
      }
      
      private function onStateChange(param1:§[!&§) : void
      {
         var _loc2_:§9g§ = this.§[o§.§-!t§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§[o§.§;!1§ == Quest.§""0§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§[o§.§;!1§ == Quest.§0"?§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§-"1§.text && _loc4_ != "")
         {
            this.§-"1§.text = _loc4_;
            this.§=!y§(true);
         }
      }
      
      private function §=!y§(param1:Boolean) : void
      {
         if(this.§]!k§)
         {
            this.§]!k§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§0p§.scaleX,
            "scaleY":this.§0p§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§]!k§ = §7I§.§[E§.§ ";§(this.§0p§,_loc4_,_loc2_,0.4,§7I§.§%"'§);
         this.§]!k§.play();
         if(this.§>!M§ && this.§>!M§.running)
         {
            this.§>!M§.stop();
         }
         if(param1)
         {
            this.§>!M§ = new Timer(§8O§,1);
            this.§>!M§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§<"§);
            this.§>!M§.start();
         }
      }
      
      private function §<"§(param1:Event) : void
      {
         this.§=!y§(false);
      }
   }
}
