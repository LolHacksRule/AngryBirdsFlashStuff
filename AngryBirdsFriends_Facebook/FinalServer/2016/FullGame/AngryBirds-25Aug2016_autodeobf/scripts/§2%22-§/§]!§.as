package §2"-§
{
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §1!@§.§&#a§;
   import §2!X§.§3?§;
   import §6"r§.§9!0§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §]!§ extends §3?§
   {
       
      
      private var §`v§:§9!0§;
      
      private var §;6§:MovieClip;
      
      private var §9#@§:§3I§;
      
      private var § -§:uint;
      
      private var §<T§:uint = 10066329;
      
      private var §?2§:TextField;
      
      public function §]!§()
      {
         super();
         var _loc1_:Class = §@`§.§4!i§("FriendSelecterCheckbox");
         this.§;6§ = new _loc1_();
         this.§`v§ = new §9!0§(this.§;6§,true);
         this.§?2§ = TextField(this.§;6§.getChildByName("PlayernameTextfield"));
         this.§?2§.mouseEnabled = false;
         this.§ -§ = this.§?2§.textColor;
         this.§`v§.displayObject.addEventListener(Event.CHANGE,this.§3!,§);
         addChild(this.§`v§.displayObject);
      }
      
      private function §3!,§(param1:Event) : void
      {
         if(§+!&§)
         {
            §+!&§.selected = this.§`v§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§9#@§)
         {
            if(this.§;6§.contains(this.§9#@§))
            {
               this.§;6§.removeChild(this.§9#@§);
            }
            this.§9#@§.dispose();
         }
         this.§?2§.text = "";
         this.§`v§.displayObject.visible = false;
         if(param1 == null)
         {
            return;
         }
         §+!&§ = param1;
         §&#a§.§^E§(this.§?2§,param1.name);
         this.§`v§.selected = param1.selected;
         this.§`v§.displayObject.visible = true;
         var _loc2_:Boolean = param1.enabled === undefined ? true : Boolean(param1.enabled);
         this.§`v§.enabled = _loc2_;
         this.§?2§.textColor = !!_loc2_ ? uint(this.§ -§) : uint(this.§<T§);
         if(param1.picture)
         {
            this.§9#@§ = new §3I§(param1.id,"",false,§+!f§.§%#M§,param1.picture.data.url);
         }
         else
         {
            this.§9#@§ = new §3I§(param1.id,"",false,§+!f§.§%#M§);
         }
         if(this.§9#@§.§;$ §)
         {
            this.§9#@§.x = 32;
            this.§9#@§.y = 0;
            this.§9#@§.width = 50;
            this.§9#@§.height = 50;
         }
         else
         {
            this.§9#@§.x = 32;
            this.§9#@§.y = 0;
            this.§9#@§.width = 35;
            this.§9#@§.height = 35;
         }
         this.§;6§.addChild(this.§9#@§);
      }
   }
}
