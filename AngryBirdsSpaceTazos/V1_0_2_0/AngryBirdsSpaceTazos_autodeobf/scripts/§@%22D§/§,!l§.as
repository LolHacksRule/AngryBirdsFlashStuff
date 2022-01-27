package §@"D§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §,!l§ extends §2"7§
   {
      
      public static const §'!%§:Number = 1000 / 24;
       
      
      protected var §var §:Number;
      
      protected var §3!I§:int;
      
      protected var §<L§:int;
      
      protected var §="@§:int;
      
      protected var §1!H§:String = "best";
      
      public function §,!l§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§<L§ = 0;
         this.§="@§ = param1.length;
         this.§var § = param3;
         this.§3!I§ = 0;
      }
      
      protected function §,",§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §6`§[param1];
         if(§-!$§ && !§'Q§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §-!8§(_loc2_,§-!$§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §`!§.loop && !§-!$§)
            {
               _loc5_ = §`!§.defaultStartLabel != "" ? §`!§.defaultStartLabel : "";
               if((_loc6_ = §`!§.startLabel != "" ? §`!§.startLabel : _loc5_) != "")
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
               §6`§.splice(param1,1);
               ++this.§<L§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §6`§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§,",§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§3!I§ += param1;
         while(this.§3!I§ >= this.§var §)
         {
            this.runAnimations();
            this.§3!I§ -= this.§var §;
            if(this.§<L§ >= this.§="@§)
            {
               if(stage && §`!§.stageQuality != "")
               {
                  stage.quality = this.§1!H§;
               }
               §&0§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§#d§, param2:Boolean = true) : void
      {
         super.start(param1,param2);
         this.§="@§ = §6`§.length;
         this.§<L§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§1!H§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
