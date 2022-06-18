package §^#W§
{
   import §%#A§.§ W§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §1#=§.§9@§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §&#]§ extends §9@§
   {
       
      
      private var §9"5§:§ W§;
      
      private var §!!1§:MovieClip;
      
      private var §'[§:§-"3§;
      
      private var §[`§:uint;
      
      private var §6#§:uint = 10066329;
      
      private var § !W§:TextField;
      
      public function §&#]§()
      {
         super();
         var _loc1_:Class = §+$#§.§["`§("FriendSelecterCheckbox");
         this.§!!1§ = new _loc1_();
         this.§9"5§ = new § W§(this.§!!1§,true);
         this.§ !W§ = TextField(this.§!!1§.getChildByName("PlayernameTextfield"));
         this.§ !W§.mouseEnabled = false;
         this.§[`§ = this.§ !W§.textColor;
         this.§9"5§.displayObject.addEventListener(Event.CHANGE,this.§<#O§);
         addChild(this.§9"5§.displayObject);
      }
      
      private function §<#O§(param1:Event) : void
      {
         if(§]!$§)
         {
            §]!$§.selected = this.§9"5§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§'[§)
         {
            if(this.§!!1§.contains(this.§'[§))
            {
               this.§!!1§.removeChild(this.§'[§);
            }
            this.§'[§.dispose();
         }
         this.§ !W§.text = "";
         this.§9"5§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §]!$§ = param1;
         §@!g§.§["1§(this.§ !W§,param1.name);
         this.§9"5§.selected = param1.selected;
         this.§9"5§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§9"5§.enabled = _loc2_;
         this.§ !W§.textColor = !!_loc2_ ? uint(this.§[`§) : uint(this.§6#§);
         if(param1.picture)
         {
            this.§'[§ = new §-"3§(param1.id,"",false,§5V§.§1$$§,param1.picture.data.url);
         }
         else
         {
            this.§'[§ = new §-"3§(param1.id,"",false,§5V§.§1$$§);
         }
         if(this.§'[§.§8#8§)
         {
            this.§'[§.x = 32;
            this.§'[§.y = 0;
            this.§'[§.width = 50;
            this.§'[§.height = 50;
         }
         else
         {
            this.§'[§.x = 32;
            this.§'[§.y = 0;
            this.§'[§.width = 35;
            this.§'[§.height = 35;
         }
         this.§!!1§.addChild(this.§'[§);
      }
   }
}
