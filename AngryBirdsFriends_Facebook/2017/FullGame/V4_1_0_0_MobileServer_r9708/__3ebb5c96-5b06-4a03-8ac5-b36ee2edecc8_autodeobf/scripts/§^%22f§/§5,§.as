package §^"f§
{
   import §5"?§.§4"-§;
   import §8Z§.§6"w§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §5,§ extends EventDispatcher
   {
       
      
      private var §'!l§:Number;
      
      private var §#"Z§:MovieClip;
      
      private var §=$'§:String;
      
      public function §5,§(param1:MovieClip, param2:String)
      {
         super();
         this.§#"Z§ = param1;
         this.§=$'§ = param2;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      public function get §4"0§() : String
      {
         return this.§=$'§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§#"Z§.stop();
         this.§#"Z§.crown.stop();
         this.§#"Z§.star1.graphic.stop();
         this.§#"Z§.star2.graphic.stop();
         this.§#"Z§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§#!V§(this.§=$'§);
         this.§#"Z§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§=$'§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§=$'§) == 100;
            _loc4_ = userProgress.§^x§(this.§=$'§);
            this.§#"Z§.star1.graphic.visible = true;
            this.§#"Z§.star2.graphic.visible = true;
            this.§#"Z§.star3.graphic.visible = true;
            this.§#"Z§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§#"Z§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§#"Z§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§#"Z§.crown.visible = true;
               this.§#"Z§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§#"Z§.crown.visible = false;
            }
            this.§#"Z§.feather.visible = _loc3_;
            this.§#"Z§.buttonMode = true;
            this.§#"Z§.addEventListener(MouseEvent.CLICK,this.§+!z§);
            this.§#"Z§.addEventListener(MouseEvent.ROLL_OVER,this.§'"U§);
            this.§#"Z§.addEventListener(MouseEvent.ROLL_OUT,this.§9#Y§);
            this.§'!l§ = this.§#"Z§.scaleX;
         }
         else
         {
            this.§#"Z§.star1.graphic.visible = false;
            this.§#"Z§.star2.graphic.visible = false;
            this.§#"Z§.star3.graphic.visible = false;
            this.§#"Z§.feather.visible = false;
            this.§#"Z§.buttonMode = false;
            this.§#"Z§.crown.visible = false;
         }
      }
      
      private function §'"U§(param1:MouseEvent) : void
      {
         §6"w§.§ "D§.§""3§(param1.currentTarget,{
            "scaleX":this.§'!l§ + 0.05,
            "scaleY":this.§'!l§ + 0.05
         },null,0.2,§6"w§.§'#v§).play();
      }
      
      private function §9#Y§(param1:MouseEvent) : void
      {
         §6"w§.§ "D§.§""3§(param1.currentTarget,{
            "scaleX":this.§'!l§,
            "scaleY":this.§'!l§
         },null,0.2,§6"w§.§'#v§).play();
      }
      
      private function §+!z§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§'!l§;
         dispatchEvent(param1);
      }
   }
}
