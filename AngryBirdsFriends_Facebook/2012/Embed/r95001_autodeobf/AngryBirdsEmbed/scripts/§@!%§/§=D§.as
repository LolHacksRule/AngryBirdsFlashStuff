package §@!%§
{
   import §0m§.§,5§;
   import §0m§.§1!,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §=D§ extends §,5§
   {
      
      private static const §2g§:Number = 0.2;
      
      private static const §1!@§:Number = 5;
       
      
      private var §;!§:Boolean = false;
      
      protected var §^r§:Number = -1;
      
      protected var §@o§:Number = 0;
      
      private var §;!;§:Boolean = false;
      
      private var §<!@§:Number = 5;
      
      public function §=D§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§;!+§(0);
      }
      
      private function §]T§() : int
      {
         return §1!,§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§^r§ == -1)
         {
            this.§^r§ = new Date().time;
         }
         if(!this.§;!§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §1!,§.STATE_STATUS_COMPLETED)
            {
               this.§;!§ = true;
               this.§@o§ = 1;
            }
         }
         var _loc2_:Number = this.§1!&§();
         this.§;!+§(_loc2_);
         if(_loc2_ == 1 && this.§;!§)
         {
            return this.§]T§();
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      private function §1!&§() : Number
      {
         var _loc1_:Number = this.§`!@§(this.§@o§ == 1);
         if(this.§@o§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§@o§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §`!@§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§<!@§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§^r§) / 1000,this.§<!@§) / this.§<!@§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§@o§ = param1;
      }
      
      private function §;!+§(param1:Number) : void
      {
         if(§'l§.getChildByName("Bar"))
         {
            (§'l§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
