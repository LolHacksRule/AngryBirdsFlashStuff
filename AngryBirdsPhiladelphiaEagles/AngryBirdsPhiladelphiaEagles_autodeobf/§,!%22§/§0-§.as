package §,!"§
{
   import §'!O§.§'!#§;
   import §'!O§.§]L§;
   import §]p§.§9!,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0-§ extends §]L§
   {
      
      private static const § !%§:Number = 0.2;
      
      private static const §9Q§:Number = 5;
       
      
      private var §,!O§:Boolean = false;
      
      protected var §5!@§:Number = -1;
      
      protected var §1s§:Number = 0;
      
      private var §9-§:Boolean = false;
      
      private var §&!<§:Number = 5;
      
      private var §5!2§:Boolean = false;
      
      private var §"'§:Boolean = false;
      
      public function §0-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§<8§(0);
      }
      
      private function §0j§() : int
      {
         if(!this.§"'§)
         {
            return §'!#§.STATE_STATUS_RUNNING;
         }
         return §'!#§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§5!@§ == -1)
         {
            this.§5!@§ = new Date().time;
         }
         if(!this.§,!O§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §'!#§.STATE_STATUS_COMPLETED)
            {
               this.§,!O§ = true;
               this.§1s§ = 1;
            }
         }
         var _loc2_:Number = this.§]Q§();
         this.§<8§(_loc2_);
         if(_loc2_ == 1 && this.§,!O§)
         {
            if(!this.§5!2§)
            {
               this.§5!2§ = true;
               §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
               §9!,§.§>o§.§>!9§();
            }
            else if(this.§"'§)
            {
               return this.§0j§();
            }
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      private function §6!"§(param1:Event) : void
      {
         this.§"'§ = true;
      }
      
      private function §]Q§() : Number
      {
         var _loc1_:Number = this.§1!+§(this.§1s§ == 1);
         if(this.§1s§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§1s§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §1!+§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§&!<§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§5!@§) / 1000,this.§&!<§) / this.§&!<§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§1s§ = param1;
      }
      
      private function §<8§(param1:Number) : void
      {
         if(§#s§.getChildByName("Bar"))
         {
            (§#s§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
