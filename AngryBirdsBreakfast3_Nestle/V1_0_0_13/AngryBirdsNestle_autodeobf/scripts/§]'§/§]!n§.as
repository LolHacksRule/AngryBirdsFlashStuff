package §]'§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §]!n§ extends §<!-§
   {
      
      public static const §^!H§:Number = 1000 / 24;
       
      
      protected var §+!-§:Number;
      
      protected var §8K§:int;
      
      protected var §-"&§:int;
      
      protected var §="2§:int;
      
      protected var §["#§:String = "best";
      
      public function §]!n§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§-"&§ = 0;
         this.§="2§ = param1.length;
         this.§+!-§ = param3;
         this.§8K§ = 0;
      }
      
      protected function §^!$§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[!u§[param1];
         if(§9!#§ && !§3!N§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §3%§(_loc2_,§9!#§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §+M§.loop && !§9!#§)
            {
               _loc5_ = §+M§.defaultStartLabel != "" ? §+M§.defaultStartLabel : "";
               _loc6_ = §+M§.startLabel != "" ? §+M§.startLabel : _loc5_;
               if(!§[R§(_loc2_,_loc6_))
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
               §[!u§.splice(param1,1);
               ++this.§-"&§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §[!u§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§^!$§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§8K§ += param1;
         while(this.§8K§ >= this.§+!-§)
         {
            this.runAnimations();
            this.§8K§ -= this.§+!-§;
            if(this.§-"&§ >= this.§="2§)
            {
               if(stage && §+M§.stageQuality != "")
               {
                  stage.quality = this.§["#§;
               }
               §<n§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§'"+§) : void
      {
         super.start(param1);
         this.§="2§ = §[!u§.length;
         this.§-"&§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§["#§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
