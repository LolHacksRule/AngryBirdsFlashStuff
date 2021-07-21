package §1!F§
{
   import §=!3§.§;!!§;
   import §=!3§.§<!=§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §0!`§ extends §<!=§
   {
      
      private static const §"!Q§:Number = 0.2;
      
      private static const §;!h§:Number = 5;
       
      
      private var §+K§:Boolean = false;
      
      protected var §2!;§:Number = -1;
      
      protected var §&!V§:Number = 0;
      
      private var §?]§:Boolean = false;
      
      private var §`!R§:Number = 5;
      
      public function §0!`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§^!6§(0);
      }
      
      private function §]!F§() : int
      {
         return §;!!§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§2!;§ == -1)
         {
            this.§2!;§ = new Date().time;
         }
         if(!this.§+K§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §;!!§.STATE_STATUS_COMPLETED)
            {
               this.§+K§ = true;
               this.§&!V§ = 1;
            }
         }
         var _loc2_:Number = this.§ !o§();
         this.§^!6§(_loc2_);
         if(_loc2_ == 1 && this.§+K§)
         {
            return this.§]!F§();
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function § !o§() : Number
      {
         var _loc1_:Number = this.§&;§(this.§&!V§ == 1);
         if(this.§&!V§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§&!V§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §&;§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§`!R§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§2!;§) / 1000,this.§`!R§) / this.§`!R§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§&!V§ = param1;
      }
      
      private function §^!6§(param1:Number) : void
      {
         if(§^U§.getChildByName("Bar"))
         {
            (§^U§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
