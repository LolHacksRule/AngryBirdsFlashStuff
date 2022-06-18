package §#"H§
{
   import §]@§.§8"A§;
   import §]@§.§=",§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §=#5§ extends §=",§
   {
      
      public static const §5$%§:String = "transition_lop";
      
      public static const §9#J§:Number = 1000 / 24;
       
      
      protected var §?"n§:Number;
      
      protected var §'"j§:int;
      
      protected var §="p§:int;
      
      protected var §-"8§:int;
      
      protected var §2#Z§:String = "best";
      
      public function §=#5§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§="p§ = 0;
         this.§-"8§ = param1.length;
         this.§?"n§ = param3;
         this.§'"j§ = 0;
      }
      
      protected function §^-§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §-"q§[param1];
         if(§%#i§ && !§8!P§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §1#m§(_loc2_,§%#i§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §,!j§.loop && !§%#i§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §,!j§.type == §8"A§.§+!f§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§5$%§));
               }
               else
               {
                  _loc6_ = §,!j§.defaultStartLabel != "" ? §,!j§.defaultStartLabel : "";
                  if((_loc7_ = §,!j§.startLabel != "" ? §,!j§.startLabel : _loc6_) != "")
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
               §-"q§.splice(param1,1);
               ++this.§="p§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §-"q§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§^-§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§'"j§ += param1;
         while(this.§'"j§ >= this.§?"n§)
         {
            this.runAnimations();
            this.§'"j§ -= this.§?"n§;
            if(this.§="p§ >= this.§-"8§)
            {
               if(stage && §,!j§.stageQuality != "")
               {
                  stage.quality = this.§2#Z§;
               }
               §[6§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§8"A§) : void
      {
         super.start(param1);
         this.§-"8§ = §-"q§.length;
         this.§="p§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§2#Z§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
