package §7"n§
{
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §8!§.§;+§;
   import §<h§.§`"o§;
   import §[#[§.§=#Q§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §!#D§ extends §;+§
   {
       
      
      private var §2#J§:§`"o§;
      
      private var §8#M§:MovieClip;
      
      private var §9#5§:§=#>§;
      
      private var §#!&§:uint;
      
      private var §9#§:uint = 10066329;
      
      private var §;!$§:TextField;
      
      public function §!#D§()
      {
         super();
         var _loc1_:Class = §!"f§.§##?§("FriendSelecterCheckbox");
         this.§8#M§ = new _loc1_();
         this.§2#J§ = new §`"o§(this.§8#M§,true);
         this.§;!$§ = TextField(this.§8#M§.getChildByName("PlayernameTextfield"));
         this.§;!$§.mouseEnabled = false;
         this.§#!&§ = this.§;!$§.textColor;
         this.§2#J§.displayObject.addEventListener(Event.CHANGE,this.§+t§);
         addChild(this.§2#J§.displayObject);
      }
      
      private function §+t§(param1:Event) : void
      {
         if(§["[§)
         {
            §["[§.selected = this.§2#J§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§9#5§)
         {
            if(this.§8#M§.contains(this.§9#5§))
            {
               this.§8#M§.removeChild(this.§9#5§);
            }
            this.§9#5§.dispose();
         }
         this.§;!$§.text = "";
         this.§2#J§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §["[§ = param1;
         §=#Q§.§0$,§(this.§;!$§,param1.name);
         this.§2#J§.selected = param1.selected;
         this.§2#J§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§2#J§.enabled = _loc2_;
         this.§;!$§.textColor = !!_loc2_ ? uint(this.§#!&§) : uint(this.§9#§);
         if(param1.picture)
         {
            this.§9#5§ = new §=#>§(param1.id,"",false,§4!+§.§+"N§,param1.picture.data.url);
         }
         else
         {
            this.§9#5§ = new §=#>§(param1.id,"",false,§4!+§.§+"N§);
         }
         if(this.§9#5§.§=!v§)
         {
            this.§9#5§.x = 32;
            this.§9#5§.y = 0;
            this.§9#5§.width = 50;
            this.§9#5§.height = 50;
         }
         else
         {
            this.§9#5§.x = 32;
            this.§9#5§.y = 0;
            this.§9#5§.width = 35;
            this.§9#5§.height = 35;
         }
         this.§8#M§.addChild(this.§9#5§);
      }
   }
}
