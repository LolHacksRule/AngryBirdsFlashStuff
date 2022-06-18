package §88§
{
   import § if§.§2q§;
   import § if§.§^!1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §8!B§ extends §^!1§
   {
      
      private static const §1!K§:Number = 0.2;
      
      private static const §%!J§:Number = 5;
       
      
      private var §+!<§:Boolean = false;
      
      protected var §>m§:Number = -1;
      
      protected var §[$§:Number = 0;
      
      private var §?! §:Boolean = false;
      
      private var §-9§:Number = 5;
      
      public function §8!B§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§^Z§(0);
      }
      
      private function §8!#§() : int
      {
         return §2q§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§>m§ == -1)
         {
            this.§>m§ = new Date().time;
         }
         if(!this.§+!<§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §2q§.STATE_STATUS_COMPLETED)
            {
               this.§+!<§ = true;
               this.§[$§ = 1;
            }
         }
         var _loc2_:Number = this.§8!4§();
         this.§^Z§(_loc2_);
         if(_loc2_ == 1 && this.§+!<§)
         {
            return this.§8!#§();
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      private function §8!4§() : Number
      {
         var _loc1_:Number = this.§+P§(this.§[$§ == 1);
         if(this.§[$§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§[$§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §+P§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§-9§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§>m§) / 1000,this.§-9§) / this.§-9§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§[$§ = param1;
      }
      
      private function §^Z§(param1:Number) : void
      {
         if(§-N§.getChildByName("Bar"))
         {
            (§-N§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
