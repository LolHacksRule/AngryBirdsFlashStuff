package §6W§
{
   import § "q§.§"!Z§;
   import § "q§.§@!'§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §>#@§ extends §"!Z§
   {
      
      public static const §]q§:String = "transition_lop";
      
      public static const §^"N§:Number = 1000 / 24;
       
      
      protected var §+3§:Number;
      
      protected var §+D§:int;
      
      protected var §-"v§:int;
      
      protected var §,#o§:int;
      
      protected var §4#D§:String = "best";
      
      public function §>#@§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§-"v§ = 0;
         this.§,#o§ = param1.length;
         this.§+3§ = param3;
         this.§+D§ = 0;
      }
      
      protected function §7#b§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:MovieClip = §7;§[param1];
         if(§[$;§ && !§'#s§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §2!5§(_loc2_,§[$;§);
         }
         if(_loc3_)
         {
            if(§`!%§.loop && !§[$;§)
            {
               if(_loc2_.name == "MovieClip_TutorialClip" && §`!%§.type == §@!'§.§ F§)
               {
                  _loc5_ = "loop_run";
                  _loc2_.gotoAndStop(_loc5_);
                  dispatchEvent(new Event(§]q§));
               }
               else
               {
                  _loc6_ = §`!%§.defaultStartLabel != "" ? §`!%§.defaultStartLabel : "";
                  if((_loc7_ = §`!%§.startLabel != "" ? §`!%§.startLabel : _loc6_) != "")
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
               §7;§.splice(param1,1);
               ++this.§-"v§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §7;§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§7#b§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§+D§ += param1;
         while(this.§+D§ >= this.§+3§)
         {
            this.runAnimations();
            this.§+D§ -= this.§+3§;
            if(this.§-"v§ >= this.§,#o§)
            {
               if(stage && §`!%§.stageQuality != "")
               {
                  stage.quality = this.§4#D§;
               }
               §6"Q§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§@!'§) : void
      {
         super.start(param1);
         this.§,#o§ = §7;§.length;
         this.§-"v§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§4#D§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
