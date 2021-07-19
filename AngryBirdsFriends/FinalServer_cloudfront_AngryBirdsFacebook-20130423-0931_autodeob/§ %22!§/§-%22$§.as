package § "!§
{
   import §2!o§.§?j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §-"$§ extends § ! §
   {
       
      
      private var §8<§:MovieClip;
      
      private var §1e§:Boolean;
      
      public function §-"$§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§8<§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §&s§(param1:MovieClip) : void
      {
         this.§8<§ = param1;
      }
      
      public function get §&s§() : MovieClip
      {
         return this.§8<§;
      }
      
      public function get §5"$§() : Boolean
      {
         return this.§1e§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §'""§ = param4 = param4 || §!"O§.§'"O§;
         §'F§ = param1;
         §3!a§ = §?j§.§1"[§ == param1;
         §@2§(param1,param2,param3);
         if(§3!a§)
         {
            §-!d§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§`F§)
         {
            if(§`F§ is §]"@§)
            {
               §]"@§(§`F§).dispose();
            }
         }
         §>!k§ = true;
         §`F§ = new §]"@§(param1,§'""§,true);
         this.§8<§.visible = false;
         this.§1e§ = true;
         §`F§.visible = true;
         if(§`F§ && !param5)
         {
            addChild(§`F§);
         }
         §`F§.x = 35;
         §`F§.y = 40;
         §]"@§(§`F§).§ "Y§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§`F§)
         {
            §]"@§(§`F§).§ "Y§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§`F§)
         {
            §]"@§(§`F§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§1e§ = false;
         this.§8<§.visible = true;
         if(§`F§)
         {
            §`F§.visible = false;
         }
      }
   }
}
