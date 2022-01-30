package §,a§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §`!P§ extends §-L§
   {
      
      public static const §#P§:Number = 1000 / 24;
       
      
      protected var §@!J§:Number;
      
      protected var §7!M§:int;
      
      protected var §53§:int;
      
      protected var §^L§:int;
      
      protected var §9I§:String = "best";
      
      public function §`!P§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§53§ = 0;
         this.§^L§ = param1.length;
         this.§@!J§ = param3;
         this.§7!M§ = 0;
      }
      
      protected function §[v§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §!"'§[param1];
         if(§>!E§ && !§-!4§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §="'§(_loc2_,§>!E§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §5#§.loop && !§>!E§)
            {
               _loc5_ = §5#§.defaultStartLabel != "" ? §5#§.defaultStartLabel : "";
               _loc6_ = §5#§.startLabel != "" ? §5#§.startLabel : _loc5_;
               if(!§;0§(_loc2_,_loc6_))
               {
                  _loc6_ = _loc5_;
               }
               if(_loc6_ != "")
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
               §!"'§.splice(param1,1);
               ++this.§53§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §!"'§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§[v§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§7!M§ += param1;
         while(this.§7!M§ >= this.§@!J§)
         {
            this.runAnimations();
            this.§7!M§ -= this.§@!J§;
            if(this.§53§ >= this.§^L§)
            {
               if(stage && §5#§.stageQuality != "")
               {
                  stage.quality = this.§9I§;
               }
               §%!e§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§[!d§) : void
      {
         super.start(param1);
         this.§^L§ = §!"'§.length;
         this.§53§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§9I§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
