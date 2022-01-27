package §4"M§
{
   import §&!j§.§5#+§;
   import §+d§.§2"I§;
   import §8!h§.§%"z§;
   import §9"U§.§,N§;
   import §98§.§'"M§;
   import §=Z§.§;g§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §3"w§
   {
      
      public static const §'!X§:int = 115;
      
      public static const §<!7§:int = 30;
      
      public static const §`#5§:int = 20;
       
      
      private var §-1§:§5#+§;
      
      private var §%#§:§,N§;
      
      public var view:§;g§;
      
      private var §-""§:String;
      
      private var §5!Y§:§'"M§;
      
      private var §2@§:Boolean;
      
      public function §3"w§(param1:§;g§, param2:§5#+§, param3:§,N§, param4:String, param5:§'"M§)
      {
         super();
         this.view = param1;
         this.§-""§ = param4;
         this.§5!Y§ = param5;
         this.§-1§ = param2;
         this.§%#§ = param3;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§-""§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set prices(param1:§'"M§) : void
      {
         this.§5!Y§ = param1;
      }
      
      public function get prices() : §'"M§
      {
         return this.§5!Y§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§2@§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§2@§;
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
         if(this.§2@§)
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§5!Y§ && !this.§2@§)
         {
            TextField(this.view.mClip.cost).text = this.§5!Y§.price.toString();
         }
         else
         {
            TextField(this.view.mClip.cost).text = "";
         }
         if(this.§-""§ && this.§5!Y§)
         {
            TextField(this.view.mClip.title).text = this.§5!Y§.quantity + "x " + this.§5!Y§.itemID;
            if(this.§5!Y§.text && this.§5!Y§.text != "")
            {
               TextField(this.view.mClip.stamp.discount).text = this.§5!Y§.text;
               MovieClip(this.view.mClip.stamp).visible = true;
            }
            else
            {
               MovieClip(this.view.mClip.stamp).visible = false;
            }
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§-""§.toLowerCase());
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
         §2"I§.§;"%§(TextField(this.view.mClip.title),§`#5§,§'!X§,§<!7§);
         TextField(this.view.mClip.cost).mouseEnabled = false;
         TextField(this.view.mClip.title).mouseEnabled = false;
      }
   }
}
