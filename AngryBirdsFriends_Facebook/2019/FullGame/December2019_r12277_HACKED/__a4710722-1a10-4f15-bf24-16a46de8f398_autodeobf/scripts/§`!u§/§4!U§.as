package §`!u§
{
   import §>#s§.§?"b§;
   import §>#s§.§@^§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §4!U§ extends §?"b§
   {
      
      public static const §6#z§:String = "transition_lop";
      
      public static const §,$'§:Number = 1000 / 24;
       
      
      protected var §!!<§:Number;
      
      protected var §9"c§:int;
      
      protected var §1u§:int;
      
      protected var §;@§:int;
      
      protected var §;"9§:String = "best";
      
      public function §4!U§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§1u§ = 0;
         this.§;@§ = param1.length;
         this.§!!<§ = param3;
         this.§9"c§ = 0;
      }
      
      protected function §;I§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §1#r§[param1];
         if(§3#k§ && !§%!P§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §,"c§(_loc2_,§3#k§);
         }
         if(_loc3_)
         {
            if(§"@§.loop && !§3#k§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §"@§.type == §@^§.§=z§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§6#z§));
               }
               else
               {
                  _loc6_ = §"@§.defaultStartLabel != "" ? §"@§.defaultStartLabel : "";
                  if((_loc7_ = §"@§.startLabel != "" ? §"@§.startLabel : _loc6_) != "")
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
               §1#r§.splice(param1,1);
               ++this.§1u§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §1#r§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§;I§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§9"c§ += param1;
         while(this.§9"c§ >= this.§!!<§)
         {
            this.runAnimations();
            this.§9"c§ -= this.§!!<§;
            if(this.§1u§ >= this.§;@§)
            {
               if(stage && §"@§.stageQuality != "")
               {
                  stage.quality = this.§;"9§;
               }
               §]"4§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§@^§) : void
      {
         super.start(param1);
         this.§;@§ = §1#r§.length;
         this.§1u§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§;"9§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
