package § !@§
{
   import §7g§.§'!;§;
   import §7g§.§1Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §4`§ extends §'!;§
   {
      
      private static const §7A§:Number = 0.2;
      
      private static const §10§:Number = 5;
       
      
      private var §2`§:Boolean = false;
      
      protected var §3!I§:Number = -1;
      
      protected var §7_§:Number = 0;
      
      private var §>!4§:Boolean = false;
      
      private var §#u§:Number = 5;
      
      public function §4`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§&!'§(0);
      }
      
      private function §]!&§() : int
      {
         return §1Q§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§3!I§ == -1)
         {
            this.§3!I§ = new Date().time;
         }
         if(!this.§2`§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §1Q§.STATE_STATUS_COMPLETED)
            {
               this.§2`§ = true;
               this.§7_§ = 1;
            }
         }
         var _loc2_:Number = this.§1!4§();
         this.§&!'§(_loc2_);
         if(_loc2_ == 1 && this.§2`§)
         {
            return this.§]!&§();
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      private function §1!4§() : Number
      {
         var _loc1_:Number = this.§8v§(this.§7_§ == 1);
         if(this.§7_§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§7_§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §8v§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§#u§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§3!I§) / 1000,this.§#u§) / this.§#u§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§7_§ = param1;
      }
      
      private function §&!'§(param1:Number) : void
      {
         if(§2-§.getChildByName("Bar"))
         {
            (§2-§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
