package §1!0§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import §%i§.§9!r§;
   import §2!o§.§2"3§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §@"[§ extends §2"3§
   {
       
      
      private var §<"M§:§9!r§;
      
      private var §!!j§:MovieClip;
      
      private var §1%§:§ ! §;
      
      public function §@"[§()
      {
         super();
         var _loc1_:Class = §?q§.§ q§("FriendSelecterCheckbox");
         this.§!!j§ = new _loc1_();
         this.§<"M§ = new §9!r§(this.§!!j§,true);
         this.§<"M§.§>R§.addEventListener(Event.CHANGE,this.§%"§);
         addChild(this.§<"M§.§>R§);
      }
      
      private function §%"§(param1:Event) : void
      {
         if(§+]§)
         {
            §+]§.selected = this.§<"M§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§1%§)
         {
            if(this.§!!j§.contains(this.§1%§))
            {
               this.§!!j§.removeChild(this.§1%§);
            }
            this.§1%§.dispose();
         }
         this.§!!j§.PlayernameTextfield.text = "";
         this.§<"M§.§>R§.visible = false;
         if(param1 == null)
         {
            return;
         }
         §+]§ = param1;
         this.§!!j§.PlayernameTextfield.text = param1.name;
         this.§<"M§.selected = param1.selected;
         this.§<"M§.§>R§.visible = true;
         this.§1%§ = new § ! §(param1.id,"",false,§!"O§.§'"O§);
         if(this.§1%§.§>!k§)
         {
            this.§1%§.x = 41;
            this.§1%§.y = 7;
            this.§1%§.width = 50;
            this.§1%§.height = 50;
         }
         else
         {
            this.§1%§.x = 41;
            this.§1%§.y = 7;
            this.§1%§.width = 35;
            this.§1%§.height = 35;
         }
         this.§!!j§.addChild(this.§1%§);
      }
   }
}
