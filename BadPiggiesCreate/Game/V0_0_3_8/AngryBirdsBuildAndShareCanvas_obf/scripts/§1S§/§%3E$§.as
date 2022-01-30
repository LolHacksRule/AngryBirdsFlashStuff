package §1S§
{
   import §!",§.StateLevelEditorTestPlay;
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §'!O§.§[!m§;
   import §-D§.Popup;
   import §9!7§.§6"0§;
   import §?!V§.§ T§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §>$§ extends Popup
   {
       
      
      private const §1!F§:String = "Name";
      
      private var §&!$§:§%c§;
      
      private var §9Z§:§3!6§;
      
      private var §@!o§:§3!6§;
      
      private var §[!w§:§3!6§;
      
      private var §-i§:§%c§;
      
      private var §6!8§:§ use§;
      
      public function §>$§(param1:XML, param2:§ T§)
      {
         var _loc4_:Bitmap = null;
         super(param1,param2);
         var _loc3_:BitmapData = StateLevelEditorTestPlay.§+!T§();
         (_loc4_ = new Bitmap(_loc3_)).width = 187;
         _loc4_.height = 136;
         getItemByName("MovieClip_Thumbnail").mClip.removeChildAt(1);
         getItemByName("MovieClip_Thumbnail").mClip.addChild(_loc4_);
         _loc4_.x -= _loc4_.width / 2;
         _loc4_.y -= _loc4_.height / 2;
         this.§&!$§ = getItemByName("TextField_InputLevelName") as §%c§;
         this.§&!$§.setText(this.§1!F§);
         this.§&!$§.mClip.addEventListener(MouseEvent.CLICK,this.§`w§);
         this.§&!$§.mClip.addEventListener(Event.CHANGE,this.§60§);
         goToFrame(1,false);
         getItemByName("HighscoreContainer").goToFrame(1,false);
         this.§6!8§ = getItemByName("MovieClip_Score") as § use§;
         this.§-i§ = this.§6!8§.getItemByName("Textfield_Score") as §%c§;
         this.§-i§.setText(AngryBirdsFP11.§8!v§.§]!Q§(§[!m§.§<!D§).toString());
         this.§[!w§ = getItemByName("Button_Finish") as §3!6§;
         this.§[!w§.§ null§ = §6"0§.§<>§;
         this.§[!w§.goToFrame(2,false);
         this.§9Z§ = getItemByName("Button_Stars") as §3!6§;
         this.§9Z§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`t§);
         this.§@!o§ = getItemByName("Button_Check") as §3!6§;
         this.§@!o§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>"§);
         this.§60§();
         super.mClip.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private function update(param1:Event) : void
      {
      }
      
      private function §60§(param1:Event = null) : void
      {
         if(this.§-!A§())
         {
            this.§[!w§.§ null§ = §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§[!w§.goToFrame(1,false);
         }
         else
         {
            this.§[!w§.§ null§ = §6"0§.§<>§;
            this.§[!w§.goToFrame(2,false);
         }
      }
      
      private function §-!A§() : Boolean
      {
         if(this.§&!$§ != null && this.§&!$§.§8`§() != null && this.§&!$§.§8`§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      private function §>"§(param1:MouseEvent) : void
      {
         this.§@!o§.visible = false;
         this.§9Z§.visible = true;
         getItemByName("HighscoreContainer").goToFrame(1,false);
         this.§6!8§.visible = true;
      }
      
      private function §`t§(param1:MouseEvent) : void
      {
         this.§9Z§.visible = false;
         this.§@!o§.visible = true;
         getItemByName("HighscoreContainer").goToFrame(2,false);
         this.§6!8§.visible = false;
      }
      
      private function §`w§(param1:MouseEvent) : void
      {
         if(this.§&!$§.§8`§() == this.§1!F§)
         {
            this.§&!$§.setText("");
         }
      }
      
      public function §@"#§() : String
      {
         return this.§&!$§.§8`§();
      }
      
      public function §7n§() : void
      {
         goToFrame(2,false);
      }
      
      override public function close() : void
      {
         super.close();
         §[!m§.§<!D§ = null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
   }
}
