package §6! §
{
   import §=E§.§[[§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §1"F§ extends §<"#§
   {
       
      
      private var §]"G§:MovieClip;
      
      private var §'`§:Boolean;
      
      public function §1"F§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§]"G§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §40§(param1:MovieClip) : void
      {
         this.§]"G§ = param1;
      }
      
      public function get §40§() : MovieClip
      {
         return this.§]"G§;
      }
      
      public function get §<@§() : Boolean
      {
         return this.§'`§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §<!B§ = param4 = param4 || §@!k§.§8v§;
         §&"7§ = param1;
         §8W§ = §[[§.§+"L§ == param1;
         §[!a§(param1,param2,param3);
         if(§8W§)
         {
            §"!S§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§+W§)
         {
            if(§+W§ is §<">§)
            {
               §<">§(§+W§).dispose();
            }
         }
         §3!;§ = true;
         §+W§ = new §<">§(param1,§<!B§,true);
         this.§]"G§.visible = false;
         this.§'`§ = true;
         §+W§.visible = true;
         if(§+W§ && !param5)
         {
            addChild(§+W§);
         }
         §+W§.x = 35;
         §+W§.y = 40;
         §<">§(§+W§).§=!O§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§+W§)
         {
            §<">§(§+W§).§=!O§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§+W§)
         {
            §<">§(§+W§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§'`§ = false;
         this.§]"G§.visible = true;
         if(§+W§)
         {
            §+W§.visible = false;
         }
      }
   }
}
