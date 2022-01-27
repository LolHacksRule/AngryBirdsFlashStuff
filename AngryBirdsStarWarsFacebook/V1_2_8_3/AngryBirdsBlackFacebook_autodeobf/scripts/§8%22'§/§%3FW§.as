package §8"'§
{
   import §&!j§.§5#+§;
   import §4"k§.§+"W§;
   import §9"U§.§'!;§;
   import §9"U§.§,!c§;
   import §9"U§.§7"1§;
   import §=Z§.§@!8§;
   import §?"6§.§`!^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §?W§ extends §+"W§
   {
       
      
      private var §15§:MovieClip;
      
      private var §,"i§:MovieClip;
      
      public function §?W§(param1:§@!8§, param2:§5#§, param3:§`!^§, param4:§'!;§, param5:§5#+§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§15§ = §3!m§.getItemByName("LastCrystalActivated").mClip;
         this.§15§.visible = false;
         this.§,"i§ = §3!m§.getItemByName("CrystalBreakAnimation").mClip;
         this.§,"i§.visible = false;
         var _loc1_:§,!c§ = §7"1§(§4"#§.singleton.dataModel).§9"$§;
         if(!_loc1_.§&!3§)
         {
            this.§-X§();
            if(_loc1_.energy == 0)
            {
               this.§,!r§();
            }
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §9!T§ = true;
         §2!-§.active = false;
         §2!-§.enabled = false;
         §2!-§.visible = false;
         §1!9§.view.x = §1%§;
         §?!§.x = §1%§;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §-0§.§-!U§;
      }
      
      override public function dispose() : void
      {
         this.§15§ = null;
         this.§,"i§ = null;
         super.dispose();
      }
      
      private function §,!r§() : void
      {
         if(this.§15§)
         {
            this.§15§.gotoAndPlay(1);
            this.§15§.visible = true;
            this.§15§.addEventListener(Event.ENTER_FRAME,this.§ >§);
         }
      }
      
      private function §-X§() : void
      {
         this.§,"i§.gotoAndPlay(1);
         §throw§(§4"#§.singleton).§?"T§.§&n§();
         this.§,"i§.visible = true;
         this.§,"i§.addEventListener(Event.ENTER_FRAME,this.§3"m§);
      }
      
      private function § >§(param1:Event) : void
      {
         if(this.§15§)
         {
            if(this.§15§.currentFrame == this.§15§.totalFrames - 1)
            {
               this.§15§.stop();
               this.§15§.visible = false;
               this.§15§.removeEventListener(Event.ENTER_FRAME,this.§ >§);
            }
         }
      }
      
      private function §3"m§(param1:Event) : void
      {
         if(this.§,"i§)
         {
            if(this.§,"i§.currentFrame == this.§,"i§.totalFrames - 1)
            {
               this.§,"i§.stop();
               this.§,"i§.visible = false;
               this.§,"i§.removeEventListener(Event.ENTER_FRAME,this.§3"m§);
            }
         }
      }
   }
}
