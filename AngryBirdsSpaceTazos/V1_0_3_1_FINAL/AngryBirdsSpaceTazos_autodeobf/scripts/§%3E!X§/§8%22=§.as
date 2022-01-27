package §>!X§
{
   import §0I§.§'X§;
   import §0I§.§<i§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §8"=§ extends §'X§
   {
      
      public static const §7"F§:String = "transition_lop";
      
      public static const §`F§:Number = 1000 / 24;
       
      
      protected var §7>§:Number;
      
      protected var §%!P§:int;
      
      protected var §4!c§:int;
      
      protected var §]9§:int;
      
      protected var §^u§:String = "best";
      
      public function §8"=§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§4!c§ = 0;
         this.§]9§ = param1.length;
         this.§7>§ = param3;
         this.§%!P§ = 0;
      }
      
      protected function §'!%§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §,!?§[param1];
         if(§8k§ && !§1c§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §;!H§(_loc2_,§8k§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §`!j§.loop && !§8k§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §`!j§.type == §<i§.§5]§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§7"F§));
               }
               else
               {
                  _loc6_ = §`!j§.defaultStartLabel != "" ? §`!j§.defaultStartLabel : "";
                  if((_loc7_ = §`!j§.startLabel != "" ? §`!j§.startLabel : _loc6_) != "")
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
               §,!?§.splice(param1,1);
               ++this.§4!c§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §,!?§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§'!%§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§%!P§ += param1;
         while(this.§%!P§ >= this.§7>§)
         {
            this.runAnimations();
            this.§%!P§ -= this.§7>§;
            if(this.§4!c§ >= this.§]9§)
            {
               if(stage && §`!j§.stageQuality != "")
               {
                  stage.quality = this.§^u§;
               }
               §;!f§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§<i§) : void
      {
         super.start(param1);
         this.§]9§ = §,!?§.length;
         this.§4!c§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§^u§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
