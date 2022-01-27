package §`"T§
{
   import §'"I§.§1-§;
   import §'"I§.§;"F§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class § "n§ extends §;"F§
   {
      
      public static const §3"]§:String = "transition_lop";
      
      public static const §!$§:Number = 1000 / 24;
       
      
      protected var §9"l§:Number;
      
      protected var §5p§:int;
      
      protected var §#U§:int;
      
      protected var §+!K§:int;
      
      protected var §1"3§:String = "best";
      
      public function § "n§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§#U§ = 0;
         this.§+!K§ = param1.length;
         this.§9"l§ = param3;
         this.§5p§ = 0;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §"!s§[param1];
         if(§'Q§ && !§[!Q§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §="m§(_loc2_,§'Q§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §+?§.loop && !§'Q§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §+?§.type == §1-§.§!o§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§3"]§));
               }
               else
               {
                  _loc6_ = §+?§.defaultStartLabel != "" ? §+?§.defaultStartLabel : "";
                  if((_loc7_ = §+?§.startLabel != "" ? §+?§.startLabel : _loc6_) != "")
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
               §"!s§.splice(param1,1);
               ++this.§#U§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §"!s§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§5p§ += param1;
         while(this.§5p§ >= this.§9"l§)
         {
            this.runAnimations();
            this.§5p§ -= this.§9"l§;
            if(this.§#U§ >= this.§+!K§)
            {
               if(stage && §+?§.stageQuality != "")
               {
                  stage.quality = this.§1"3§;
               }
               §+"4§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§1-§) : void
      {
         super.start(param1);
         this.§+!K§ = §"!s§.length;
         this.§#U§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§1"3§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
