package §,!m§
{
   import § null§.§5"<§;
   import §-"S§.§>#G§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §;$1§ extends EventDispatcher
   {
       
      
      private var §=5§:Number;
      
      private var §5!A§:MovieClip;
      
      private var §,!A§:String;
      
      public function §;$1§(param1:MovieClip, param2:String)
      {
         super();
         this.§5!A§ = param1;
         this.§,!A§ = param2;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      public function get §-#>§() : String
      {
         return this.§,!A§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§5!A§.stop();
         this.§5!A§.crown.stop();
         this.§5!A§.star1.graphic.stop();
         this.§5!A§.star2.graphic.stop();
         this.§5!A§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§3"^§(this.§,!A§);
         this.§5!A§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§,!A§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§,!A§) == 100;
            _loc4_ = userProgress.§<u§(this.§,!A§);
            this.§5!A§.star1.graphic.visible = true;
            this.§5!A§.star2.graphic.visible = true;
            this.§5!A§.star3.graphic.visible = true;
            this.§5!A§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§5!A§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§5!A§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§5!A§.crown.visible = true;
               this.§5!A§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§5!A§.crown.visible = false;
            }
            this.§5!A§.feather.visible = _loc3_;
            this.§5!A§.buttonMode = true;
            this.§5!A§.addEventListener(MouseEvent.CLICK,this.§3[§);
            this.§5!A§.addEventListener(MouseEvent.ROLL_OVER,this.§#!y§);
            this.§5!A§.addEventListener(MouseEvent.ROLL_OUT,this.§`Q§);
            this.§=5§ = this.§5!A§.scaleX;
         }
         else
         {
            this.§5!A§.star1.graphic.visible = false;
            this.§5!A§.star2.graphic.visible = false;
            this.§5!A§.star3.graphic.visible = false;
            this.§5!A§.feather.visible = false;
            this.§5!A§.buttonMode = false;
            this.§5!A§.crown.visible = false;
         }
      }
      
      private function §#!y§(param1:MouseEvent) : void
      {
         §5"<§.§3"1§.§3#§(param1.currentTarget,{
            "scaleX":this.§=5§ + 0.05,
            "scaleY":this.§=5§ + 0.05
         },null,0.2,§5"<§.§6=§).play();
      }
      
      private function §`Q§(param1:MouseEvent) : void
      {
         §5"<§.§3"1§.§3#§(param1.currentTarget,{
            "scaleX":this.§=5§,
            "scaleY":this.§=5§
         },null,0.2,§5"<§.§6=§).play();
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§=5§;
         dispatchEvent(param1);
      }
   }
}
