package §=!k§
{
   import §#A§.§,!;§;
   import §#A§.§8!F§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class § !b§ extends §8!F§
   {
      
      public static const §>!J§:String = "transition_lop";
      
      public static const §3u§:Number = 1000 / 24;
       
      
      protected var §'!D§:Number;
      
      protected var §5!]§:int;
      
      protected var §^P§:int;
      
      protected var §'!6§:int;
      
      protected var §;!I§:String = "best";
      
      public function § !b§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§^P§ = 0;
         this.§'!6§ = param1.length;
         this.§'!D§ = param3;
         this.§5!]§ = 0;
      }
      
      protected function §4!X§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §1"4§[param1];
         if(§`!y§ && !§]!6§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §@3§(_loc2_,§`!y§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §;!n§.loop && !§`!y§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §;!n§.type == §,!;§.§>6§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§>!J§));
               }
               else
               {
                  _loc6_ = §;!n§.defaultStartLabel != "" ? §;!n§.defaultStartLabel : "";
                  if((_loc7_ = §;!n§.startLabel != "" ? §;!n§.startLabel : _loc6_) != "")
                  {
                     _loc2_.gotoAndStop(_loc7_);
                  }
                  else
                  {
                     _loc2_.gotoAndStop(1);
                  }
               }
            }
            else
            {
               §1"4§.splice(param1,1);
               ++this.§^P§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §1"4§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§4!X§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§5!]§ += param1;
         while(this.§5!]§ >= this.§'!D§)
         {
            this.runAnimations();
            this.§5!]§ -= this.§'!D§;
            if(this.§^P§ >= this.§'!6§)
            {
               if(stage && §;!n§.stageQuality != "")
               {
                  stage.quality = this.§;!I§;
               }
               §7b§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§,!;§) : void
      {
         super.start(param1);
         this.§'!6§ = §1"4§.length;
         this.§^P§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§;!I§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
