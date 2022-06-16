package §2J§
{
   import §2E§.§&p§;
   import §<";§.§'y§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §]H§ extends EventDispatcher
   {
       
      
      private var §@!X§:Number;
      
      private var § !k§:MovieClip;
      
      private var §,!g§:String;
      
      public function §]H§(param1:MovieClip, param2:String)
      {
         super();
         this.§ !k§ = param1;
         this.§,!g§ = param2;
      }
      
      public function get §'"B§() : String
      {
         return this.§,!g§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§ !k§.stop();
         this.§ !k§.crown.stop();
         this.§ !k§.star1.graphic.stop();
         this.§ !k§.star2.graphic.stop();
         this.§ !k§.star3.graphic.stop();
         var _loc1_:Boolean = (AngryBirdsFP11.sUserProgress as §'y§).§#!e§(this.§,!g§);
         this.§ !k§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = (AngryBirdsFP11.sUserProgress as §'y§).getStarsForLevel(this.§,!g§);
            _loc3_ = (AngryBirdsFP11.sUserProgress as §'y§).getEagleScoreForLevel(this.§,!g§) == 100;
            _loc4_ = (AngryBirdsFP11.sUserProgress as §'y§).§7I§(this.§,!g§);
            this.§ !k§.star1.graphic.visible = true;
            this.§ !k§.star2.graphic.visible = true;
            this.§ !k§.star3.graphic.visible = true;
            this.§ !k§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§ !k§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§ !k§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§ !k§.crown.visible = true;
               this.§ !k§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§ !k§.crown.visible = false;
            }
            this.§ !k§.feather.visible = _loc3_;
            this.§ !k§.buttonMode = true;
            this.§ !k§.addEventListener(MouseEvent.CLICK,this.§=!k§);
            this.§ !k§.addEventListener(MouseEvent.ROLL_OVER,this.§@V§);
            this.§ !k§.addEventListener(MouseEvent.ROLL_OUT,this.§2d§);
            this.§@!X§ = this.§ !k§.scaleX;
         }
         else
         {
            this.§ !k§.star1.graphic.visible = false;
            this.§ !k§.star2.graphic.visible = false;
            this.§ !k§.star3.graphic.visible = false;
            this.§ !k§.feather.visible = false;
            this.§ !k§.buttonMode = false;
            this.§ !k§.crown.visible = false;
         }
      }
      
      private function §@V§(param1:MouseEvent) : void
      {
         §&p§.§1[§.§7!3§(param1.currentTarget,{
            "scaleX":this.§@!X§ + 0.05,
            "scaleY":this.§@!X§ + 0.05
         },null,0.2,§&p§.§get §).play();
      }
      
      private function §2d§(param1:MouseEvent) : void
      {
         §&p§.§1[§.§7!3§(param1.currentTarget,{
            "scaleX":this.§@!X§,
            "scaleY":this.§@!X§
         },null,0.2,§&p§.§get §).play();
      }
      
      private function §=!k§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§@!X§;
         dispatchEvent(param1);
      }
   }
}
