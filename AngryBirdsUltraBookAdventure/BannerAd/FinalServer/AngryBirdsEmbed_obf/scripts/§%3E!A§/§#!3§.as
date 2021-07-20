package §>!A§
{
   import §"!&§.§#!,§;
   import §"!&§.§=F§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §#!3§ extends §=F§
   {
      
      private static const §!q§:Number = 0.2;
      
      private static const §6j§:Number = 5;
       
      
      private var §`!5§:Boolean = false;
      
      protected var §6A§:Number = -1;
      
      protected var §'!2§:Number = 0;
      
      private var §6!;§:Boolean = false;
      
      private var §+!4§:Number = 5;
      
      public function §#!3§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§6!>§(0);
      }
      
      private function §1r§() : int
      {
         return §#!,§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§6A§ == -1)
         {
            this.§6A§ = new Date().time;
         }
         if(!this.§`!5§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §#!,§.STATE_STATUS_COMPLETED)
            {
               this.§`!5§ = true;
               this.§'!2§ = 1;
            }
         }
         var _loc2_:Number = this.§9!'§();
         this.§6!>§(_loc2_);
         if(_loc2_ == 1 && this.§`!5§)
         {
            return this.§1r§();
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      private function §9!'§() : Number
      {
         var _loc1_:Number = this.§<"§(this.§'!2§ == 1);
         if(this.§'!2§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§'!2§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §<"§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§+!4§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§6A§) / 1000,this.§+!4§) / this.§+!4§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§'!2§ = param1;
      }
      
      private function §6!>§(param1:Number) : void
      {
         if(§&G§.getChildByName("Bar"))
         {
            (§&G§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
