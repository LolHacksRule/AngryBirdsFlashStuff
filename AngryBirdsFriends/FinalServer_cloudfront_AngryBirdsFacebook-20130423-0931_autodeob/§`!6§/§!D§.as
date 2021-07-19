package §`!6§
{
   import §2"'§.§0W§;
   import §@!%§.§#!$§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §!D§ extends EventDispatcher
   {
       
      
      private var §9=§:Number;
      
      private var §0"+§:MovieClip;
      
      private var §^"B§:String;
      
      public function §!D§(param1:MovieClip, param2:String)
      {
         super();
         this.§0"+§ = param1;
         this.§^"B§ = param2;
      }
      
      public function get §4^§() : String
      {
         return this.§^"B§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§0"+§.stop();
         this.§0"+§.crown.stop();
         this.§0"+§.star1.graphic.stop();
         this.§0"+§.star2.graphic.stop();
         this.§0"+§.star3.graphic.stop();
         var _loc1_:Boolean = (AngryBirdsFP11.sUserProgress as §#!$§).§,"F§(this.§^"B§);
         this.§0"+§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = (AngryBirdsFP11.sUserProgress as §#!$§).getStarsForLevel(this.§^"B§);
            _loc3_ = (AngryBirdsFP11.sUserProgress as §#!$§).getEagleScoreForLevel(this.§^"B§) == 100;
            _loc4_ = (AngryBirdsFP11.sUserProgress as §#!$§).§;M§(this.§^"B§);
            this.§0"+§.star1.graphic.visible = true;
            this.§0"+§.star2.graphic.visible = true;
            this.§0"+§.star3.graphic.visible = true;
            this.§0"+§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§0"+§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§0"+§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§0"+§.crown.visible = true;
               this.§0"+§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§0"+§.crown.visible = false;
            }
            this.§0"+§.feather.visible = _loc3_;
            this.§0"+§.buttonMode = true;
            this.§0"+§.addEventListener(MouseEvent.CLICK,this.§9c§);
            this.§0"+§.addEventListener(MouseEvent.ROLL_OVER,this.§ for§);
            this.§0"+§.addEventListener(MouseEvent.ROLL_OUT,this.§6!I§);
            this.§9=§ = this.§0"+§.scaleX;
         }
         else
         {
            this.§0"+§.star1.graphic.visible = false;
            this.§0"+§.star2.graphic.visible = false;
            this.§0"+§.star3.graphic.visible = false;
            this.§0"+§.feather.visible = false;
            this.§0"+§.buttonMode = false;
            this.§0"+§.crown.visible = false;
         }
      }
      
      private function § for§(param1:MouseEvent) : void
      {
         §0W§.§&"5§.§]!r§(param1.currentTarget,{
            "scaleX":this.§9=§ + 0.05,
            "scaleY":this.§9=§ + 0.05
         },null,0.2,§0W§.§'I§).play();
      }
      
      private function §6!I§(param1:MouseEvent) : void
      {
         §0W§.§&"5§.§]!r§(param1.currentTarget,{
            "scaleX":this.§9=§,
            "scaleY":this.§9=§
         },null,0.2,§0W§.§'I§).play();
      }
      
      private function §9c§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§9=§;
         dispatchEvent(param1);
      }
   }
}
