package §1o§
{
   import §<m§.§%!l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §`0§ extends §,!c§
   {
       
      
      private var §;;§:MovieClip;
      
      private var §-!G§:Boolean;
      
      public function §`0§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§;;§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §^!U§(param1:MovieClip) : void
      {
         this.§;;§ = param1;
      }
      
      public function get §^!U§() : MovieClip
      {
         return this.§;;§;
      }
      
      public function get §%T§() : Boolean
      {
         return this.§-!G§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §30§ = param4 = param4 || §'8§.§"!Y§;
         §<!$§ = param1;
         §-L§ = §%!l§.§]!z§ == param1;
         §=q§(param1,param2,param3);
         if(§-L§)
         {
            §2,§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§9!u§)
         {
            if(§9!u§ is §3"4§)
            {
               §3"4§(§9!u§).dispose();
            }
         }
         §]!@§ = true;
         §9!u§ = new §3"4§(param1,§30§,true);
         this.§;;§.visible = false;
         this.§-!G§ = true;
         §9!u§.visible = true;
         if(§9!u§ && !param5)
         {
            addChild(§9!u§);
         }
         §9!u§.x = 35;
         §9!u§.y = 40;
         §3"4§(§9!u§).§,!1§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§9!u§)
         {
            §3"4§(§9!u§).§,!1§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§9!u§)
         {
            §3"4§(§9!u§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§-!G§ = false;
         this.§;;§.visible = true;
         if(§9!u§)
         {
            §9!u§.visible = false;
         }
      }
   }
}
