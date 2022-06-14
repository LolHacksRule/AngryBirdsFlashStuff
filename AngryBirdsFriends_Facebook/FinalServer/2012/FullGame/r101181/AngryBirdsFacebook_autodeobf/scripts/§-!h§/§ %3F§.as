package §-!h§
{
   import § " §.§+!p§;
   import § " §.§2!!§;
   import §-!+§.§;!B§;
   import §4!e§.§6Y§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class § ?§ extends §;!B§
   {
       
      
      private var §3"1§:§6Y§;
      
      private var §?u§:MovieClip;
      
      private var §=m§:§2!!§;
      
      public function § ?§()
      {
         super();
         var _loc1_:Class = §8B§.§6"C§("FriendSelecterCheckbox");
         this.§?u§ = new _loc1_();
         this.§3"1§ = new §6Y§(this.§?u§,true);
         this.§3"1§.§[%§.addEventListener(Event.CHANGE,this.§6"@§);
         addChild(this.§3"1§.§[%§);
      }
      
      private function §6"@§(param1:Event) : void
      {
         if(§>">§)
         {
            §>">§.selected = this.§3"1§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§=m§)
         {
            if(this.§?u§.contains(this.§=m§))
            {
               this.§?u§.removeChild(this.§=m§);
            }
            this.§=m§.dispose();
         }
         this.§?u§.PlayernameTextfield.text = "";
         this.§3"1§.§[%§.visible = false;
         if(param1 == null)
         {
            return;
         }
         §>">§ = param1;
         this.§?u§.PlayernameTextfield.text = param1.name;
         this.§3"1§.selected = param1.selected;
         this.§3"1§.§[%§.visible = true;
         this.§=m§ = new §2!!§(param1.id,"",false,§+!p§.§'"6§);
         if(this.§=m§.§+"5§)
         {
            this.§=m§.x = 41;
            this.§=m§.y = 7;
            this.§=m§.width = 50;
            this.§=m§.height = 50;
         }
         else
         {
            this.§=m§.x = 41;
            this.§=m§.y = 7;
            this.§=m§.width = 35;
            this.§=m§.height = 35;
         }
         this.§?u§.addChild(this.§=m§);
      }
   }
}
