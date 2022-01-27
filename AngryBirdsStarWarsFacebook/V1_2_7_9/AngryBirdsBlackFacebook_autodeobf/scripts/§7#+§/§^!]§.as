package §7#+§
{
   import §""d§.§2"8§;
   import §4##§.§7!Y§;
   import §7""§.§0!C§;
   import §@b§.§!]§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   
   public class §^!]§
   {
       
      
      public var view:§2"8§;
      
      protected var §`A§:§0!C§;
      
      private var §?§:String;
      
      private var §<#!§:Boolean;
      
      private var §1!?§:Boolean;
      
      public function §^!]§(param1:§2"8§, param2:String)
      {
         super();
         this.view = param1;
         this.§?§ = param2;
         this.§<#!§ = false;
         this.§1!?§ = false;
         this.§`A§ = new §0!C§(param1.mClip.count);
         param1.mClip.icon.gotoAndStop(0);
         this.refresh();
      }
      
      public function set §,#§(param1:Boolean) : void
      {
         this.§<#!§ = param1;
         this.refresh();
      }
      
      public function get §,#§() : Boolean
      {
         return this.§<#!§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§1!?§ = param1;
         this.refresh();
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§1!?§;
      }
      
      public function set dataID(param1:String) : void
      {
         this.§?§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set count(param1:int) : void
      {
         this.§`A§.count = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§`A§.count;
      }
      
      public function refresh() : void
      {
         this.§`A§.§1"r§ = §-!w§(§;"@§.singleton.dataModel).§=>§.§="&§(this.§?§);
         if(this.§?§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§?§.toLowerCase());
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
         if(§!]§.§'"j§.indexOf(this.§?§) != -1)
         {
            this.§`A§.visible = false;
         }
         else
         {
            this.§`A§.visible = true;
         }
         if(this.§<#!§ && !this.§1!?§)
         {
            this.view.mClip.glow.visible = true;
         }
         else
         {
            this.view.mClip.glow.visible = false;
         }
         if(this.§1!?§)
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
   }
}
