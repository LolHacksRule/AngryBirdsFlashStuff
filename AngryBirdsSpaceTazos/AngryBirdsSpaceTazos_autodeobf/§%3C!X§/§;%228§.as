package §<!X§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §;"8§ extends §^"G§
   {
      
      public static const §+"@§:Number = 1000 / 24;
       
      
      protected var §6!"§:Number;
      
      protected var §4"9§:int;
      
      protected var §,+§:int;
      
      protected var §<!G§:int;
      
      protected var § !D§:String = "best";
      
      public function §;"8§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§,+§ = 0;
         this.§<!G§ = param1.length;
         this.§6!"§ = param3;
         this.§4"9§ = 0;
      }
      
      protected function §3p§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §'G§[param1];
         if(§!7§ && !§'g§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §]"3§(_loc2_,§!7§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §0";§.loop && !§!7§)
            {
               _loc5_ = §0";§.defaultStartLabel != "" ? §0";§.defaultStartLabel : "";
               if((_loc6_ = §0";§.startLabel != "" ? §0";§.startLabel : _loc5_) != "")
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
               §'G§.splice(param1,1);
               ++this.§,+§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §'G§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§3p§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§4"9§ += param1;
         while(this.§4"9§ >= this.§6!"§)
         {
            this.runAnimations();
            this.§4"9§ -= this.§6!"§;
            if(this.§,+§ >= this.§<!G§)
            {
               if(stage && §0";§.stageQuality != "")
               {
                  stage.quality = this.§ !D§;
               }
               § else§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§7C§, param2:Boolean = true) : void
      {
         super.start(param1,param2);
         this.§<!G§ = §'G§.length;
         this.§,+§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§ !D§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
