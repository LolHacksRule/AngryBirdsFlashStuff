package §;!q§
{
   import §]z§.§#!F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+F§ extends §=t§
   {
       
      
      private var §+!3§:MovieClip;
      
      private var §,L§:Boolean;
      
      public function §+F§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§+!3§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §7!W§(param1:MovieClip) : void
      {
         this.§+!3§ = param1;
      }
      
      public function get §7!W§() : MovieClip
      {
         return this.§+!3§;
      }
      
      public function get §#c§() : Boolean
      {
         return this.§,L§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §4>§ = param4 = param4 || §%t§.§@!#§;
         §7D§ = param1;
         §%2§ = §#!F§.§8%§ == param1;
         § in§(param1,param2,param3);
         if(§%2§)
         {
            §9y§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§-8§);
            addEventListener(Event.REMOVED_FROM_STAGE,§8!1§);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §5!;§ = true;
         §9!H§ = new §%!l§(param1,§4>§,true);
         this.§+!3§.visible = false;
         this.§,L§ = true;
         §9!H§.visible = true;
         if(§9!H§ && !param5)
         {
            addChild(§9!H§);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§,L§ = false;
         this.§+!3§.visible = true;
         if(§9!H§)
         {
            §9!H§.visible = false;
         }
      }
   }
}
