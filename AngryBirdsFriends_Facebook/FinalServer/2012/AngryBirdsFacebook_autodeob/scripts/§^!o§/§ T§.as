package §^!o§
{
   import §6k§.§-#§;
   import §<";§.§'y§;
   import §^!U§.§,J§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class § T§ extends Sprite
   {
       
      
      private var § !p§:§,J§;
      
      private var §%!k§:int = 0;
      
      private var §-!c§:MovieClip;
      
      private var §!,§:§@?§;
      
      public function § T§(param1:§,J§, param2:int, param3:String = "StarpillarOwn", param4:String = "StarpillarEnemy")
      {
         var _loc5_:Class = null;
         super();
         this.§ !p§ = param1;
         if(param1.userId == (AngryBirdsFP11.sUserProgress as §'y§).§;#§)
         {
            _loc5_ = §>"5§.§6s§(param3);
         }
         else
         {
            _loc5_ = §>"5§.§6s§(param4);
         }
         this.§-!c§ = new _loc5_();
         addChild(this.§-!c§);
         var _loc6_:TextField;
         (_loc6_ = (this.§-!c§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§+!r§ + ". " + param1.userName;
         _loc6_.mouseEnabled = false;
         var _loc7_:TextField;
         (_loc7_ = (this.§-!c§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §-#§.§!U§(param1.§2!r§);
         _loc7_.mouseEnabled = false;
         this.§%!k§ = this.§@!U§(param2);
         this.§!,§ = new §@?§(this.§-!c§,this.§ !p§);
         addEventListener(Event.ADDED_TO_STAGE,this.§=y§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§?d§);
      }
      
      private function §=y§(param1:Event) : void
      {
         this.§-!c§.gotoAndPlay(1);
         if(!this.§-!c§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§-!c§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
         }
      }
      
      private function §?d§(param1:Event) : void
      {
         this.§-!c§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §@!U§(param1:int) : int
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
         if(this.§-!c§)
         {
            this.§-!c§.gotoAndStop(param1);
         }
      }
      
      public function get currentFrame() : int
      {
         if(this.§-!c§)
         {
            return this.§-!c§.currentFrame;
         }
         return 0;
      }
      
      public function dispose() : void
      {
         if(this.§-!c§)
         {
            this.§-!c§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(this.contains(this.§-!c§))
            {
               removeChild(this.§-!c§);
            }
            this.§-!c§ = null;
         }
         if(this.§!,§)
         {
            this.§!,§.dispose();
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.§=y§);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§?d§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§-!c§.currentFrame >= this.§%!k§)
         {
            this.§-!c§.stop();
            this.§-!c§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
   }
}
