package §2G§
{
   import §+W§.§<§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §`!K§ extends §?$3§
   {
       
      
      private var §!T§:MovieClip;
      
      private var §2A§:Boolean;
      
      public function §`!K§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§!T§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §2!y§(param1:MovieClip) : void
      {
         this.§!T§ = param1;
      }
      
      public function get §2!y§() : MovieClip
      {
         return this.§!T§;
      }
      
      public function get §6$D§() : Boolean
      {
         return this.§2A§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §]#`§ = param3 = param3 || §?!s§.§'!n§;
         §5"U§ = param1;
         §4!<§ = param4;
         §8!W§ = §<#8§.§#f§ == param1;
         §,!x§(param2);
         if(§8!W§)
         {
            §&"U§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§-!2§)
         {
            if(§-!2§ is §+"d§)
            {
               §+"d§(§-!2§).dispose();
            }
         }
         §5#u§ = true;
         §-!2§ = new §+"d§(param1,§]#`§,true);
         this.§!T§.visible = false;
         this.§2A§ = true;
         §-!2§.visible = true;
         if(§-!2§)
         {
            addChild(§-!2§);
         }
         §+"d§(§-!2§).§<e§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§-!2§)
         {
            §+"d§(§-!2§).§<e§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§-!2§)
         {
            §+"d§(§-!2§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§2A§ = false;
         this.§!T§.visible = true;
         if(§-!2§)
         {
            §-!2§.visible = false;
         }
      }
   }
}
