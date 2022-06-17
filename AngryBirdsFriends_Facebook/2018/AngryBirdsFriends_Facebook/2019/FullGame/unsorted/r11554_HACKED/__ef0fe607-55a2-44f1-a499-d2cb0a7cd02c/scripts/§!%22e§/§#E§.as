package §!"e§
{
   import §#!E§.§2#Q§;
   import §6§.§'#n§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §#E§ extends EventDispatcher
   {
       
      
      private var §0g§:Number;
      
      private var §==§:MovieClip;
      
      private var §#!1§:String;
      
      public function §#E§(param1:MovieClip, param2:String)
      {
         super();
         this.§==§ = param1;
         this.§#!1§ = param2;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      public function get §7#G§() : String
      {
         return this.§#!1§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§==§.stop();
         this.§==§.crown.stop();
         this.§==§.star1.graphic.stop();
         this.§==§.star2.graphic.stop();
         this.§==§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§!#h§(this.§#!1§);
         this.§==§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§#!1§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§#!1§) == 100;
            _loc4_ = userProgress.§5"I§(this.§#!1§);
            this.§==§.star1.graphic.visible = true;
            this.§==§.star2.graphic.visible = true;
            this.§==§.star3.graphic.visible = true;
            this.§==§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§==§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§==§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§==§.crown.visible = true;
               this.§==§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§==§.crown.visible = false;
            }
            this.§==§.feather.visible = _loc3_;
            this.§==§.buttonMode = true;
            this.§==§.addEventListener(MouseEvent.CLICK,this.§^!L§);
            this.§==§.addEventListener(MouseEvent.ROLL_OVER,this.§5"M§);
            this.§==§.addEventListener(MouseEvent.ROLL_OUT,this.§]!"§);
            this.§0g§ = this.§==§.scaleX;
         }
         else
         {
            this.§==§.star1.graphic.visible = false;
            this.§==§.star2.graphic.visible = false;
            this.§==§.star3.graphic.visible = false;
            this.§==§.feather.visible = false;
            this.§==§.buttonMode = false;
            this.§==§.crown.visible = false;
         }
      }
      
      private function §5"M§(param1:MouseEvent) : void
      {
         §'#n§.§?q§.§9!N§(param1.currentTarget,{
            "scaleX":this.§0g§ + 0.05,
            "scaleY":this.§0g§ + 0.05
         },null,0.2,§'#n§.§[i§).play();
      }
      
      private function §]!"§(param1:MouseEvent) : void
      {
         §'#n§.§?q§.§9!N§(param1.currentTarget,{
            "scaleX":this.§0g§,
            "scaleY":this.§0g§
         },null,0.2,§'#n§.§[i§).play();
      }
      
      private function §^!L§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§0g§;
         dispatchEvent(param1);
      }
   }
}
