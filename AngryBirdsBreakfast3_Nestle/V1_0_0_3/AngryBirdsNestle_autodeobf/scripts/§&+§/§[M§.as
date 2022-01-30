package §&+§
{
   import §!",§.§2B§;
   import §!",§.§7!+§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §[M§ extends §2B§
   {
      
      public static const §5z§:String = "transition_lop";
      
      public static const §&!V§:Number = 1000 / 24;
       
      
      protected var §,!t§:Number;
      
      protected var §;W§:int;
      
      protected var §;%§:int;
      
      protected var §3!;§:int;
      
      protected var §6!e§:String = "best";
      
      public function §[M§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§;%§ = 0;
         this.§3!;§ = param1.length;
         this.§,!t§ = param3;
         this.§;W§ = 0;
      }
      
      protected function §^!2§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §!5§[param1];
         if(§;!^§ && !§]!Y§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §&_§(_loc2_,§;!^§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §'!g§.loop && !§;!^§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §'!g§.type == §7!+§.§%"5§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§5z§));
               }
               else
               {
                  _loc6_ = §'!g§.defaultStartLabel != "" ? §'!g§.defaultStartLabel : "";
                  if((_loc7_ = §'!g§.startLabel != "" ? §'!g§.startLabel : _loc6_) != "")
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
               §!5§.splice(param1,1);
               ++this.§;%§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §!5§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§^!2§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§;W§ += param1;
         while(this.§;W§ >= this.§,!t§)
         {
            this.runAnimations();
            this.§;W§ -= this.§,!t§;
            if(this.§;%§ >= this.§3!;§)
            {
               if(stage && §'!g§.stageQuality != "")
               {
                  stage.quality = this.§6!e§;
               }
               §"j§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§7!+§) : void
      {
         super.start(param1);
         this.§3!;§ = §!5§.length;
         this.§;%§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§6!e§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
