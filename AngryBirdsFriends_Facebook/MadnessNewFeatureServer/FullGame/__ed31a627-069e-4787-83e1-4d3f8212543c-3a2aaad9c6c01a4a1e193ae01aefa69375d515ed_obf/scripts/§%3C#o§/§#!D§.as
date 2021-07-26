package §<#o§
{
   import §?"Q§.§2!Z§;
   import §?"Q§.§74§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §#!D§ extends §74§
   {
      
      public static const §4"y§:String = "transition_lop";
      
      public static const §8"3§:Number = 1000 / 24;
       
      
      protected var §^B§:Number;
      
      protected var §9!7§:int;
      
      protected var §-Y§:int;
      
      protected var §?$9§:int;
      
      protected var §?$3§:String = "best";
      
      public function §#!D§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§-Y§ = 0;
         this.§?$9§ = param1.length;
         this.§^B§ = param3;
         this.§9!7§ = 0;
      }
      
      protected function §#!%§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §1p§[param1];
         if(§[3§ && !§6!u§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §2"3§(_loc2_,§[3§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §%#V§.loop && !§[3§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §%#V§.type == §2!Z§.§1M§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§4"y§));
               }
               else
               {
                  _loc6_ = §%#V§.defaultStartLabel != "" ? §%#V§.defaultStartLabel : "";
                  if((_loc7_ = §%#V§.startLabel != "" ? §%#V§.startLabel : _loc6_) != "")
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
               §1p§.splice(param1,1);
               ++this.§-Y§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §1p§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§#!%§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§9!7§ += param1;
         while(this.§9!7§ >= this.§^B§)
         {
            this.runAnimations();
            this.§9!7§ -= this.§^B§;
            if(this.§-Y§ >= this.§?$9§)
            {
               if(stage && §%#V§.stageQuality != "")
               {
                  stage.quality = this.§?$3§;
               }
               §2!h§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§2!Z§) : void
      {
         super.start(param1);
         this.§?$9§ = §1p§.length;
         this.§-Y§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§?$3§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
