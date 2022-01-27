package §^S§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §;j§ extends §=!s§
   {
      
      public static const §+"+§:Number = 1000 / 24;
       
      
      protected var §&!_§:Number;
      
      protected var §@!B§:int;
      
      protected var §>!8§:int;
      
      protected var §'"'§:int;
      
      protected var §,!o§:String = "best";
      
      public function §;j§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§>!8§ = 0;
         this.§'"'§ = param1.length;
         this.§&!_§ = param3;
         this.§@!B§ = 0;
      }
      
      protected function §7!0§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §=3§[param1];
         if(§#!Y§ && !§#S§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §;!x§(_loc2_,§#!Y§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §,!u§.loop && !§#!Y§)
            {
               _loc5_ = §,!u§.defaultStartLabel != "" ? §,!u§.defaultStartLabel : "";
               if((_loc6_ = §,!u§.startLabel != "" ? §,!u§.startLabel : _loc5_) != "")
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
               §=3§.splice(param1,1);
               ++this.§>!8§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §=3§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§7!0§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§@!B§ += param1;
         while(this.§@!B§ >= this.§&!_§)
         {
            this.runAnimations();
            this.§@!B§ -= this.§&!_§;
            if(this.§>!8§ >= this.§'"'§)
            {
               if(stage && §,!u§.stageQuality != "")
               {
                  stage.quality = this.§,!o§;
               }
               §5I§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§6u§) : void
      {
         super.start(param1);
         this.§'"'§ = §=3§.length;
         this.§>!8§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§,!o§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
