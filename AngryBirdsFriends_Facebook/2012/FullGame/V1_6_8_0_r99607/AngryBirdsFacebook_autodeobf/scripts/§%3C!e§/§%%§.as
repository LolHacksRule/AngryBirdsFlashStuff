package §<!e§
{
   import §,"-§.§2!P§;
   import §2!,§.§!Q§;
   import §<G§.§5w§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §%%§ extends Sprite
   {
       
      
      private var §-]§:§!Q§;
      
      private var §=_§:int = 0;
      
      private var §^!a§:MovieClip;
      
      private var §7!t§:§"!]§;
      
      public function §%%§(param1:§!Q§, param2:int)
      {
         var _loc3_:Class = null;
         super();
         this.§-]§ = param1;
         if(param1.userId == (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§)
         {
            _loc3_ = §#!J§.§1!Y§("StarpillarOwn");
         }
         else
         {
            _loc3_ = §#!J§.§1!Y§("StarpillarEnemy");
         }
         this.§^!a§ = new _loc3_();
         addChild(this.§^!a§);
         var _loc4_:TextField;
         (_loc4_ = (this.§^!a§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§]!S§ + ". " + param1.userName;
         var _loc5_:TextField;
         (_loc5_ = (this.§^!a§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §5w§.§4"9§(param1.§=i§);
         this.§=_§ = this.§5"-§(param2);
         this.§7!t§ = new §"!]§(this.§^!a§,this.§-]§);
         addEventListener(Event.ADDED_TO_STAGE,this.§""%§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§%§);
      }
      
      private function §""%§(param1:Event) : void
      {
         this.§^!a§.gotoAndPlay(1);
         if(!this.§^!a§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§^!a§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
         }
      }
      
      private function §%§(param1:Event) : void
      {
         this.§^!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §5"-§(param1:int) : int
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
         if(this.§^!a§)
         {
            this.§^!a§.gotoAndStop(param1);
         }
      }
      
      public function get currentFrame() : int
      {
         if(this.§^!a§)
         {
            return this.§^!a§.currentFrame;
         }
         return 0;
      }
      
      public function dispose() : void
      {
         if(this.§^!a§)
         {
            this.§^!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(this.contains(this.§^!a§))
            {
               removeChild(this.§^!a§);
            }
            this.§^!a§ = null;
         }
         if(this.§7!t§)
         {
            this.§7!t§.dispose();
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.§""%§);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§%§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§^!a§.currentFrame >= this.§=_§)
         {
            this.§^!a§.stop();
            this.§^!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
   }
}
