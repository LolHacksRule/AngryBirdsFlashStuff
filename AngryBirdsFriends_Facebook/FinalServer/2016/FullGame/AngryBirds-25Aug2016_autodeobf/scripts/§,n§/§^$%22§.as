package §,n§
{
   import §2!X§.§6#V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^$"§ extends §3I§
   {
       
      
      private var §2!-§:MovieClip;
      
      private var §,$3§:Boolean;
      
      public function §^$"§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§2!-§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §["v§(param1:MovieClip) : void
      {
         this.§2!-§ = param1;
      }
      
      public function get §["v§() : MovieClip
      {
         return this.§2!-§;
      }
      
      public function get §+!z§() : Boolean
      {
         return this.§,$3§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §55§ = param3 = param3 || §+!f§.§%#M§;
         §%"6§ = param1;
         §,"8§ = param4;
         §8"7§ = §6#V§.§6"n§ == param1;
         §[#I§(param2);
         if(§8"7§)
         {
            §-"%§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§@W§)
         {
            if(§@W§ is §!!d§)
            {
               §!!d§(§@W§).dispose();
            }
         }
         §;$ § = true;
         §@W§ = new §!!d§(param1,§55§,true);
         this.§2!-§.visible = false;
         this.§,$3§ = true;
         §@W§.visible = true;
         if(§@W§)
         {
            addChild(§@W§);
         }
         §!!d§(§@W§).§"T§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§@W§)
         {
            §!!d§(§@W§).§"T§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§@W§)
         {
            §!!d§(§@W§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§,$3§ = false;
         this.§2!-§.visible = true;
         if(§@W§)
         {
            §@W§.visible = false;
         }
      }
   }
}
