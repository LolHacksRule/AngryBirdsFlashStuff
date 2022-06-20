package §9x§
{
   import §3#q§.§+#%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §6#h§ extends § m§
   {
       
      
      private var §#"l§:MovieClip;
      
      private var §]!7§:Boolean;
      
      public function §6#h§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§#"l§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §=!n§(param1:MovieClip) : void
      {
         this.§#"l§ = param1;
      }
      
      public function get §=!n§() : MovieClip
      {
         return this.§#"l§;
      }
      
      public function get §]!J§() : Boolean
      {
         return this.§]!7§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         § 1§ = param3 = param3 || §7",§.§1"0§;
         §'H§ = param1;
         §>!;§ = param4;
         §4$2§ = §+#%§.§!!f§ == param1;
         § $§(param2);
         if(§4$2§)
         {
            §0#c§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§&J§)
         {
            if(§&J§ is §<"j§)
            {
               §<"j§(§&J§).dispose();
            }
         }
         §+"`§ = true;
         §&J§ = new §<"j§(param1,§ 1§,true);
         this.§#"l§.visible = false;
         this.§]!7§ = true;
         §&J§.visible = true;
         if(§&J§)
         {
            addChild(§&J§);
         }
         §<"j§(§&J§).§5$!§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§&J§)
         {
            §<"j§(§&J§).§5$!§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§&J§)
         {
            §<"j§(§&J§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§]!7§ = false;
         this.§#"l§.visible = true;
         if(§&J§)
         {
            §&J§.visible = false;
         }
      }
   }
}
