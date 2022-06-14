package § " §
{
   import §-!+§.§ 7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0&§ extends §2!!§
   {
       
      
      private var §#!c§:MovieClip;
      
      private var §[n§:Boolean;
      
      public function §0&§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§#!c§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §-u§(param1:MovieClip) : void
      {
         this.§#!c§ = param1;
      }
      
      public function get §-u§() : MovieClip
      {
         return this.§#!c§;
      }
      
      public function get §,!m§() : Boolean
      {
         return this.§[n§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §%" § = param4 = param4 || §+!p§.§'"6§;
         §"S§ = param1;
         §+e§ = § 7§.§+!z§ == param1;
         §,!K§(param1,param2,param3);
         if(§+e§)
         {
            §+f§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§#!j§)
         {
            if(§#!j§ is §3!"§)
            {
               §3!"§(§#!j§).dispose();
            }
         }
         §+"5§ = true;
         §#!j§ = new §3!"§(param1,§%" §,true);
         this.§#!c§.visible = false;
         this.§[n§ = true;
         §#!j§.visible = true;
         if(§#!j§ && !param5)
         {
            addChild(§#!j§);
         }
         §#!j§.x = 35;
         §#!j§.y = 40;
         §3!"§(§#!j§).§^!6§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§#!j§)
         {
            §3!"§(§#!j§).§^!6§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§#!j§)
         {
            §3!"§(§#!j§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§[n§ = false;
         this.§#!c§.visible = true;
         if(§#!j§)
         {
            §#!j§.visible = false;
         }
      }
   }
}
