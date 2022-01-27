package §"[§
{
   import §'"A§.§<"o§;
   import §8!h§.§%"z§;
   import §9"U§.§7"1§;
   import §=Z§.§;g§;
   import §`"]§.§?"f§;
   import flash.display.MovieClip;
   
   public class §@N§
   {
       
      
      public var view:§;g§;
      
      protected var §+!s§:§?"f§;
      
      private var §-""§:String;
      
      private var §+"'§:Boolean;
      
      private var §2@§:Boolean;
      
      public function §@N§(param1:§;g§, param2:String)
      {
         super();
         this.view = param1;
         this.§-""§ = param2;
         this.§+"'§ = false;
         this.§2@§ = false;
         this.§+!s§ = new §?"f§(param1.mClip.count);
         param1.mClip.icon.gotoAndStop(0);
         this.refresh();
      }
      
      public function set §>"@§(param1:Boolean) : void
      {
         this.§+"'§ = param1;
         this.refresh();
      }
      
      public function get §>"@§() : Boolean
      {
         return this.§+"'§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§2@§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§2@§;
      }
      
      public function set dataID(param1:String) : void
      {
         this.§-""§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set count(param1:int) : void
      {
         this.§+!s§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§+!s§.count;
      }
      
      public function refresh() : void
      {
         this.§+!s§.§ var§ = §7"1§(§4"#§.singleton.dataModel).§@!K§.§5!<§(this.§-""§);
         if(this.§-""§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§-""§.toLowerCase());
            }
            catch(e:Error)
            {
               MovieClip(view.mClip.icon).gotoAndStop(1);
            }
         }
         else
         {
            MovieClip(this.view.mClip.icon).gotoAndStop(1);
         }
         if(§<"o§.§4!l§.indexOf(this.§-""§) != -1)
         {
            this.§+!s§.visible = false;
         }
         else
         {
            this.§+!s§.visible = true;
         }
         if(this.§+"'§ && !this.§2@§)
         {
            this.view.mClip.glow.visible = true;
         }
         else
         {
            this.view.mClip.glow.visible = false;
         }
         if(this.§2@§)
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
   }
}
