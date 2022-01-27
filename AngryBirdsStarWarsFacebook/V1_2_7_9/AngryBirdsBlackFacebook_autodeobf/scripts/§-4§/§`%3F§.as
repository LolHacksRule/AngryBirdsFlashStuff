package §-4§
{
   import §7!@§.§5"u§;
   import §7!@§.§6"§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §`?§ extends §5"u§
   {
      
      public static const §3"?§:Number = 1000 / 60;
       
      
      protected var §9i§:Number;
      
      protected var §["C§:int;
      
      protected var §`]§:int;
      
      protected var §?!$§:int;
      
      protected var §-!,§:String = "best";
      
      public function §`?§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
      {
         super(param1,param2);
         this.§`]§ = 0;
         this.§?!$§ = param1.length;
         this.§9i§ = param3;
         this.§["C§ = 0;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = § !,§[param1];
         if(§,!T§ && !§"!x§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §<#,§(_loc2_,§,!T§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §>!8§.loop && !§,!T§)
            {
               _loc5_ = §>!8§.defaultStartLabel != "" ? §>!8§.defaultStartLabel : "";
               if((_loc6_ = §>!8§.startLabel != "" ? §>!8§.startLabel : _loc5_) != "")
               {
                  _loc2_.gotoAndStop(_loc6_);
               }
               else
               {
                  _loc2_.gotoAndStop(1);
               }
            }
            else
            {
               § !,§.splice(param1,1);
               ++this.§`]§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = § !,§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§["C§ += param1;
         while(this.§["C§ >= this.§9i§)
         {
            this.runAnimations();
            this.§["C§ -= this.§9i§;
            if(this.§`]§ >= this.§?!$§)
            {
               if(stage && §>!8§.stageQuality != "")
               {
                  stage.quality = this.§-!,§;
               }
               §@"x§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§6"§) : void
      {
         super.start(param1);
         var _loc2_:int = § !,§.length - 1;
         while(_loc2_ >= 0)
         {
            § !,§[_loc2_].visible = true;
            _loc2_--;
         }
         this.§?!$§ = § !,§.length;
         this.§`]§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§-!,§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §[!5§.length)
         {
            §[!5§[_loc1_].visible = false;
            _loc1_++;
         }
         super.dispose();
      }
   }
}
