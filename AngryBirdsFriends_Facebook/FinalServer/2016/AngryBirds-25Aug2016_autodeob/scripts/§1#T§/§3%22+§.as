package §1#T§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §3"+§ extends §2f§
   {
      
      public static const §?!"§:Number = 1000 / 24;
       
      
      protected var §"U§:Number;
      
      protected var §0>§:int;
      
      protected var §86§:int;
      
      protected var §>!?§:int;
      
      protected var §&!5§:String = "best";
      
      public function §3"+§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§86§ = 0;
         this.§>!?§ = param1.length;
         this.§"U§ = param3;
         this.§0>§ = 0;
      }
      
      protected function §^<§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §2#g§[param1];
         if(§[2§ && !§2_§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §7$ §(_loc2_,§[2§);
         }
         if(_loc3_)
         {
            if(§<"s§.loop && !§[2§)
            {
               _loc5_ = §<"s§.defaultStartLabel != "" ? §<"s§.defaultStartLabel : "";
               _loc6_ = §<"s§.startLabel != "" ? §<"s§.startLabel : _loc5_;
               if(!§["[§(_loc2_,_loc6_))
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
               §2#g§.splice(param1,1);
               ++this.§86§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §2#g§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§^<§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§0>§ += param1;
         while(this.§0>§ >= this.§"U§)
         {
            this.runAnimations();
            this.§0>§ -= this.§"U§;
            if(this.§86§ >= this.§>!?§)
            {
               if(stage && §<"s§.stageQuality != "")
               {
                  stage.quality = this.§&!5§;
               }
               §?#H§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§ #<§) : void
      {
         super.start(param1);
         this.§>!?§ = §2#g§.length;
         this.§86§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§&!5§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
