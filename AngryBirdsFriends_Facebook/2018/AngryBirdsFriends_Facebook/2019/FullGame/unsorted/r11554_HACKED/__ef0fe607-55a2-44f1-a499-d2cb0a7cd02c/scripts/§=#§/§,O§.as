package §=#§
{
   import §2!u§.§`#Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §,O§ extends §%#y§
   {
       
      
      private var §%"_§:MovieClip;
      
      private var §""N§:Boolean;
      
      public function §,O§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§%"_§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set § "3§(param1:MovieClip) : void
      {
         this.§%"_§ = param1;
      }
      
      public function get § "3§() : MovieClip
      {
         return this.§%"_§;
      }
      
      public function get §>#Z§() : Boolean
      {
         return this.§""N§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §&#q§ = param3 = param3 || §1!"§.§+$=§;
         §0$3§ = param1;
         §-"-§ = param4;
         §7'§ = §`#Q§.§+";§ == param1;
         §+!V§(param2);
         if(§7'§)
         {
            §6K§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§?!!§)
         {
            if(§?!!§ is §2@§)
            {
               §2@§(§?!!§).dispose();
            }
         }
         §5#_§ = true;
         §?!!§ = new §2@§(param1,§&#q§,true);
         this.§%"_§.visible = false;
         this.§""N§ = true;
         §?!!§.visible = true;
         if(§?!!§)
         {
            addChild(§?!!§);
         }
         §2@§(§?!!§).§;!]§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§?!!§)
         {
            §2@§(§?!!§).§;!]§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§?!!§)
         {
            §2@§(§?!!§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§""N§ = false;
         this.§%"_§.visible = true;
         if(§?!!§)
         {
            §?!!§.visible = false;
         }
      }
   }
}
