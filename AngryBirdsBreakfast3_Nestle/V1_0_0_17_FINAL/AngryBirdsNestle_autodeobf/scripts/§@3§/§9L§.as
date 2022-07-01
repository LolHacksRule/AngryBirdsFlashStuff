package §@3§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §9L§ extends §+z§
   {
      
      public static const §^X§:Number = 1000 / 24;
       
      
      protected var §9B§:Number;
      
      protected var §+"1§:int;
      
      protected var §5n§:int;
      
      protected var §5!y§:int;
      
      protected var §=!E§:String = "best";
      
      public function §9L§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§5n§ = 0;
         this.§5!y§ = param1.length;
         this.§9B§ = param3;
         this.§+"1§ = 0;
      }
      
      protected function §2!A§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §;>§[param1];
         if(§]R§ && !§#5§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §&3§(_loc2_,§]R§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §,8§.loop && !§]R§)
            {
               _loc5_ = §,8§.defaultStartLabel != "" ? §,8§.defaultStartLabel : "";
               _loc6_ = §,8§.startLabel != "" ? §,8§.startLabel : _loc5_;
               if(!§73§(_loc2_,_loc6_))
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
               §;>§.splice(param1,1);
               ++this.§5n§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §;>§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§2!A§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§+"1§ += param1;
         while(this.§+"1§ >= this.§9B§)
         {
            this.runAnimations();
            this.§+"1§ -= this.§9B§;
            if(this.§5n§ >= this.§5!y§)
            {
               if(stage && §,8§.stageQuality != "")
               {
                  stage.quality = this.§=!E§;
               }
               §3T§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§]K§) : void
      {
         super.start(param1);
         this.§5!y§ = §;>§.length;
         this.§5n§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§=!E§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
