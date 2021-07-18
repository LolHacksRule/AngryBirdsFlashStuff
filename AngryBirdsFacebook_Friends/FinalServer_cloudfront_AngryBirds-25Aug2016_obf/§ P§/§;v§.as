package § P§
{
   import §&#S§.§""Z§;
   import §4q§.§!#Q§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §;v§ extends EventDispatcher
   {
       
      
      private var §1#m§:Number;
      
      private var §+"o§:MovieClip;
      
      private var §&!D§:String;
      
      public function §;v§(param1:MovieClip, param2:String)
      {
         super();
         this.§+"o§ = param1;
         this.§&!D§ = param2;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      public function get §,"2§() : String
      {
         return this.§&!D§;
      }
      
      public function updateEgg() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         this.§+"o§.stop();
         this.§+"o§.crown.stop();
         this.§+"o§.star1.graphic.stop();
         this.§+"o§.star2.graphic.stop();
         this.§+"o§.star3.graphic.stop();
         var _loc1_:Boolean = userProgress.§9"C§(this.§&!D§);
         this.§+"o§.gotoAndStop(!!_loc1_ ? 1 : 2);
         if(_loc1_)
         {
            _loc2_ = userProgress.getStarsForLevel(this.§&!D§);
            _loc3_ = userProgress.getEagleScoreForLevel(this.§&!D§) == 100;
            _loc4_ = userProgress.§-a§(this.§&!D§);
            this.§+"o§.star1.graphic.visible = true;
            this.§+"o§.star2.graphic.visible = true;
            this.§+"o§.star3.graphic.visible = true;
            this.§+"o§.star1.graphic.gotoAndStop(_loc2_ >= 1 ? 1 : 2);
            this.§+"o§.star2.graphic.gotoAndStop(_loc2_ >= 2 ? 1 : 2);
            this.§+"o§.star3.graphic.gotoAndStop(_loc2_ >= 3 ? 1 : 2);
            if(_loc4_ >= 1 && _loc4_ <= 3)
            {
               this.§+"o§.crown.visible = true;
               this.§+"o§.crown.gotoAndStop(_loc4_);
            }
            else
            {
               this.§+"o§.crown.visible = false;
            }
            this.§+"o§.feather.visible = _loc3_;
            this.§+"o§.buttonMode = true;
            this.§+"o§.addEventListener(MouseEvent.CLICK,this.§+"c§);
            this.§+"o§.addEventListener(MouseEvent.ROLL_OVER,this.§"$"§);
            this.§+"o§.addEventListener(MouseEvent.ROLL_OUT,this.§2>§);
            this.§1#m§ = this.§+"o§.scaleX;
         }
         else
         {
            this.§+"o§.star1.graphic.visible = false;
            this.§+"o§.star2.graphic.visible = false;
            this.§+"o§.star3.graphic.visible = false;
            this.§+"o§.feather.visible = false;
            this.§+"o§.buttonMode = false;
            this.§+"o§.crown.visible = false;
         }
      }
      
      private function §"$"§(param1:MouseEvent) : void
      {
         §""Z§.§3!]§.§5"0§(param1.currentTarget,{
            "scaleX":this.§1#m§ + 0.05,
            "scaleY":this.§1#m§ + 0.05
         },null,0.2,§""Z§.§-0§).play();
      }
      
      private function §2>§(param1:MouseEvent) : void
      {
         §""Z§.§3!]§.§5"0§(param1.currentTarget,{
            "scaleX":this.§1#m§,
            "scaleY":this.§1#m§
         },null,0.2,§""Z§.§-0§).play();
      }
      
      private function §+"c§(param1:MouseEvent) : void
      {
         param1.currentTarget.scaleX = param1.currentTarget.scaleY = this.§1#m§;
         dispatchEvent(param1);
      }
   }
}
