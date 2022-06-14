package §1r§
{
   import §%!v§.§[<§;
   import §8!v§.§>!+§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%_§ extends EventDispatcher
   {
       
      
      private var §+!3§:Number;
      
      private var §`!T§:MovieClip;
      
      private var §`D§:String;
      
      public function §%_§(param1:MovieClip, param2:String)
      {
         super();
         this.§`!T§ = param1;
         this.§`D§ = param2;
      }
      
      public function get §@"=§() : String
      {
         return this.§`D§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§`!T§.stop();
         this.§`!T§.crown.stop();
         this.§`!T§.star1.graphic.stop();
         this.§`!T§.star2.graphic.stop();
         this.§`!T§.star3.graphic.stop();
         var _loc1_:Boolean = (AngryBirdsFP11.sUserProgress as §[<§).§6M§(this.§`D§);
         this.§`!T§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = (AngryBirdsFP11.sUserProgress as §[<§).getStarsForLevel(this.§`D§);
            _loc3_ = (AngryBirdsFP11.sUserProgress as §[<§).getEagleScoreForLevel(this.§`D§) == 100;
            _loc4_ = (AngryBirdsFP11.sUserProgress as §[<§).§#!o§(this.§`D§);
            this.§`!T§.star1.graphic.visible = true;
            this.§`!T§.star2.graphic.visible = true;
            this.§`!T§.star3.graphic.visible = true;
            this.§`!T§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§`!T§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§`!T§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§`!T§.crown.visible = true;
               this.§`!T§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§`!T§.crown.visible = false;
            }
            this.§`!T§.feather.visible = _loc3_;
            this.§`!T§.buttonMode = true;
            this.§`!T§.addEventListener(MouseEvent.CLICK,this.§%n§);
            this.§`!T§.addEventListener(MouseEvent.ROLL_OVER,this.§!!N§);
            this.§`!T§.addEventListener(MouseEvent.ROLL_OUT,this.§3!n§);
            this.§+!3§ = this.§`!T§.scaleX;
         }
         else
         {
            this.§`!T§.star1.graphic.visible = false;
            this.§`!T§.star2.graphic.visible = false;
            this.§`!T§.star3.graphic.visible = false;
            this.§`!T§.feather.visible = false;
            this.§`!T§.buttonMode = false;
            this.§`!T§.crown.visible = false;
         }
      }
      
      private function §!!N§(param1:MouseEvent) : void
      {
         §>!+§.§;"§.§^!K§(param1.currentTarget,{
            "scaleX":this.§+!3§ + 0.05,
            "scaleY":this.§+!3§ + 0.05
         },null,0.2,§>!+§.§;U§).play();
      }
      
      private function §3!n§(param1:MouseEvent) : void
      {
         §>!+§.§;"§.§^!K§(param1.currentTarget,{
            "scaleX":this.§+!3§,
            "scaleY":this.§+!3§
         },null,0.2,§>!+§.§;U§).play();
      }
      
      private function §%n§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§+!3§;
         dispatchEvent(param1);
      }
   }
}
