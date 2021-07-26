package §-!W§
{
   import §!L§.§`#u§;
   import §;"5§.§6"W§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §#l§ extends EventDispatcher
   {
       
      
      private var §'"D§:Number;
      
      private var §;§:MovieClip;
      
      private var §#!X§:String;
      
      public function §#l§(param1:MovieClip, param2:String)
      {
         super();
         this.§;§ = param1;
         this.§#!X§ = param2;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      public function get §5"&§() : String
      {
         return this.§#!X§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§;§.stop();
         this.§;§.crown.stop();
         this.§;§.star1.graphic.stop();
         this.§;§.star2.graphic.stop();
         this.§;§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§`p§(this.§#!X§);
         this.§;§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§#!X§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§#!X§) == 100;
            _loc4_ = userProgress.§ $%§(this.§#!X§);
            this.§;§.star1.graphic.visible = true;
            this.§;§.star2.graphic.visible = true;
            this.§;§.star3.graphic.visible = true;
            this.§;§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§;§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§;§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§;§.crown.visible = true;
               this.§;§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§;§.crown.visible = false;
            }
            this.§;§.feather.visible = _loc3_;
            this.§;§.buttonMode = true;
            this.§;§.addEventListener(MouseEvent.CLICK,this.§=!o§);
            this.§;§.addEventListener(MouseEvent.ROLL_OVER,this.§3<§);
            this.§;§.addEventListener(MouseEvent.ROLL_OUT,this.§^#y§);
            this.§'"D§ = this.§;§.scaleX;
         }
         else
         {
            this.§;§.star1.graphic.visible = false;
            this.§;§.star2.graphic.visible = false;
            this.§;§.star3.graphic.visible = false;
            this.§;§.feather.visible = false;
            this.§;§.buttonMode = false;
            this.§;§.crown.visible = false;
         }
      }
      
      private function §3<§(param1:MouseEvent) : void
      {
         §6"W§.§+!,§.§9!n§(param1.currentTarget,{
            "scaleX":this.§'"D§ + 0.05,
            "scaleY":this.§'"D§ + 0.05
         },null,0.2,§6"W§.§,$8§).play();
      }
      
      private function §^#y§(param1:MouseEvent) : void
      {
         §6"W§.§+!,§.§9!n§(param1.currentTarget,{
            "scaleX":this.§'"D§,
            "scaleY":this.§'"D§
         },null,0.2,§6"W§.§,$8§).play();
      }
      
      private function §=!o§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§'"D§;
         dispatchEvent(param1);
      }
   }
}
