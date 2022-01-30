package §]!]§
{
   import §&"8§.Quest;
   import §;!A§.§9!U§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §`q§.§;d§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §5]§ extends Sprite
   {
      
      private static const §>]§:int = 5000;
       
      
      private var §<!f§:Quest;
      
      private var §3!B§:MovieClip;
      
      private var §4E§:MovieClip;
      
      private var § !N§:TextField;
      
      private var §`,§:§^!#§;
      
      private var §,_§:Timer;
      
      public function §5]§(param1:Quest)
      {
         super();
         this.§<!f§ = param1;
         this.§<!f§.addEventListener(§9!U§.§!R§,this.onStateChange);
         this.§<!f§.addEventListener(§9!U§.§,!h§,this.onStateChange);
         var _loc2_:Class = §8!q§.§2^§("hint_bubble");
         this.§3!B§ = new _loc2_();
         this.§3!B§.scaleX = 0;
         this.§3!B§.scaleY = 0;
         addChild(this.§3!B§);
         var _loc3_:Class = §8!q§.§2^§("HelperPig");
         this.§4E§ = new _loc3_();
         this.§4E§.buttonMode = true;
         this.§4E§.addEventListener(MouseEvent.CLICK,this.§87§);
         addChild(this.§4E§);
         this.§ !N§ = this.§3!B§.getChildByName("text") as TextField;
         this.§ !N§.autoSize = "center";
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function §87§(param1:Event) : void
      {
         if(this.§,_§ && this.§,_§.running)
         {
            this.§6@§(false);
         }
         else
         {
            this.§6@§(true);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§4!_§);
      }
      
      private function §4!_§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§4!_§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         this.§4E§.x = stage.stageWidth - this.§4E§.width;
         this.§4E§.y = 40;
         this.§3!B§.x = this.§4E§.x + this.§4E§.width / 2;
         this.§3!B§.y = this.§4E§.y + this.§4E§.height / 2;
      }
      
      private function onStateChange(param1:§9!U§) : void
      {
         var _loc2_:§;d§ = this.§<!f§.§>!n§();
         var _loc4_:String = "";
         if(_loc2_)
         {
            _loc4_ = _loc2_.description;
         }
         else if(this.§<!f§.§"K§ == Quest.§]g§)
         {
            _loc4_ = "Check stability";
         }
         else if(this.§<!f§.§"K§ == Quest.§-9§)
         {
            _loc4_ = "Play";
         }
         if(_loc4_ != this.§ !N§.text && _loc4_ != "")
         {
            this.§ !N§.text = _loc4_;
            this.§6@§(true);
         }
      }
      
      private function §6@§(param1:Boolean) : void
      {
         if(this.§`,§)
         {
            this.§`,§.stop();
         }
         var _loc2_:Object = {
            "scaleX":this.§3!B§.scaleX,
            "scaleY":this.§3!B§.scaleY
         };
         var _loc3_:Number = !!param1 ? Number(1) : Number(0);
         var _loc4_:Object = {
            "scaleX":_loc3_,
            "scaleY":_loc3_
         };
         this.§`,§ = §"g§.§'!o§.§while§(this.§3!B§,_loc4_,_loc2_,0.4,§"g§.§ try§);
         this.§`,§.play();
         if(this.§,_§ && this.§,_§.running)
         {
            this.§,_§.stop();
         }
         if(param1)
         {
            this.§,_§ = new Timer(§>]§,1);
            this.§,_§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§&"§);
            this.§,_§.start();
         }
      }
      
      private function §&"§(param1:Event) : void
      {
         this.§6@§(false);
      }
   }
}
