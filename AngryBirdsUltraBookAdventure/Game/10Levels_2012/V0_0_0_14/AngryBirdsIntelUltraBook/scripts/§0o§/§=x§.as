package §0o§
{
   import §&9§.§1?§;
   import §4[§.§3q§;
   import §8,§.§+_§;
   import §8,§.§5T§;
   import §9!Q§.§7o§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §=x§ extends §5T§
   {
      
      private static const §+!e§:Number = 0.2;
      
      private static const §+0§:Number = 60;
       
      
      private var §04§:Boolean = false;
      
      protected var §!s§:Number = -1;
      
      protected var §0%§:Number = 0;
      
      private var §0!v§:Boolean = false;
      
      private var §@D§:Number = 60;
      
      public function §=x§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§>"§(0);
      }
      
      private function §&H§() : int
      {
         var _loc1_:String = §3q§.§]!M§();
         if(_loc1_ != "")
         {
            if(!this.§0!v§)
            {
               this.§0!v§ = true;
               §7o§.§-Y§();
               throw new Error(_loc1_,§3q§.§?s§());
            }
            return §+_§.STATE_STATUS_RUNNING;
         }
         §1?§.§>!X§("onFlashLoadComplete");
         return §+_§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§!s§ == -1)
         {
            this.§!s§ = new Date().time;
         }
         if(!this.§04§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §+_§.STATE_STATUS_COMPLETED)
            {
               this.§04§ = true;
               this.§0%§ = 1;
            }
         }
         var _loc2_:Number = this.§3Z§();
         this.§>"§(_loc2_);
         if(_loc2_ == 1 && this.§04§)
         {
            return this.§&H§();
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      private function §3Z§() : Number
      {
         var _loc1_:Number = !!§3q§.§6j§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§'1§(_loc1_ == 1 && this.§0%§ == 1);
         if(this.§0%§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§0%§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §'1§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§@D§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§!s§) / 1000,this.§@D§) / this.§@D§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§0%§ = param1;
      }
      
      private function §>"§(param1:Number) : void
      {
         (§,!4§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§,!4§)
         {
            §,!4§.x = 0;
            §,!4§.y = 0;
         }
      }
   }
}
