package §="$§
{
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §4##§.§7!Y§;
   import §7A§.§4E§;
   import §;q§.§ true§;
   import §`"8§.§[F§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §%#§
   {
      
      public static const §>!W§:int = 115;
      
      public static const § !S§:int = 30;
      
      public static const §5!D§:int = 20;
       
      
      private var §8-§:§="B§;
      
      private var §%<§:§[F§;
      
      public var view:§2"8§;
      
      private var §?§:String;
      
      private var §@J§:§ true§;
      
      private var §1!?§:Boolean;
      
      public function §%#§(param1:§2"8§, param2:§="B§, param3:§[F§, param4:String, param5:§ true§)
      {
         super();
         this.view = param1;
         this.§?§ = param4;
         this.§@J§ = param5;
         this.§8-§ = param2;
         this.§%<§ = param3;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§?§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set prices(param1:§ true§) : void
      {
         this.§@J§ = param1;
      }
      
      public function get prices() : § true§
      {
         return this.§@J§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§1!?§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§1!?§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.view.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.view.visible;
      }
      
      public function refresh() : void
      {
         if(this.§1!?§)
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§@J§ && !this.§1!?§)
         {
            TextField(this.view.mClip.cost).text = this.§@J§.price.toString();
         }
         else
         {
            TextField(this.view.mClip.cost).text = "";
         }
         if(this.§?§ && this.§@J§)
         {
            TextField(this.view.mClip.title).text = this.§@J§.quantity + "x " + this.§@J§.itemID;
            if(this.§@J§.text && this.§@J§.text != "")
            {
               TextField(this.view.mClip.stamp.discount).text = this.§@J§.text;
               MovieClip(this.view.mClip.stamp).visible = true;
            }
            else
            {
               MovieClip(this.view.mClip.stamp).visible = false;
            }
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§?§.toLowerCase());
            }
            catch(e:Error)
            {
               MovieClip(view.mClip.icon).gotoAndStop(MovieClip(view.mClip.icon).totalFrames);
            }
         }
         else
         {
            TextField(this.view.mClip.title).text = "";
            MovieClip(this.view.mClip.stamp).visible = false;
         }
         §4E§.§0!l§(TextField(this.view.mClip.title),§5!D§,§>!W§,§ !S§);
         TextField(this.view.mClip.cost).mouseEnabled = false;
         TextField(this.view.mClip.title).mouseEnabled = false;
      }
   }
}
