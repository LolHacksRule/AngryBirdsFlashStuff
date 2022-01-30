package §#@§
{
   import §<!9§.§3!h§;
   import §<!9§.§^!o§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §@l§ extends §3!h§
   {
      
      public static const §^!E§:String = "transition_lop";
      
      public static const §9V§:Number = 1000 / 24;
       
      
      protected var §+2§:Number;
      
      protected var §3k§:int;
      
      protected var § try§:int;
      
      protected var §^"#§:int;
      
      protected var §[",§:String = "best";
      
      public function §@l§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§ try§ = 0;
         this.§^"#§ = param1.length;
         this.§+2§ = param3;
         this.§3k§ = 0;
      }
      
      protected function §-!J§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §-!;§[param1];
         if(§1!G§ && !§]U§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §%!§(_loc2_,§1!G§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §]C§.loop && !§1!G§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §]C§.type == §^!o§.§>!u§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§^!E§));
               }
               else
               {
                  _loc6_ = §]C§.defaultStartLabel != "" ? §]C§.defaultStartLabel : "";
                  if((_loc7_ = §]C§.startLabel != "" ? §]C§.startLabel : _loc6_) != "")
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
               §-!;§.splice(param1,1);
               ++this.§ try§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §-!;§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§-!J§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§3k§ += param1;
         while(this.§3k§ >= this.§+2§)
         {
            this.runAnimations();
            this.§3k§ -= this.§+2§;
            if(this.§ try§ >= this.§^"#§)
            {
               if(stage && §]C§.stageQuality != "")
               {
                  stage.quality = this.§[",§;
               }
               §'!z§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§^!o§) : void
      {
         super.start(param1);
         this.§^"#§ = §-!;§.length;
         this.§ try§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§[",§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
