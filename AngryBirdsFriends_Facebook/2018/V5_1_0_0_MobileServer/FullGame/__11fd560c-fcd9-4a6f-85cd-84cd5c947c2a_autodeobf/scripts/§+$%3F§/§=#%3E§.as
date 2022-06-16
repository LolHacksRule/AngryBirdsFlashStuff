package §+$?§
{
   import §"!!§.§1§;
   import §8!§.§2"s§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §=#>§ extends MovieClip
   {
      
      public static var §const§:Array = [];
      
      private static var §+"x§:String;
      
      public static const §]#R§:Boolean = true;
      
      private static var §9#t§:Object = {};
      
      private static var §5"b§:Object = {};
       
      
      protected var §'!,§:Sprite;
      
      protected var §]"X§:Sprite;
      
      protected var §@"U§:Boolean;
      
      protected var §!!K§:Sprite;
      
      protected var §["L§:String;
      
      protected var §90§:String;
      
      protected var §;!L§:String;
      
      protected var §1!J§:Boolean = false;
      
      private var §"$§:Boolean;
      
      public function §=#>§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§"$§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §@"2§(param1:String) : void
      {
         var _loc3_:§=#>§ = null;
         §+"x§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §const§)
            {
               _loc3_.update(§2"s§.§;"8§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§;!L§ = param3 = param3 || §4!+§.§+"N§;
         this.§["L§ = param1;
         this.§90§ = param4;
         this.§@"U§ = §2"s§.§;"8§ == param1;
         this.§!!K§ = new Sprite();
         this.§!!K§.graphics.beginFill(0,0);
         this.§!!K§.graphics.drawRect(0,0,50,50);
         this.§!!K§.graphics.endFill();
         addChild(this.§!!K§);
         this.§[$<§(param2);
         if(this.§@"U§)
         {
            §const§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§=!v§)
         {
            this.§'!,§.visible = false;
            this.§]"X§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§=!v§)
         {
            this.§'!,§.visible = true;
            this.§]"X§.visible = false;
         }
      }
      
      public function get §=!v§() : Boolean
      {
         return this.§1!J§;
      }
      
      public function set §=!v§(param1:Boolean) : void
      {
         this.§1!J§ = param1;
         if(this.§=!v§)
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
         if(§+"x§ != null)
         {
            this.§[$<§(§+"x§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §'#b§() : Sprite
      {
         return this.§'!,§;
      }
      
      public function get §-#3§() : Boolean
      {
         return this.§@"U§;
      }
      
      protected function §[$<§(param1:String) : void
      {
         if(this.§'!,§)
         {
            if(this.§'!,§.parent)
            {
               this.§'!,§.parent.removeChild(this.§'!,§);
            }
         }
         if(!this.§"$§ && §]#R§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §1#0§.§^y§(this.§["L§);
            }
         }
         if(!(param1 == "" || param1 == null) && §]#R§)
         {
            this.createAvatar(param1);
         }
         else if(§%!k§.§@#A§(this.§["L§))
         {
            this.§3$A§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§!!K§)
         {
            setChildIndex(this.§!!K§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§=!v§ = true;
         this.§]"X§ = this.§6#W§();
         this.§'!,§ = new §="@§(param1,this.§;!L§);
         if(this.§]"X§)
         {
            addChild(this.§]"X§);
            this.§]"X§.visible = false;
         }
         this.§!!K§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§!!K§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§'!,§)
         {
            addChild(this.§'!,§);
            this.§'!,§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§=!v§ = false;
         this.§'!,§ = this.§6#W§();
         if(this.§'!,§ && !param1)
         {
            addChild(this.§'!,§);
         }
      }
      
      private function §3$A§() : void
      {
         if(!§5"b§[this.§["L§ + this.§90§])
         {
            §5"b§[this.§["L§ + this.§90§] = [];
         }
         if(§5"b§[this.§["L§ + this.§90§].length > 0)
         {
            this.§'!,§ = §5"b§[this.§["L§ + this.§90§].pop();
         }
         else
         {
            this.§'!,§ = new §%!k§(this.§["L§,this.§90§);
         }
         addChild(this.§'!,§);
      }
      
      protected function §6#W§() : §4!+§
      {
         var _loc1_:§4!+§ = null;
         if(!§9#t§[this.§["L§ + this.§;!L§])
         {
            §9#t§[this.§["L§ + this.§;!L§] = [];
         }
         if(§9#t§[this.§["L§ + this.§;!L§].length > 0)
         {
            _loc1_ = §9#t§[this.§["L§ + this.§;!L§].pop();
         }
         else
         {
            _loc1_ = new §4!+§(this.§["L§,true,this.§;!L§,this.§90§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§[$<§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§'!,§ && this.§'!,§ is §%!k§)
         {
            if(!§5"b§[this.§["L§ + this.§90§])
            {
               §5"b§[this.§["L§ + this.§90§] = [];
            }
            §5"b§[this.§["L§ + this.§90§].push(this.§'!,§);
         }
         if(this.§'!,§ && this.§'!,§ is §4!+§)
         {
            if(!§9#t§[this.§["L§ + this.§;!L§])
            {
               §9#t§[this.§["L§ + this.§;!L§] = [];
            }
            §9#t§[this.§["L§ + this.§;!L§].push(this.§'!,§);
         }
         if(this.§'!,§)
         {
            if(this.§'!,§ is §=-§)
            {
               §=-§(this.§'!,§).dispose();
            }
            if(this.§'!,§.parent == this)
            {
               removeChild(this.§'!,§);
            }
            this.§'!,§ = null;
         }
         if(this.§]"X§)
         {
            if(this.§]"X§.parent == this)
            {
               removeChild(this.§]"X§);
            }
            this.§]"X§ = null;
         }
         if(this.§!!K§)
         {
            this.§!!K§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§!!K§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§90§;
      }
   }
}
