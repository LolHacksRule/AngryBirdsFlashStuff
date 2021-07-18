package §,n§
{
   import §2!X§.§6#V§;
   import flash.events.Event;
   
   public class §]E§ extends §3I§
   {
       
      
      private var §"!H§:Boolean;
      
      public function §]E§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§"!H§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §55§ = param3 = param3 || §+!f§.§%#M§;
         §%"6§ = param1;
         §,"8§ = param4;
         §8"7§ = §6#V§.§6"n§ == param1;
         §[#I§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §;c§(§@W§).§"T§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §;c§(§@W§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§@W§)
         {
            if(§@W§ is §;c§)
            {
               §;c§(§@W§).dispose();
            }
         }
         §<$7§ = true;
         §@W§ = new §;c§(param1,§55§,this.§"!H§);
         §@W§.visible = true;
         addChild(§@W§);
         §;c§(§@W§).§"T§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§@W§)
         {
            §@W§.visible = false;
         }
      }
   }
}
