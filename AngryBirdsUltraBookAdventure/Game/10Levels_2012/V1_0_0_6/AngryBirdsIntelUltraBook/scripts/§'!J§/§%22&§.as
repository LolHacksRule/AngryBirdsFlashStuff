package §'!J§
{
   import §#&§.§1A§;
   import §+0§.§,!E§;
   import §+0§.§;!>§;
   import §;!o§.§>!l§;
   import §?N§.§]!e§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §"&§ extends §;!>§
   {
      
      private static const §?Q§:Number = 0.2;
      
      private static const §]!8§:Number = 60;
       
      
      private var §]!T§:Boolean = false;
      
      protected var §^h§:Number = -1;
      
      protected var §'5§:Number = 0;
      
      private var §]Z§:Boolean = false;
      
      private var §?=§:Number = 60;
      
      public function §"&§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§0%§(0);
      }
      
      private function §]4§() : int
      {
         var _loc1_:String = §1A§.§;!l§();
         if(_loc1_ != "")
         {
            if(!this.§]Z§)
            {
               this.§]Z§ = true;
               §]!e§.§>k§();
               throw new Error(_loc1_,§1A§.§?!L§());
            }
            return §,!E§.STATE_STATUS_RUNNING;
         }
         §>!l§.§ a§("onFlashLoadComplete");
         return §,!E§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§^h§ == -1)
         {
            this.§^h§ = new Date().time;
         }
         if(!this.§]!T§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §,!E§.STATE_STATUS_COMPLETED)
            {
               this.§]!T§ = true;
               this.§'5§ = 1;
            }
         }
         var _loc2_:Number = this.§'U§();
         this.§0%§(_loc2_);
         if(_loc2_ == 1 && this.§]!T§)
         {
            return this.§]4§();
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function §'U§() : Number
      {
         var _loc1_:Number = !!§1A§.§@B§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§=!q§(_loc1_ == 1 && this.§'5§ == 1);
         if(this.§'5§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§'5§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §=!q§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§?=§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§^h§) / 1000,this.§?=§) / this.§?=§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§'5§ = param1;
      }
      
      private function §0%§(param1:Number) : void
      {
         (§3!s§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§3!s§)
         {
            §3!s§.x = 0;
            §3!s§.y = 0;
         }
      }
   }
}
