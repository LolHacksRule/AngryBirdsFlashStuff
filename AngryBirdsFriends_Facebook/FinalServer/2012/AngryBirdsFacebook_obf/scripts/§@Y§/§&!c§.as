package §@Y§
{
   import §-B§.§#!,§;
   import §6! §.§<"#§;
   import §6! §.§@!k§;
   import §=E§.§0"1§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&!c§ extends §0"1§
   {
       
      
      private var §]!g§:§#!,§;
      
      private var §[";§:MovieClip;
      
      private var §@!>§:§<"#§;
      
      public function §&!c§()
      {
         super();
         var _loc1_:Class = §>"5§.§6s§("FriendSelecterCheckbox");
         this.§[";§ = new _loc1_();
         this.§]!g§ = new §#!,§(this.§[";§,true);
         this.§]!g§.§"!+§.addEventListener(Event.CHANGE,this.§-R§);
         addChild(this.§]!g§.§"!+§);
      }
      
      private function §-R§(param1:Event) : void
      {
         if(§=]§)
         {
            §=]§.selected = this.§]!g§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§@!>§)
         {
            if(this.§[";§.contains(this.§@!>§))
            {
               this.§[";§.removeChild(this.§@!>§);
            }
            this.§@!>§.dispose();
         }
         this.§[";§.PlayernameTextfield.text = "";
         this.§]!g§.§"!+§.visible = false;
         if(param1 == null)
         {
            return;
         }
         §=]§ = param1;
         this.§[";§.PlayernameTextfield.text = param1.name;
         this.§]!g§.selected = param1.selected;
         this.§]!g§.§"!+§.visible = true;
         this.§@!>§ = new §<"#§(param1.id,"",false,§@!k§.§8v§);
         if(this.§@!>§.§3!;§)
         {
            this.§@!>§.x = 41;
            this.§@!>§.y = 7;
            this.§@!>§.width = 50;
            this.§@!>§.height = 50;
         }
         else
         {
            this.§@!>§.x = 41;
            this.§@!>§.y = 7;
            this.§@!>§.width = 35;
            this.§@!>§.height = 35;
         }
         this.§[";§.addChild(this.§@!>§);
      }
   }
}
