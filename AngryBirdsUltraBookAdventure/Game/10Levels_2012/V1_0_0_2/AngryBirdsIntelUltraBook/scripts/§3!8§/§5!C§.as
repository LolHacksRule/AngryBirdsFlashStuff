package §3!8§
{
   import §<z§.§^!s§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §5!C§ extends §0z§
   {
       
      
      private var §-]§:MovieClip;
      
      private var §!c§:Boolean;
      
      public function §5!C§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§-]§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §15§(param1:MovieClip) : void
      {
         this.§-]§ = param1;
      }
      
      public function get §15§() : MovieClip
      {
         return this.§-]§;
      }
      
      public function get §'f§() : Boolean
      {
         return this.§!c§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §2!I§ = param4 = param4 || §%!5§.§+a§;
         § u§ = param1;
         §=!&§ = §^!s§.§-!1§ == param1;
         §5!Z§(param1,param2,param3);
         if(§=!&§)
         {
            §[9§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§'6§);
            addEventListener(Event.REMOVED_FROM_STAGE,§@!K§);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §#!#§ = true;
         §4!H§ = new §2!_§(param1,§2!I§,true);
         this.§-]§.visible = false;
         this.§!c§ = true;
         §4!H§.visible = true;
         if(§4!H§ && !param5)
         {
            addChild(§4!H§);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§!c§ = false;
         this.§-]§.visible = true;
         if(§4!H§)
         {
            §4!H§.visible = false;
         }
      }
   }
}
