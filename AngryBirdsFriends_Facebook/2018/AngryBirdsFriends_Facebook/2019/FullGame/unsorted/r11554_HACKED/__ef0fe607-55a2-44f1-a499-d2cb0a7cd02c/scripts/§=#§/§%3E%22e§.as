package §=#§
{
   import §2!u§.§`#Q§;
   import flash.events.Event;
   
   public class §>"e§ extends §%#y§
   {
       
      
      private var §<"K§:Boolean;
      
      public function §>"e§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§<"K§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §&#q§ = param3 = param3 || §1!"§.§+$=§;
         §0$3§ = param1;
         §-"-§ = param4;
         §7'§ = §`#Q§.§+";§ == param1;
         §+!V§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §!#T§(§?!!§).§;!]§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §!#T§(§?!!§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§?!!§)
         {
            if(§?!!§ is §!#T§)
            {
               §!#T§(§?!!§).dispose();
            }
         }
         §]"q§ = true;
         §?!!§ = new §!#T§(param1,§&#q§,this.§<"K§);
         §?!!§.visible = true;
         addChild(§?!!§);
         §!#T§(§?!!§).§;!]§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§?!!§)
         {
            §?!!§.visible = false;
         }
      }
   }
}
