package §?"f§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §2x§ extends §0!o§
   {
      
      public static const §!!3§:Number = 1000 / 24;
       
      
      protected var §2$A§:Number;
      
      protected var §[!p§:int;
      
      protected var §>o§:int;
      
      protected var §in§:int;
      
      protected var §'"o§:String = "best";
      
      public function §2x§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§>o§ = 0;
         this.§in§ = param1.length;
         this.§2$A§ = param3;
         this.§[!p§ = 0;
      }
      
      protected function §-"%§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §!"P§[param1];
         if(§&1§ && !§`5§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §%A§(_loc2_,§&1§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §?!'§.loop && !§&1§)
            {
               _loc5_ = §?!'§.defaultStartLabel != "" ? §?!'§.defaultStartLabel : "";
               _loc6_ = §?!'§.startLabel != "" ? §?!'§.startLabel : _loc5_;
               if(!§ !'§(_loc2_,_loc6_))
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
               §!"P§.splice(param1,1);
               ++this.§>o§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §!"P§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§-"%§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§[!p§ += param1;
         while(this.§[!p§ >= this.§2$A§)
         {
            this.runAnimations();
            this.§[!p§ -= this.§2$A§;
            if(this.§>o§ >= this.§in§)
            {
               if(stage && §?!'§.stageQuality != "")
               {
                  stage.quality = this.§'"o§;
               }
               §-#?§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§!Y§) : void
      {
         super.start(param1);
         this.§in§ = §!"P§.length;
         this.§>o§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§'"o§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
