package §[!K§
{
   import §!!t§.§,-§;
   import §!!t§.§[!A§;
   import §2!,§.§ in§;
   import §7N§.§43§;
   import §<"1§.§,U§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §7!e§ extends §[!A§
   {
      
      private static const §#!d§:Number = 0.2;
      
      private static const §8"+§:Number = 60;
       
      
      private var §>>§:Boolean = false;
      
      protected var §6"#§:Number = -1;
      
      protected var final:Number = 0;
      
      private var §-!0§:Boolean = false;
      
      private var §;Q§:Number = 60;
      
      public function §7!e§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§@!#§(0);
         var _loc2_:Number = Math.random();
         var _loc3_:MovieClip = §2!S§.getChildByName("Tip") as MovieClip;
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
      
      private function §'!T§() : int
      {
         var _loc1_:String = § in§.§'"7§();
         if(_loc1_ != "")
         {
            if(!this.§-!0§)
            {
               this.§-!0§ = true;
               §43§.§ "6§();
               throw new Error(_loc1_,§ in§.§,y§());
            }
            return §,-§.STATE_STATUS_RUNNING;
         }
         §,U§.§53§("onFlashLoadComplete");
         return §,-§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§6"#§ == -1)
         {
            this.§6"#§ = new Date().time;
         }
         if(!this.§>>§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §,-§.STATE_STATUS_COMPLETED)
            {
               this.§>>§ = true;
               this.final = 1;
            }
         }
         var _loc2_:Number = this.§]G§();
         this.§@!#§(_loc2_);
         if(_loc2_ == 1 && this.§>>§)
         {
            return this.§'!T§();
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      private function §]G§() : Number
      {
         var _loc1_:Number = !!§ in§.§%!H§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§>!4§(_loc1_ == 1 && this.final == 1);
         if(this.final == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.final * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §>!4§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§;Q§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§6"#§) / 1000,this.§;Q§) / this.§;Q§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.final = param1;
      }
      
      private function §@!#§(param1:Number) : void
      {
         (§2!S§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§2!S§)
         {
            param1 += 180;
            §2!S§.x = param1 - §2!S§.width >> 1;
            §2!S§.y = param2 - 570 >> 1;
         }
      }
   }
}
