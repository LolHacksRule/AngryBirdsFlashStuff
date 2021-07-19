package §;u§
{
   import §#"A§.§'"U§;
   import §,l§.§;!O§;
   import §2<§.§8M§;
   import §30§.§'"+§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8";§.§?4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §=c§ extends §?4§
   {
      
      private static const §]!2§:Number = 0.2;
      
      private static const §="$§:Number = 60;
       
      
      private var §<z§:Boolean = false;
      
      protected var §"g§:Number = -1;
      
      protected var §'"V§:Number = 0;
      
      private var §!!"§:Boolean = false;
      
      private var §6!b§:Number = 60;
      
      private var §^!L§:String;
      
      public function §=c§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "", param6:String = "")
      {
         this.§^!L§ = param5;
         super(param1,param2,param3,param4,param6);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§0"A§(0);
         var _loc2_:Number = Math.random();
         var _loc3_:MovieClip = §+"K§.getChildByName("Tip") as MovieClip;
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
      
      private function §;!P§() : int
      {
         var _loc1_:String = §;!O§.§1"Z§();
         if(_loc1_ != "")
         {
            if(!this.§!!"§)
            {
               this.§!!"§ = true;
               §9"6§.§>_§();
               throw new Error(_loc1_,§;!O§.§!!q§());
            }
            return §+d§.STATE_STATUS_RUNNING;
         }
         §'"+§.§'!#§("onFlashLoadComplete");
         return §+d§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§"g§ == -1)
         {
            this.§"g§ = new Date().time;
         }
         if(!this.§<z§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §+d§.STATE_STATUS_COMPLETED)
            {
               this.§<z§ = true;
               this.§'"V§ = 1;
            }
         }
         var _loc2_:Number = this.§2!+§();
         this.§0"A§(_loc2_);
         if(_loc2_ == 1 && this.§<z§)
         {
            return this.§;!P§();
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      private function §2!+§() : Number
      {
         var _loc1_:Number = !!§;!O§.§each § ? Number(0) : Number(1);
         var _loc2_:Number = this.§'E§(_loc1_ == 1 && this.§'"V§ == 1);
         if(this.§'"V§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§'"V§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §'E§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§6!b§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§"g§) / 1000,this.§6!b§) / this.§6!b§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override protected function initLoadManager() : void
      {
         §'"U§.§&"5§.init(§8M§.§+!y§(),§?!<§,§>"Y§,null,null,this.§^!L§,"/flash/");
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§'"V§ = param1;
      }
      
      private function §0"A§(param1:Number) : void
      {
         (§+"K§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§+"K§)
         {
            param1 += 180;
            §+"K§.x = param1 - §+"K§.width >> 1;
            §+"K§.y = param2 - 570 >> 1;
         }
      }
   }
}
