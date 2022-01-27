package §5§#7
{
   import §]!$§.§4@§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §7#B§ extends §4@§
   {
      
      public static const §'@§:String = "transition_lop";
      
      public static const §#5§:Number = 1000 / 24;
       
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      public function §7#B§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§^Z§ = 0;
         this.§6#Z§ = param1.length;
         this.§'!A§ = param3;
         this.§8I§ = 0;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(§5!z§ && !§7a§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §0#H§(_loc2_,§5!z§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §7#§.loop && !§5!z§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §7#§.type == §6y§.§5z§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§'@§));
               }
               else
               {
                  _loc6_ = §7#§.defaultStartLabel != "" ? §7#§.defaultStartLabel : "";
                  if((_loc7_ = §7#§.startLabel != "" ? §7#§.startLabel : _loc6_) != "")
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
               §[I§.splice(param1,1);
               ++this.§^Z§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §[I§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§8I§ += param1;
         while(this.§8I§ >= this.§'!A§)
         {
            this.runAnimations();
            this.§8I§ -= this.§'!A§;
            if(this.§^Z§ >= this.§6#Z§)
            {
               if(stage && §7#§.stageQuality != "")
               {
                  stage.quality = this.§;#'§;
               }
               §&#6§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         super.start(param1);
         this.§6#Z§ = §[I§.length;
         this.§^Z§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§;#'§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
