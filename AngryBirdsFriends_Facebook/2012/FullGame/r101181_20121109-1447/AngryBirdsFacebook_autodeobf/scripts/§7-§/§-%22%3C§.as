package §7-§
{
   import §%!v§.§[<§;
   import §[!K§.§-k§;
   import §]!>§.§[Q§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §-"<§ extends Sprite
   {
       
      
      private var §4k§:§[Q§;
      
      private var §"!4§:int = 0;
      
      private var §`#§:MovieClip;
      
      private var §["&§:§<"+§;
      
      public function §-"<§(param1:§[Q§, param2:int, param3:String = "StarpillarOwn", param4:String = "StarpillarEnemy")
      {
         var _loc5_:Class = null;
         super();
         this.§4k§ = param1;
         if(param1.userId == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
         {
            _loc5_ = §8B§.§6"C§(param3);
         }
         else
         {
            _loc5_ = §8B§.§6"C§(param4);
         }
         this.§`#§ = new _loc5_();
         addChild(this.§`#§);
         var _loc6_:TextField;
         (_loc6_ = (this.§`#§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§9!Y§ + ". " + param1.userName;
         var _loc7_:TextField;
         (_loc7_ = (this.§`#§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §-k§.§"!V§(param1.§@I§);
         this.§"!4§ = this.§;"<§(param2);
         this.§["&§ = new §<"+§(this.§`#§,this.§4k§);
         addEventListener(Event.ADDED_TO_STAGE,this.§?C§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§-"§);
      }
      
      private function §?C§(param1:Event) : void
      {
         this.§`#§.gotoAndPlay(1);
         if(!this.§`#§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§`#§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
         }
      }
      
      private function §-"§(param1:Event) : void
      {
         this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §;"<§(param1:int) : int
      {
         switch(param1)
         {
            case 1:
               return 74;
            case 2:
               return 58;
            default:
               return 41;
         }
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(this.§`#§)
         {
            this.§`#§.gotoAndStop(param1);
         }
      }
      
      public function get currentFrame() : int
      {
         if(this.§`#§)
         {
            return this.§`#§.currentFrame;
         }
         return 0;
      }
      
      public function dispose() : void
      {
         if(this.§`#§)
         {
            this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(this.contains(this.§`#§))
            {
               removeChild(this.§`#§);
            }
            this.§`#§ = null;
         }
         if(this.§["&§)
         {
            this.§["&§.dispose();
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.§?C§);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§-"§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§`#§.currentFrame >= this.§"!4§)
         {
            this.§`#§.stop();
            this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
   }
}
