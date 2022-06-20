package §;^§
{
   import §,"-§.§2!P§;
   import §0r§.§7!b§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §""3§ extends EventDispatcher
   {
       
      
      private var §`!i§:Number;
      
      private var §>!P§:MovieClip;
      
      private var §02§:String;
      
      public function §""3§(param1:MovieClip, param2:String)
      {
         super();
         this.§>!P§ = param1;
         this.§02§ = param2;
      }
      
      public function get §8!e§() : String
      {
         return this.§02§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§>!P§.stop();
         this.§>!P§.crown.stop();
         this.§>!P§.star1.graphic.stop();
         this.§>!P§.star2.graphic.stop();
         this.§>!P§.star3.graphic.stop();
         var _loc1_:Boolean = (AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked(this.§02§);
         this.§>!P§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = (AngryBirdsFP11.sUserProgress as §2!P§).getStarsForLevel(this.§02§);
            _loc3_ = (AngryBirdsFP11.sUserProgress as §2!P§).getEagleScoreForLevel(this.§02§) == 100;
            _loc4_ = (AngryBirdsFP11.sUserProgress as §2!P§).§?!!§(this.§02§);
            this.§>!P§.star1.graphic.visible = true;
            this.§>!P§.star2.graphic.visible = true;
            this.§>!P§.star3.graphic.visible = true;
            this.§>!P§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§>!P§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§>!P§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§>!P§.crown.visible = true;
               this.§>!P§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§>!P§.crown.visible = false;
            }
            this.§>!P§.feather.visible = _loc3_;
            this.§>!P§.buttonMode = true;
            this.§>!P§.addEventListener(MouseEvent.CLICK,this.§?T§);
            this.§>!P§.addEventListener(MouseEvent.ROLL_OVER,this.§>">§);
            this.§>!P§.addEventListener(MouseEvent.ROLL_OUT,this.§^O§);
            this.§`!i§ = this.§>!P§.scaleX;
         }
         else
         {
            this.§>!P§.star1.graphic.visible = false;
            this.§>!P§.star2.graphic.visible = false;
            this.§>!P§.star3.graphic.visible = false;
            this.§>!P§.feather.visible = false;
            this.§>!P§.buttonMode = false;
            this.§>!P§.crown.visible = false;
         }
      }
      
      private function §>">§(param1:MouseEvent) : void
      {
         §7!b§.§8c§.§4&§(param1.currentTarget,{
            "scaleX":this.§`!i§ + 0.05,
            "scaleY":this.§`!i§ + 0.05
         },null,0.2,§7!b§.§4"0§).play();
      }
      
      private function §^O§(param1:MouseEvent) : void
      {
         §7!b§.§8c§.§4&§(param1.currentTarget,{
            "scaleX":this.§`!i§,
            "scaleY":this.§`!i§
         },null,0.2,§7!b§.§4"0§).play();
      }
      
      private function §?T§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§`!i§;
         dispatchEvent(param1);
      }
   }
}
