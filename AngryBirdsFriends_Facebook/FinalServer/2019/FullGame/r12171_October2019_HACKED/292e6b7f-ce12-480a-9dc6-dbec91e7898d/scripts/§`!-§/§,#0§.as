package §`!-§
{
   import § "L§.§'!6§;
   import §+W§.§@"<§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §,#0§ extends §@"<§
   {
       
      
      private var §@k§:§'!6§;
      
      private var §7$@§:MovieClip;
      
      private var §<!p§:§?$3§;
      
      private var §3C§:uint;
      
      private var §'!;§:uint = 10066329;
      
      private var §7L§:TextField;
      
      public function §,#0§()
      {
         super();
         var _loc1_:Class = §[a§.§8#k§("FriendSelecterCheckbox");
         this.§7$@§ = new _loc1_();
         this.§@k§ = new §'!6§(this.§7$@§,true);
         this.§7L§ = TextField(this.§7$@§.getChildByName("PlayernameTextfield"));
         this.§7L§.mouseEnabled = false;
         this.§3C§ = this.§7L§.textColor;
         this.§@k§.displayObject.addEventListener(Event.CHANGE,this.§-!E§);
         addChild(this.§@k§.displayObject);
      }
      
      private function §-!E§(param1:Event) : void
      {
         if(§1!,§)
         {
            §1!,§.selected = this.§@k§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§<!p§)
         {
            if(this.§7$@§.contains(this.§<!p§))
            {
               this.§7$@§.removeChild(this.§<!p§);
            }
            this.§<!p§.dispose();
         }
         this.§7L§.text = "";
         this.§@k§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §1!,§ = param1;
         §7"U§.§+$5§(this.§7L§,param1.name);
         this.§@k§.selected = param1.selected;
         this.§@k§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§@k§.enabled = _loc2_;
         this.§7L§.textColor = !!_loc2_ ? uint(this.§3C§) : uint(this.§'!;§);
         if(param1.picture)
         {
            this.§<!p§ = new §?$3§(param1.id,"",false,§?!s§.§'!n§,param1.picture.data.url);
         }
         else
         {
            this.§<!p§ = new §?$3§(param1.id,"",false,§?!s§.§'!n§);
         }
         if(this.§<!p§.§5#u§)
         {
            this.§<!p§.x = 32;
            this.§<!p§.y = 0;
            this.§<!p§.width = 50;
            this.§<!p§.height = 50;
         }
         else
         {
            this.§<!p§.x = 32;
            this.§<!p§.y = 0;
            this.§<!p§.width = 35;
            this.§<!p§.height = 35;
         }
         this.§7$@§.addChild(this.§<!p§);
      }
   }
}
