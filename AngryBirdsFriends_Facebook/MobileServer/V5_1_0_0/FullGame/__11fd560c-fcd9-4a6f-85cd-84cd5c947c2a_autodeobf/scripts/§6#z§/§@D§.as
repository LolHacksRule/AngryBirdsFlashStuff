package §6#z§
{
   import §!#"§.§&"H§;
   import §-!S§.§##>§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §@D§ extends EventDispatcher
   {
       
      
      private var §=]§:Number;
      
      private var §0!V§:MovieClip;
      
      private var §`+§:String;
      
      public function §@D§(param1:MovieClip, param2:String)
      {
         super();
         this.§0!V§ = param1;
         this.§`+§ = param2;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      public function get §=$$§() : String
      {
         return this.§`+§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§0!V§.stop();
         this.§0!V§.crown.stop();
         this.§0!V§.star1.graphic.stop();
         this.§0!V§.star2.graphic.stop();
         this.§0!V§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§44§(this.§`+§);
         this.§0!V§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§`+§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§`+§) == 100;
            _loc4_ = userProgress.§,C§(this.§`+§);
            this.§0!V§.star1.graphic.visible = true;
            this.§0!V§.star2.graphic.visible = true;
            this.§0!V§.star3.graphic.visible = true;
            this.§0!V§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§0!V§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§0!V§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§0!V§.crown.visible = true;
               this.§0!V§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§0!V§.crown.visible = false;
            }
            this.§0!V§.feather.visible = _loc3_;
            this.§0!V§.buttonMode = true;
            this.§0!V§.addEventListener(MouseEvent.CLICK,this.§'"p§);
            this.§0!V§.addEventListener(MouseEvent.ROLL_OVER,this.§@$=§);
            this.§0!V§.addEventListener(MouseEvent.ROLL_OUT,this.§6"2§);
            this.§=]§ = this.§0!V§.scaleX;
         }
         else
         {
            this.§0!V§.star1.graphic.visible = false;
            this.§0!V§.star2.graphic.visible = false;
            this.§0!V§.star3.graphic.visible = false;
            this.§0!V§.feather.visible = false;
            this.§0!V§.buttonMode = false;
            this.§0!V§.crown.visible = false;
         }
      }
      
      private function §@$=§(param1:MouseEvent) : void
      {
         §&"H§.§6!§.§6C§(param1.currentTarget,{
            "scaleX":this.§=]§ + 0.05,
            "scaleY":this.§=]§ + 0.05
         },null,0.2,§&"H§.§!!;§).play();
      }
      
      private function §6"2§(param1:MouseEvent) : void
      {
         §&"H§.§6!§.§6C§(param1.currentTarget,{
            "scaleX":this.§=]§,
            "scaleY":this.§=]§
         },null,0.2,§&"H§.§!!;§).play();
      }
      
      private function §'"p§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§=]§;
         dispatchEvent(param1);
      }
   }
}
