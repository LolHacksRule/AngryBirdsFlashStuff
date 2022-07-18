package §'y§
{
   import §+!c§.§5" §;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §6!H§.§-"b§;
   import §;"Y§.§1"z§;
   import flash.display.MovieClip;
   
   public class §!8§
   {
       
      
      public var view:§^"m§;
      
      protected var §4j§:§5" §;
      
      private var §]!=§:String;
      
      private var §1U§:Boolean;
      
      private var §]"u§:Boolean;
      
      public function §!8§(param1:§^"m§, param2:String)
      {
         super();
         this.view = param1;
         this.§]!=§ = param2;
         this.§1U§ = false;
         this.§]"u§ = false;
         this.§4j§ = new §5" §(param1.mClip.count);
         param1.mClip.icon.gotoAndStop(0);
         this.refresh();
      }
      
      public function set §0!H§(param1:Boolean) : void
      {
         this.§1U§ = param1;
         this.refresh();
      }
      
      public function get §0!H§() : Boolean
      {
         return this.§1U§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§]"u§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function set dataID(param1:String) : void
      {
         this.§]!=§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set count(param1:int) : void
      {
         this.§4j§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§4j§.count;
      }
      
      public function refresh() : void
      {
         this.§4j§.§ "r§ = §@#B§(§4#;§.singleton.dataModel).§]"<§.§ #D§(this.§]!=§);
         if(this.§]!=§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
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
         if(§-"b§.§?#!§.indexOf(this.§]!=§) != -1)
         {
            this.§4j§.visible = false;
         }
         else
         {
            this.§4j§.visible = true;
         }
         if(this.§1U§ && !this.§]"u§)
         {
            this.view.mClip.glow.visible = true;
         }
         else
         {
            this.view.mClip.glow.visible = false;
         }
         if(this.§]"u§)
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
   }
}
