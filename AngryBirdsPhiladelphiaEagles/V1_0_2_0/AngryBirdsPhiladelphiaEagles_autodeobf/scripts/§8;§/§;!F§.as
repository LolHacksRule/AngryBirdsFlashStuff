package §8;§
{
   import §%!;§.§!L§;
   import §%!;§.§31§;
   import §4!6§.§<5§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §;!F§ extends §31§
   {
      
      private static const §40§:Number = 0.2;
      
      private static const §1!C§:Number = 5;
       
      
      private var §^!8§:Boolean = false;
      
      protected var §-G§:Number = -1;
      
      protected var §8C§:Number = 0;
      
      private var §>!K§:Boolean = false;
      
      private var §;d§:Number = 5;
      
      private var §?!K§:Boolean = false;
      
      private var §<!#§:Boolean = false;
      
      public function §;!F§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§;N§(0);
      }
      
      private function §8n§() : int
      {
         if(!this.§<!#§)
         {
            return §!L§.STATE_STATUS_RUNNING;
         }
         return §!L§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§-G§ == -1)
         {
            this.§-G§ = new Date().time;
         }
         if(!this.§^!8§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §!L§.STATE_STATUS_COMPLETED)
            {
               this.§^!8§ = true;
               this.§8C§ = 1;
            }
         }
         var _loc2_:Number = this.§]! §();
         this.§;N§(_loc2_);
         if(_loc2_ == 1 && this.§^!8§)
         {
            if(!this.§?!K§)
            {
               this.§?!K§ = true;
               §<5§.§&y§.addEventListener(§<5§.SERVER_CALL_COMPLETE,this.§!%§);
               §<5§.§&y§.§<!L§();
            }
            else if(this.§<!#§)
            {
               return this.§8n§();
            }
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      private function §!%§(param1:Event) : void
      {
         this.§<!#§ = true;
      }
      
      private function §]! §() : Number
      {
         var _loc1_:Number = this.§8!6§(this.§8C§ == 1);
         if(this.§8C§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§8C§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §8!6§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§;d§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§-G§) / 1000,this.§;d§) / this.§;d§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§8C§ = param1;
      }
      
      private function §;N§(param1:Number) : void
      {
         if(§2Z§.getChildByName("Bar"))
         {
            (§2Z§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
