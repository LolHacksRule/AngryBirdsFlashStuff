package §8E§
{
   import §4!S§.Quest;
   import §=!D§.§<]§;
   import §>3§.§4%§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §6$§ extends Sprite
   {
      
      private static const §9!x§:int = 5000;
       
      
      private var §%!o§:Quest;
      
      private var §%6§:MovieClip;
      
      private var §%4§:MovieClip;
      
      private var §0"9§:TextField;
      
      private var §@!5§:§-!m§;
      
      private var §"!'§:Timer;
      
      public function §6$§(param1:Quest)
      {
         super();
         this.§%!o§ = param1;
         this.§%!o§.addEventListener(§<]§.§+!n§,this.onStateChange);
         this.§%!o§.addEventListener(§<]§.§7"2§,this.onStateChange);
         var _loc2_:Class = §=#§.§1v§("hint_bubble");
         this.§%6§ = new _loc2_();
         this.§%6§.scaleX = 0;
         this.§%6§.scaleY = 0;
         addChild(this.§%6§);
         var _loc3_:Class = §=#§.§1v§("HelperPig");
         this.§%4§ = new _loc3_();
         this.§%4§.buttonMode = true;
         this.§%4§.addEventListener(MouseEvent.CLICK,this.§?!&§);
         addChild(this.§%4§);
         this.§0"9§ = this.§%6§.getChildByName("text") as TextField;
         this.§0"9§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §?!&§(param1:Event) : void
      {
         if(this.§"!'§ && this.§"!'§.running)
         {
            this.§!!0§(false);
         }
         else
         {
            this.§!!0§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§+!;§);
         this.onEnterFrame();
      }
      
      private function §+!;§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§+!;§);
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         this.§%4§.x = stage.stageWidth - this.§%4§.width;
         this.§%4§.y = 40;
         this.§%6§.x = this.§%4§.x + this.§%4§.width / 2;
         this.§%6§.y = this.§%4§.y + this.§%4§.height / 2;
      }
      
      private function onStateChange(param1:§<]§) : void
      {
         var _loc2_:§4%§ = this.§%!o§.§1E§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§%!o§.§^!I§ == Quest.§#!O§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§%!o§.§^!I§ == Quest.§#R§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§0"9§.text && _loc4_ != "")
         {
            this.§0"9§.text = _loc4_;
            this.§!!0§(true);
         }
      }
      
      private function §!!0§(param1:Boolean) : void
      {
         if(this.§@!5§)
         {
            this.§@!5§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§%6§.scaleX,
            "scaleY":this.§%6§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§@!5§ = §"L§.§7!?§.§4!P§(this.§%6§,_loc4_,_loc2_,0.4,§"L§.§ "9§);
         this.§@!5§.play();
         if(this.§"!'§ && this.§"!'§.running)
         {
            this.§"!'§.stop();
         }
         if(param1)
         {
            this.§"!'§ = new Timer(§9!x§,1);
            this.§"!'§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§?o§);
            this.§"!'§.start();
         }
      }
      
      private function §?o§(param1:Event) : void
      {
         this.§!!0§(false);
      }
   }
}
