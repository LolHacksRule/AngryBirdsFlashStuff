package §9x§
{
   import §3#q§.§+#%§;
   import §3#t§.§-#b§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § m§ extends MovieClip
   {
      
      public static var §0#c§:Array = [];
      
      private static var §%$E§:String;
      
      public static const §8!U§:Boolean = true;
      
      private static var §1"R§:Object = {};
      
      private static var §,!X§:Object = {};
       
      
      protected var §&J§:Sprite;
      
      protected var §-#2§:Sprite;
      
      protected var §4$2§:Boolean;
      
      protected var §-!!§:Sprite;
      
      protected var §'H§:String;
      
      protected var §>!;§:String;
      
      protected var § 1§:String;
      
      protected var § ">§:Boolean = false;
      
      private var §3#B§:Boolean;
      
      public function § m§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§3#B§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §><§(param1:String) : void
      {
         var _loc3_:§ m§ = null;
         §%$E§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §0#c§)
            {
               _loc3_.update(§+#%§.§!!f§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§ 1§ = param3 = param3 || §7",§.§1"0§;
         this.§'H§ = param1;
         this.§>!;§ = param4;
         this.§4$2§ = §+#%§.§!!f§ == param1;
         this.§-!!§ = new Sprite();
         this.§-!!§.graphics.beginFill(0,0);
         this.§-!!§.graphics.drawRect(0,0,50,50);
         this.§-!!§.graphics.endFill();
         addChild(this.§-!!§);
         this.§ $§(param2);
         if(this.§4$2§)
         {
            §0#c§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§+"`§)
         {
            this.§&J§.visible = false;
            this.§-#2§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§+"`§)
         {
            this.§&J§.visible = true;
            this.§-#2§.visible = false;
         }
      }
      
      public function get §+"`§() : Boolean
      {
         return this.§ ">§;
      }
      
      public function set §+"`§(param1:Boolean) : void
      {
         this.§ ">§ = param1;
         if(this.§+"`§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         if(§%$E§ != null)
         {
            this.§ $§(§%$E§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §0!e§() : Sprite
      {
         return this.§&J§;
      }
      
      public function get §1d§() : Boolean
      {
         return this.§4$2§;
      }
      
      protected function § $§(param1:String) : void
      {
         if(this.§&J§)
         {
            if(this.§&J§.parent)
            {
               this.§&J§.parent.removeChild(this.§&J§);
            }
         }
         if(!this.§3#B§ && §8!U§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §-#b§.§5!K§(this.§'H§);
            }
         }
         if(!(param1 == "" || param1 == null) && §8!U§)
         {
            this.createAvatar(param1);
         }
         else if(§1"^§.§6f§(this.§'H§))
         {
            this.§]Z§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§-!!§)
         {
            setChildIndex(this.§-!!§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§+"`§ = true;
         this.§-#2§ = this.§4"S§();
         this.§&J§ = new §9#4§(param1,this.§ 1§);
         if(this.§-#2§)
         {
            addChild(this.§-#2§);
            this.§-#2§.visible = false;
         }
         this.§-!!§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§-!!§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§&J§)
         {
            addChild(this.§&J§);
            this.§&J§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§+"`§ = false;
         this.§&J§ = this.§4"S§();
         if(this.§&J§ && !param1)
         {
            addChild(this.§&J§);
         }
      }
      
      private function §]Z§() : void
      {
         if(!§,!X§[this.§'H§ + this.§>!;§])
         {
            §,!X§[this.§'H§ + this.§>!;§] = [];
         }
         if(§,!X§[this.§'H§ + this.§>!;§].length > 0)
         {
            this.§&J§ = §,!X§[this.§'H§ + this.§>!;§].pop();
         }
         else
         {
            this.§&J§ = new §1"^§(this.§'H§,this.§>!;§);
         }
         addChild(this.§&J§);
      }
      
      protected function §4"S§() : §7",§
      {
         var _loc1_:§7",§ = null;
         if(!§1"R§[this.§'H§ + this.§ 1§])
         {
            §1"R§[this.§'H§ + this.§ 1§] = [];
         }
         if(§1"R§[this.§'H§ + this.§ 1§].length > 0)
         {
            _loc1_ = §1"R§[this.§'H§ + this.§ 1§].pop();
         }
         else
         {
            _loc1_ = new §7",§(this.§'H§,true,this.§ 1§,this.§>!;§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§ $§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§&J§ && this.§&J§ is §1"^§)
         {
            if(!§,!X§[this.§'H§ + this.§>!;§])
            {
               §,!X§[this.§'H§ + this.§>!;§] = [];
            }
            §,!X§[this.§'H§ + this.§>!;§].push(this.§&J§);
         }
         if(this.§&J§ && this.§&J§ is §7",§)
         {
            if(!§1"R§[this.§'H§ + this.§ 1§])
            {
               §1"R§[this.§'H§ + this.§ 1§] = [];
            }
            §1"R§[this.§'H§ + this.§ 1§].push(this.§&J§);
         }
         if(this.§&J§)
         {
            if(this.§&J§ is §1#7§)
            {
               §1#7§(this.§&J§).dispose();
            }
            if(this.§&J§.parent == this)
            {
               removeChild(this.§&J§);
            }
            this.§&J§ = null;
         }
         if(this.§-#2§)
         {
            if(this.§-#2§.parent == this)
            {
               removeChild(this.§-#2§);
            }
            this.§-#2§ = null;
         }
         if(this.§-!!§)
         {
            this.§-!!§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§-!!§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§>!;§;
      }
   }
}
