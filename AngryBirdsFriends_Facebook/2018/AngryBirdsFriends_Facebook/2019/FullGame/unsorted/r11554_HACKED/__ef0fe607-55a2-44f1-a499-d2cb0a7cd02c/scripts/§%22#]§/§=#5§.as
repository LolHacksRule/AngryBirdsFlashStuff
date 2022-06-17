package §"#]§
{
   import §2!u§.§<#h§;
   import §5!$§.§3#o§;
   import §8"b§.§&!b§;
   import §=#§.§%#y§;
   import §=#§.§1!"§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §=#5§ extends §<#h§
   {
       
      
      private var §`"+§:§3#o§;
      
      private var §?"i§:MovieClip;
      
      private var §#$#§:§%#y§;
      
      private var §2#$§:uint;
      
      private var §%#I§:uint = 10066329;
      
      private var §>#,§:TextField;
      
      public function §=#5§()
      {
         super();
         var _loc1_:Class = §2"O§.§`>§("FriendSelecterCheckbox");
         this.§?"i§ = new _loc1_();
         this.§`"+§ = new §3#o§(this.§?"i§,true);
         this.§>#,§ = TextField(this.§?"i§.getChildByName("PlayernameTextfield"));
         this.§>#,§.mouseEnabled = false;
         this.§2#$§ = this.§>#,§.textColor;
         this.§`"+§.displayObject.addEventListener(Event.CHANGE,this.§#!w§);
         addChild(this.§`"+§.displayObject);
      }
      
      private function §#!w§(param1:Event) : void
      {
         if(§"""§)
         {
            §"""§.selected = this.§`"+§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§#$#§)
         {
            if(this.§?"i§.contains(this.§#$#§))
            {
               this.§?"i§.removeChild(this.§#$#§);
            }
            this.§#$#§.dispose();
         }
         this.§>#,§.text = "";
         this.§`"+§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §"""§ = param1;
         §&!b§.§9G§(this.§>#,§,param1.name);
         this.§`"+§.selected = param1.selected;
         this.§`"+§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§`"+§.enabled = _loc2_;
         this.§>#,§.textColor = !!_loc2_ ? uint(this.§2#$§) : uint(this.§%#I§);
         if(param1.picture)
         {
            this.§#$#§ = new §%#y§(param1.id,"",false,§1!"§.§+$=§,param1.picture.data.url);
         }
         else
         {
            this.§#$#§ = new §%#y§(param1.id,"",false,§1!"§.§+$=§);
         }
         if(this.§#$#§.§5#_§)
         {
            this.§#$#§.x = 32;
            this.§#$#§.y = 0;
            this.§#$#§.width = 50;
            this.§#$#§.height = 50;
         }
         else
         {
            this.§#$#§.x = 32;
            this.§#$#§.y = 0;
            this.§#$#§.width = 35;
            this.§#$#§.height = 35;
         }
         this.§?"i§.addChild(this.§#$#§);
      }
   }
}
