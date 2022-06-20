package § !p§
{
   import §!!H§.§ $4§;
   import §2$;§.§&R§;
   import §3#q§.§ !Q§;
   import §9x§.§ m§;
   import §9x§.§7",§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §>5§ extends § !Q§
   {
       
      
      private var §'6§:§&R§;
      
      private var §<"V§:MovieClip;
      
      private var §,I§:§ m§;
      
      private var §`9§:uint;
      
      private var §5`§:uint = 10066329;
      
      private var §0b§:TextField;
      
      public function §>5§()
      {
         super();
         var _loc1_:Class = §=@§.§9!x§("FriendSelecterCheckbox");
         this.§<"V§ = new _loc1_();
         this.§'6§ = new §&R§(this.§<"V§,true);
         this.§0b§ = TextField(this.§<"V§.getChildByName("PlayernameTextfield"));
         this.§0b§.mouseEnabled = false;
         this.§`9§ = this.§0b§.textColor;
         this.§'6§.displayObject.addEventListener(Event.CHANGE,this.§,#[§);
         addChild(this.§'6§.displayObject);
      }
      
      private function §,#[§(param1:Event) : void
      {
         if(§6"G§)
         {
            §6"G§.selected = this.§'6§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§,I§)
         {
            if(this.§<"V§.contains(this.§,I§))
            {
               this.§<"V§.removeChild(this.§,I§);
            }
            this.§,I§.dispose();
         }
         this.§0b§.text = "";
         this.§'6§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §6"G§ = param1;
         § $4§.§'#d§(this.§0b§,param1.name);
         this.§'6§.selected = param1.selected;
         this.§'6§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§'6§.enabled = _loc2_;
         this.§0b§.textColor = !!_loc2_ ? uint(this.§`9§) : uint(this.§5`§);
         if(param1.picture)
         {
            this.§,I§ = new § m§(param1.id,"",false,§7",§.§1"0§,param1.picture.data.url);
         }
         else
         {
            this.§,I§ = new § m§(param1.id,"",false,§7",§.§1"0§);
         }
         if(this.§,I§.§+"`§)
         {
            this.§,I§.x = 32;
            this.§,I§.y = 0;
            this.§,I§.width = 50;
            this.§,I§.height = 50;
         }
         else
         {
            this.§,I§.x = 32;
            this.§,I§.y = 0;
            this.§,I§.width = 35;
            this.§,I§.height = 35;
         }
         this.§<"V§.addChild(this.§,I§);
      }
   }
}
