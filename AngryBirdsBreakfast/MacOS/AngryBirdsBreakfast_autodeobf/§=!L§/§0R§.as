package §=!L§
{
   import §>1§.§2B§;
   import §>1§.§7O§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §0R§ extends §7O§
   {
      
      public static const §'!W§:String = "transition_lop";
      
      public static const §8'§:Number = 1000 / 24;
       
      
      protected var §!!^§:Number;
      
      protected var §0M§:int;
      
      protected var §4t§:int;
      
      protected var § `§:int;
      
      protected var §"!0§:String = "best";
      
      public function §0R§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§4t§ = 0;
         this.§ `§ = param1.length;
         this.§!!^§ = param3;
         this.§0M§ = 0;
      }
      
      protected function §0!-§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §?!a§[param1];
         if(§^!4§ && !§-!"§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §5t§(_loc2_,§^!4§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §=d§.loop && !§^!4§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §=d§.type == §2B§.§+!_§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§'!W§));
               }
               else
               {
                  _loc6_ = §=d§.defaultStartLabel != "" ? §=d§.defaultStartLabel : "";
                  if((_loc7_ = §=d§.startLabel != "" ? §=d§.startLabel : _loc6_) != "")
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
               §?!a§.splice(param1,1);
               ++this.§4t§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §?!a§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§0!-§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§0M§ += param1;
         while(this.§0M§ >= this.§!!^§)
         {
            this.runAnimations();
            this.§0M§ -= this.§!!^§;
            if(this.§4t§ >= this.§ `§)
            {
               if(stage && §=d§.stageQuality != "")
               {
                  stage.quality = this.§"!0§;
               }
               §!D§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§2B§) : void
      {
         super.start(param1);
         this.§ `§ = §?!a§.length;
         this.§4t§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§"!0§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
