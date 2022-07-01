package §0K§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §#-§ extends §;j§
   {
      
      public static const §0v§:Number = 1000 / 24;
       
      
      protected var §4R§:Number;
      
      protected var §4E§:int;
      
      protected var §?H§:int;
      
      protected var §=D§:int;
      
      protected var §!P§:String = "best";
      
      public function §#-§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§?H§ = 0;
         this.§=D§ = param1.length;
         this.§4R§ = param3;
         this.§4E§ = 0;
      }
      
      protected function §1`§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §+!§[param1];
         if(§^7§ && !§>"&§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §]!J§(_loc2_,§^7§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §!!A§.loop && !§^7§)
            {
               _loc5_ = §!!A§.defaultStartLabel != "" ? §!!A§.defaultStartLabel : "";
               _loc6_ = §!!A§.startLabel != "" ? §!!A§.startLabel : _loc5_;
               if(!§&"5§(_loc2_,_loc6_))
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
               §+!§.splice(param1,1);
               ++this.§?H§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §+!§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§1`§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§4E§ += param1;
         while(this.§4E§ >= this.§4R§)
         {
            this.runAnimations();
            this.§4E§ -= this.§4R§;
            if(this.§?H§ >= this.§=D§)
            {
               if(stage && §!!A§.stageQuality != "")
               {
                  stage.quality = this.§!P§;
               }
               §9!-§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§&"§) : void
      {
         super.start(param1);
         this.§=D§ = §+!§.length;
         this.§?H§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§!P§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
