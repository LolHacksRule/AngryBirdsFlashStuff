package §?!a§
{
   import §0"B§.§ #W§;
   import §=§.§5$9§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §-=§ extends MovieClip
   {
      
      public static var §="3§:Array = [];
      
      private static var §8#B§:String;
      
      public static const §7$1§:Boolean = true;
      
      private static var §[!#§:Object = {};
      
      private static var §+k§:Object = {};
       
      
      protected var §<!]§:Sprite;
      
      protected var §#"@§:Sprite;
      
      protected var §,##§:Boolean;
      
      protected var §%!z§:Sprite;
      
      protected var §1#h§:String;
      
      protected var §?K§:String;
      
      protected var §3$1§:String;
      
      protected var §>n§:Boolean = false;
      
      private var §^r§:Boolean;
      
      public function §-=§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§^r§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §9!u§(param1:String) : void
      {
         var _loc3_:§-=§ = null;
         §8#B§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §="3§)
            {
               _loc3_.update(§5$9§.§3"P§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§3$1§ = param3 = param3 || §6#b§.§?^§;
         this.§1#h§ = param1;
         this.§?K§ = param4;
         this.§,##§ = §5$9§.§3"P§ == param1;
         this.§%!z§ = new Sprite();
         this.§%!z§.graphics.beginFill(0,0);
         this.§%!z§.graphics.drawRect(0,0,50,50);
         this.§%!z§.graphics.endFill();
         addChild(this.§%!z§);
         this.§%a§(param2);
         if(this.§,##§)
         {
            §="3§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§-$>§)
         {
            this.§<!]§.visible = false;
            this.§#"@§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§-$>§)
         {
            this.§<!]§.visible = true;
            this.§#"@§.visible = false;
         }
      }
      
      public function get §-$>§() : Boolean
      {
         return this.§>n§;
      }
      
      public function set §-$>§(param1:Boolean) : void
      {
         this.§>n§ = param1;
         if(this.§-$>§)
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
         if(§8#B§ != null)
         {
            this.§%a§(§8#B§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §6"q§() : Sprite
      {
         return this.§<!]§;
      }
      
      public function get §%!r§() : Boolean
      {
         return this.§,##§;
      }
      
      protected function §%a§(param1:String) : void
      {
         if(this.§<!]§)
         {
            if(this.§<!]§.parent)
            {
               this.§<!]§.parent.removeChild(this.§<!]§);
            }
         }
         if(!this.§^r§ && §7$1§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = § #W§.§[#e§(this.§1#h§);
            }
         }
         if(!(param1 == "" || param1 == null) && §7$1§)
         {
            this.createAvatar(param1);
         }
         else if(§2!-§.§]"2§(this.§1#h§))
         {
            this.§[#O§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§%!z§)
         {
            setChildIndex(this.§%!z§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§-$>§ = true;
         this.§#"@§ = this.§4"H§();
         this.§<!]§ = new §=4§(param1,this.§3$1§);
         if(this.§#"@§)
         {
            addChild(this.§#"@§);
            this.§#"@§.visible = false;
         }
         this.§%!z§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§%!z§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§<!]§)
         {
            addChild(this.§<!]§);
            this.§<!]§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§-$>§ = false;
         this.§<!]§ = this.§4"H§();
         if(this.§<!]§ && !param1)
         {
            addChild(this.§<!]§);
         }
      }
      
      private function §[#O§() : void
      {
         if(!§+k§[this.§1#h§ + this.§?K§])
         {
            §+k§[this.§1#h§ + this.§?K§] = [];
         }
         if(§+k§[this.§1#h§ + this.§?K§].length > 0)
         {
            this.§<!]§ = §+k§[this.§1#h§ + this.§?K§].pop();
         }
         else
         {
            this.§<!]§ = new §2!-§(this.§1#h§,this.§?K§);
         }
         addChild(this.§<!]§);
      }
      
      protected function §4"H§() : §6#b§
      {
         var _loc1_:§6#b§ = null;
         if(!§[!#§[this.§1#h§ + this.§3$1§])
         {
            §[!#§[this.§1#h§ + this.§3$1§] = [];
         }
         if(§[!#§[this.§1#h§ + this.§3$1§].length > 0)
         {
            _loc1_ = §[!#§[this.§1#h§ + this.§3$1§].pop();
         }
         else
         {
            _loc1_ = new §6#b§(this.§1#h§,true,this.§3$1§,this.§?K§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§%a§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§<!]§ && this.§<!]§ is §2!-§)
         {
            if(!§+k§[this.§1#h§ + this.§?K§])
            {
               §+k§[this.§1#h§ + this.§?K§] = [];
            }
            §+k§[this.§1#h§ + this.§?K§].push(this.§<!]§);
         }
         if(this.§<!]§ && this.§<!]§ is §6#b§)
         {
            if(!§[!#§[this.§1#h§ + this.§3$1§])
            {
               §[!#§[this.§1#h§ + this.§3$1§] = [];
            }
            §[!#§[this.§1#h§ + this.§3$1§].push(this.§<!]§);
         }
         if(this.§<!]§)
         {
            if(this.§<!]§ is §4!N§)
            {
               §4!N§(this.§<!]§).dispose();
            }
            if(this.§<!]§.parent == this)
            {
               removeChild(this.§<!]§);
            }
            this.§<!]§ = null;
         }
         if(this.§#"@§)
         {
            if(this.§#"@§.parent == this)
            {
               removeChild(this.§#"@§);
            }
            this.§#"@§ = null;
         }
         if(this.§%!z§)
         {
            this.§%!z§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§%!z§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§?K§;
      }
   }
}
