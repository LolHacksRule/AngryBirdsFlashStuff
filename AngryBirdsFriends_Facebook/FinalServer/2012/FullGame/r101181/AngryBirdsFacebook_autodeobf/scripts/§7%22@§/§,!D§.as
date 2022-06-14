package §7"@§
{
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §0!G§.§#`§;
   import §0!G§.§1-§;
   import §]!>§.§"!w§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §,!D§ extends §#`§
   {
      
      private static const §7!`§:Number = 0.2;
      
      private static const §@!`§:Number = 60;
       
      
      private var §%!t§:Boolean = false;
      
      protected var §,"0§:Number = -1;
      
      protected var §7n§:Number = 0;
      
      private var §^!_§:Boolean = false;
      
      private var §+!y§:Number = 60;
      
      public function §,!D§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§3A§(0);
         var _loc2_:Number = Math.random();
         var _loc3_:MovieClip = §"">§.getChildByName("Tip") as MovieClip;
         if(_loc3_)
         {
            if(_loc2_ < 0.05)
            {
               _loc3_.gotoAndStop(6);
            }
            else if(_loc2_ < 0.1)
            {
               _loc3_.gotoAndStop(5);
            }
            else if(_loc2_ < 0.15)
            {
               _loc3_.gotoAndStop(4);
            }
            else if(_loc2_ < 0.2)
            {
               _loc3_.gotoAndStop(3);
            }
            else if(_loc2_ < 0.4)
            {
               _loc3_.gotoAndStop(1);
            }
            else if(_loc2_ < 0.6)
            {
               _loc3_.gotoAndStop(2);
            }
            else if(_loc2_ < 0.8)
            {
               _loc3_.gotoAndStop(7);
            }
            else
            {
               _loc3_.gotoAndStop(8);
            }
         }
      }
      
      private function §5i§() : int
      {
         var _loc1_:String = §"!w§.§8"3§();
         if(_loc1_ != "")
         {
            if(!this.§^!_§)
            {
               this.§^!_§ = true;
               §%?§.§6!7§();
               throw new Error(_loc1_,§"!w§.§6E§());
            }
            return §1-§.STATE_STATUS_RUNNING;
         }
         §@!]§.§9"'§("onFlashLoadComplete");
         return §1-§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§,"0§ == -1)
         {
            this.§,"0§ = new Date().time;
         }
         if(!this.§%!t§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §1-§.STATE_STATUS_COMPLETED)
            {
               this.§%!t§ = true;
               this.§7n§ = 1;
            }
         }
         var _loc2_:Number = this.§1!W§();
         this.§3A§(_loc2_);
         if(_loc2_ == 1 && this.§%!t§)
         {
            return this.§5i§();
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      private function §1!W§() : Number
      {
         var _loc1_:Number = !!§"!w§.§6I§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§9!w§(_loc1_ == 1 && this.§7n§ == 1);
         if(this.§7n§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§7n§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §9!w§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§+!y§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§,"0§) / 1000,this.§+!y§) / this.§+!y§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§7n§ = param1;
      }
      
      private function §3A§(param1:Number) : void
      {
         (§"">§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§"">§)
         {
            param1 += 180;
            §"">§.x = param1 - §"">§.width >> 1;
            §"">§.y = param2 - 570 >> 1;
         }
      }
   }
}
