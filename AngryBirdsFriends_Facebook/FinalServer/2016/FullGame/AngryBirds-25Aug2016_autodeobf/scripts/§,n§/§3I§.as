package §,n§
{
   import §2!X§.§6#V§;
   import §;4§.§-#a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3I§ extends MovieClip
   {
      
      public static var §-"%§:Array = [];
      
      private static var §@$1§:String;
      
      public static const §5#"§:Boolean = true;
      
      private static var §&?§:Object = {};
      
      private static var §;"e§:Object = {};
       
      
      protected var §@W§:Sprite;
      
      protected var §3$#§:Sprite;
      
      protected var §8"7§:Boolean;
      
      protected var §>!5§:Sprite;
      
      protected var §%"6§:String;
      
      protected var §,"8§:String;
      
      protected var §55§:String;
      
      protected var §<$7§:Boolean = false;
      
      private var §%"2§:Boolean;
      
      public function §3I§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§%"2§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §"x§(param1:String) : void
      {
         var _loc3_:§3I§ = null;
         §@$1§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §-"%§)
            {
               _loc3_.update(§6#V§.§6"n§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§55§ = param3 = param3 || §+!f§.§%#M§;
         this.§%"6§ = param1;
         this.§,"8§ = param4;
         this.§8"7§ = §6#V§.§6"n§ == param1;
         this.§>!5§ = new Sprite();
         this.§>!5§.graphics.beginFill(0,0);
         this.§>!5§.graphics.drawRect(0,0,50,50);
         this.§>!5§.graphics.endFill();
         addChild(this.§>!5§);
         this.§[#I§(param2);
         if(this.§8"7§)
         {
            §-"%§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§;$ §)
         {
            this.§@W§.visible = false;
            this.§3$#§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§;$ §)
         {
            this.§@W§.visible = true;
            this.§3$#§.visible = false;
         }
      }
      
      public function get §;$ §() : Boolean
      {
         return this.§<$7§;
      }
      
      public function set §;$ §(param1:Boolean) : void
      {
         this.§<$7§ = param1;
         if(this.§;$ §)
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
         if(§@$1§ != null)
         {
            this.§[#I§(§@$1§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §"#M§() : Sprite
      {
         return this.§@W§;
      }
      
      public function get §'N§() : Boolean
      {
         return this.§8"7§;
      }
      
      protected function §[#I§(param1:String) : void
      {
         if(this.§@W§)
         {
            if(this.§@W§.parent)
            {
               this.§@W§.parent.removeChild(this.§@W§);
            }
         }
         if(!this.§%"2§ && §5#"§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §-#a§.§;"h§(this.§%"6§);
            }
         }
         if(!(param1 == "" || param1 == null) && §5#"§)
         {
            this.createAvatar(param1);
         }
         else if(§`"d§.§0Y§(this.§%"6§))
         {
            this.§,!;§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§>!5§)
         {
            setChildIndex(this.§>!5§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§;$ § = true;
         this.§3$#§ = this.§'!d§();
         this.§@W§ = new §^;§(param1,this.§55§);
         if(this.§3$#§)
         {
            addChild(this.§3$#§);
            this.§3$#§.visible = false;
         }
         this.§>!5§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§>!5§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§@W§)
         {
            addChild(this.§@W§);
            this.§@W§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§;$ § = false;
         this.§@W§ = this.§'!d§();
         if(this.§@W§ && !param1)
         {
            addChild(this.§@W§);
         }
      }
      
      private function §,!;§() : void
      {
         if(!§;"e§[this.§%"6§ + this.§,"8§])
         {
            §;"e§[this.§%"6§ + this.§,"8§] = [];
         }
         if(§;"e§[this.§%"6§ + this.§,"8§].length > 0)
         {
            this.§@W§ = §;"e§[this.§%"6§ + this.§,"8§].pop();
         }
         else
         {
            this.§@W§ = new §`"d§(this.§%"6§,this.§,"8§);
         }
         addChild(this.§@W§);
      }
      
      protected function §'!d§() : §+!f§
      {
         var _loc1_:§+!f§ = null;
         if(!§&?§[this.§%"6§ + this.§55§])
         {
            §&?§[this.§%"6§ + this.§55§] = [];
         }
         if(§&?§[this.§%"6§ + this.§55§].length > 0)
         {
            _loc1_ = §&?§[this.§%"6§ + this.§55§].pop();
         }
         else
         {
            _loc1_ = new §+!f§(this.§%"6§,true,this.§55§,this.§,"8§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§[#I§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§@W§ && this.§@W§ is §`"d§)
         {
            if(!§;"e§[this.§%"6§ + this.§,"8§])
            {
               §;"e§[this.§%"6§ + this.§,"8§] = [];
            }
            §;"e§[this.§%"6§ + this.§,"8§].push(this.§@W§);
         }
         if(this.§@W§ && this.§@W§ is §+!f§)
         {
            if(!§&?§[this.§%"6§ + this.§55§])
            {
               §&?§[this.§%"6§ + this.§55§] = [];
            }
            §&?§[this.§%"6§ + this.§55§].push(this.§@W§);
         }
         if(this.§@W§)
         {
            if(this.§@W§ is §;c§)
            {
               §;c§(this.§@W§).dispose();
            }
            if(this.§@W§.parent == this)
            {
               removeChild(this.§@W§);
            }
            this.§@W§ = null;
         }
         if(this.§3$#§)
         {
            if(this.§3$#§.parent == this)
            {
               removeChild(this.§3$#§);
            }
            this.§3$#§ = null;
         }
         if(this.§>!5§)
         {
            this.§>!5§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§>!5§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§,"8§;
      }
   }
}
