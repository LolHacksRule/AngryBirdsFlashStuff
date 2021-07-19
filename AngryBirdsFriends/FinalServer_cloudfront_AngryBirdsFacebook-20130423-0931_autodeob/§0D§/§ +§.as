package §0D§
{
   import §%!I§.§]!M§;
   import §,l§.§1U§;
   import §@!%§.§#!$§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class § +§ extends Sprite
   {
       
      
      private var §4v§:§1U§;
      
      private var §]"F§:int = 0;
      
      private var §>,§:MovieClip;
      
      private var §]d§:§`!k§;
      
      public function § +§(param1:§1U§, param2:int, param3:String = "StarpillarOwn", param4:String = "StarpillarEnemy")
      {
         var _loc5_:Class = null;
         super();
         this.§4v§ = param1;
         if(param1.userId == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
         {
            _loc5_ = §?q§.§ q§(param3);
         }
         else
         {
            _loc5_ = §?q§.§ q§(param4);
         }
         this.§>,§ = new _loc5_();
         addChild(this.§>,§);
         var _loc6_:TextField;
         (_loc6_ = (this.§>,§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§'Q§ + ". " + param1.userName;
         _loc6_.mouseEnabled = false;
         var _loc7_:TextField;
         (_loc7_ = (this.§>,§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §]!M§.§<Y§(param1.§?&§);
         _loc7_.mouseEnabled = false;
         this.§]"F§ = this.§!!!§(param2);
         this.§]d§ = new §`!k§(this.§>,§,this.§4v§);
         addEventListener(Event.ADDED_TO_STAGE,this.§6"W§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§]R§);
      }
      
      private function §6"W§(param1:Event) : void
      {
         this.§>,§.gotoAndPlay(1);
         if(!this.§>,§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§>,§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
         }
      }
      
      private function §]R§(param1:Event) : void
      {
         this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §!!!§(param1:int) : int
      {
         switch(param1)
         {
            case 1:
               return 74;
            case 2:
               return 66;
            default:
               return 58;
         }
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(this.§>,§)
         {
            this.§>,§.gotoAndStop(param1);
         }
      }
      
      public function get currentFrame() : int
      {
         if(this.§>,§)
         {
            return this.§>,§.currentFrame;
         }
         return 0;
      }
      
      public function dispose() : void
      {
         if(this.§>,§)
         {
            this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(this.contains(this.§>,§))
            {
               removeChild(this.§>,§);
            }
            this.§>,§ = null;
         }
         if(this.§]d§)
         {
            this.§]d§.dispose();
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.§6"W§);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§]R§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>,§.currentFrame >= this.§]"F§)
         {
            this.§>,§.stop();
            this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
   }
}
