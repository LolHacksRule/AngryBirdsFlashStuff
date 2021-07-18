package § Z§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §1!i§.§6"#§;
   import §7K§.§,T§;
   import §;"Y§.§1"z§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §]#-§
   {
      
      public static const §3!#§:int = 115;
      
      public static const §?W§:int = 30;
      
      public static const §[A§:int = 20;
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §]"u§:Boolean;
      
      public function §]#-§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:String, param5:§,T§)
      {
         super();
         this.view = param1;
         this.§]!=§ = param4;
         this.§1>§ = param5;
         this.§^"N§ = param2;
         this.§8!J§ = param3;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§]!=§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         this.§1>§ = param1;
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         this.§]"u§ = param1;
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
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
         if(this.§]"u§)
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.view.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         if(this.§1>§ && !this.§]"u§)
         {
            TextField(this.view.mClip.cost).text = this.§1>§.price.toString();
         }
         else
         {
            TextField(this.view.mClip.cost).text = "";
         }
         if(this.§]!=§ && this.§1>§)
         {
            TextField(this.view.mClip.title).text = this.§1>§.quantity + "x " + this.§1>§.itemID;
            if(this.§1>§.text && this.§1>§.text != "")
            {
               TextField(this.view.mClip.stamp.discount).text = this.§1>§.text;
               MovieClip(this.view.mClip.stamp).visible = true;
            }
            else
            {
               MovieClip(this.view.mClip.stamp).visible = false;
            }
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
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
         §6"#§.§7s§(TextField(this.view.mClip.title),§[A§,§3!#§,§?W§);
         TextField(this.view.mClip.cost).mouseEnabled = false;
         TextField(this.view.mClip.title).mouseEnabled = false;
      }
   }
}
