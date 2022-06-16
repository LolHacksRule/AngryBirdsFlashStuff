package §=8§
{
   import §"!n§.§;"x§;
   import §#,§.§5$$§;
   import §=§.§>!Y§;
   import §?!a§.§-=§;
   import §?!a§.§6#b§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §-^§ extends §>!Y§
   {
       
      
      private var §;#R§:§5$$§;
      
      private var §%!b§:MovieClip;
      
      private var §+"k§:§-=§;
      
      private var §^"P§:uint;
      
      private var §;N§:uint = 10066329;
      
      private var §0#§:TextField;
      
      public function §-^§()
      {
         super();
         var _loc1_:Class = §6$A§.§1!m§("FriendSelecterCheckbox");
         this.§%!b§ = new _loc1_();
         this.§;#R§ = new §5$$§(this.§%!b§,true);
         this.§0#§ = TextField(this.§%!b§.getChildByName("PlayernameTextfield"));
         this.§0#§.mouseEnabled = false;
         this.§^"P§ = this.§0#§.textColor;
         this.§;#R§.displayObject.addEventListener(Event.CHANGE,this.§>"B§);
         addChild(this.§;#R§.displayObject);
      }
      
      private function §>"B§(param1:Event) : void
      {
         if(§8#f§)
         {
            §8#f§.selected = this.§;#R§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§+"k§)
         {
            if(this.§%!b§.contains(this.§+"k§))
            {
               this.§%!b§.removeChild(this.§+"k§);
            }
            this.§+"k§.dispose();
         }
         this.§0#§.text = "";
         this.§;#R§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §8#f§ = param1;
         §;"x§.§+>§(this.§0#§,param1.name);
         this.§;#R§.selected = param1.selected;
         this.§;#R§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§;#R§.enabled = _loc2_;
         this.§0#§.textColor = !!_loc2_ ? uint(this.§^"P§) : uint(this.§;N§);
         if(param1.picture)
         {
            this.§+"k§ = new §-=§(param1.id,"",false,§6#b§.§?^§,param1.picture.data.url);
         }
         else
         {
            this.§+"k§ = new §-=§(param1.id,"",false,§6#b§.§?^§);
         }
         if(this.§+"k§.§-$>§)
         {
            this.§+"k§.x = 32;
            this.§+"k§.y = 0;
            this.§+"k§.width = 50;
            this.§+"k§.height = 50;
         }
         else
         {
            this.§+"k§.x = 32;
            this.§+"k§.y = 0;
            this.§+"k§.width = 35;
            this.§+"k§.height = 35;
         }
         this.§%!b§.addChild(this.§+"k§);
      }
   }
}
