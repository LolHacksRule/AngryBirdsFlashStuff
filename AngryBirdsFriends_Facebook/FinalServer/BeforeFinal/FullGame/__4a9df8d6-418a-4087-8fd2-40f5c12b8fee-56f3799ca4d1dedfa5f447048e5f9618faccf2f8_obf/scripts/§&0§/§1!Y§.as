package §&0§
{
   import §&$3§.§"!&§;
   import §7R§.§ #`§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §1!Y§ extends EventDispatcher
   {
       
      
      private var §%#N§:Number;
      
      private var §,!y§:MovieClip;
      
      private var §>!§:String;
      
      public function §1!Y§(param1:MovieClip, param2:String)
      {
         super();
         this.§,!y§ = param1;
         this.§>!§ = param2;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      public function get §[#`§() : String
      {
         return this.§>!§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§,!y§.stop();
         this.§,!y§.crown.stop();
         this.§,!y§.star1.graphic.stop();
         this.§,!y§.star2.graphic.stop();
         this.§,!y§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§^!^§(this.§>!§);
         this.§,!y§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§>!§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§>!§) == 100;
            _loc4_ = userProgress.§ #T§(this.§>!§);
            this.§,!y§.star1.graphic.visible = true;
            this.§,!y§.star2.graphic.visible = true;
            this.§,!y§.star3.graphic.visible = true;
            this.§,!y§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§,!y§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§,!y§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§,!y§.crown.visible = true;
               this.§,!y§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§,!y§.crown.visible = false;
            }
            this.§,!y§.feather.visible = _loc3_;
            this.§,!y§.buttonMode = true;
            this.§,!y§.addEventListener(MouseEvent.CLICK,this.§!"$§);
            this.§,!y§.addEventListener(MouseEvent.ROLL_OVER,this.§#!Q§);
            this.§,!y§.addEventListener(MouseEvent.ROLL_OUT,this.§;!,§);
            this.§%#N§ = this.§,!y§.scaleX;
         }
         else
         {
            this.§,!y§.star1.graphic.visible = false;
            this.§,!y§.star2.graphic.visible = false;
            this.§,!y§.star3.graphic.visible = false;
            this.§,!y§.feather.visible = false;
            this.§,!y§.buttonMode = false;
            this.§,!y§.crown.visible = false;
         }
      }
      
      private function §#!Q§(param1:MouseEvent) : void
      {
         §"!&§.§`"H§.§1"W§(param1.currentTarget,{
            "scaleX":this.§%#N§ + 0.05,
            "scaleY":this.§%#N§ + 0.05
         },null,0.2,§"!&§.§%# §).play();
      }
      
      private function §;!,§(param1:MouseEvent) : void
      {
         §"!&§.§`"H§.§1"W§(param1.currentTarget,{
            "scaleX":this.§%#N§,
            "scaleY":this.§%#N§
         },null,0.2,§"!&§.§%# §).play();
      }
      
      private function §!"$§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§%#N§;
         dispatchEvent(param1);
      }
   }
}
