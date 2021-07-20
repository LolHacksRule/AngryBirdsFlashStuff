package §@",§
{
   import §&!"§.§`B§;
   import §<<§.§=!L§;
   import §=#§.§5!S§;
   import §=#§.§`!@§;
   import §^!U§.§8!a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class § J§ extends §`!@§
   {
      
      private static const §5A§:Number = 0.2;
      
      private static const §#!§:Number = 60;
       
      
      private var §+!l§:Boolean = false;
      
      protected var §=!p§:Number = -1;
      
      protected var §[",§:Number = 0;
      
      private var §#"&§:Boolean = false;
      
      private var §9!H§:Number = 60;
      
      public function § J§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§`§(0);
         var _loc2_:Number = Math.random();
         var _loc3_:MovieClip = §&!r§.getChildByName("Tip") as MovieClip;
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
      
      private function §+!"§() : int
      {
         var _loc1_:String = §8!a§.§;!V§();
         if(_loc1_ != "")
         {
            if(!this.§#"&§)
            {
               this.§#"&§ = true;
               §`B§.§#!i§();
               throw new Error(_loc1_,§8!a§.§%!o§());
            }
            return §5!S§.STATE_STATUS_RUNNING;
         }
         §=!L§.§+">§("onFlashLoadComplete");
         return §5!S§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§=!p§ == -1)
         {
            this.§=!p§ = new Date().time;
         }
         if(!this.§+!l§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §5!S§.STATE_STATUS_COMPLETED)
            {
               this.§+!l§ = true;
               this.§[",§ = 1;
            }
         }
         var _loc2_:Number = this.§0!0§();
         this.§`§(_loc2_);
         if(_loc2_ == 1 && this.§+!l§)
         {
            return this.§+!"§();
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      private function §0!0§() : Number
      {
         var _loc1_:Number = !!§8!a§.§@!o§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§>"§(_loc1_ == 1 && this.§[",§ == 1);
         if(this.§[",§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§[",§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §>"§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§9!H§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§=!p§) / 1000,this.§9!H§) / this.§9!H§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§[",§ = param1;
      }
      
      private function §`§(param1:Number) : void
      {
         (§&!r§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§&!r§)
         {
            param1 += 180;
            §&!r§.x = param1 - §&!r§.width >> 1;
            §&!r§.y = param2 - 570 >> 1;
         }
      }
   }
}
