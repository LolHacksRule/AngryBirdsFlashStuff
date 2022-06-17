package §=#§
{
   import § "g§.§%!2§;
   import §2!u§.§`#Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%#y§ extends MovieClip
   {
      
      public static var §6K§:Array = [];
      
      private static var §&$&§:String;
      
      public static const §%#J§:Boolean = true;
      
      private static var §-"L§:Object = {};
      
      private static var §`#7§:Object = {};
       
      
      protected var §?!!§:Sprite;
      
      protected var §-" §:Sprite;
      
      protected var §7'§:Boolean;
      
      protected var §6&§:Sprite;
      
      protected var §0$3§:String;
      
      protected var §-"-§:String;
      
      protected var §&#q§:String;
      
      protected var §]"q§:Boolean = false;
      
      private var §'!p§:Boolean;
      
      public function §%#y§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§'!p§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §&"l§(param1:String) : void
      {
         var _loc3_:§%#y§ = null;
         §&$&§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §6K§)
            {
               _loc3_.update(§`#Q§.§+";§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§&#q§ = param3 = param3 || §1!"§.§+$=§;
         this.§0$3§ = param1;
         this.§-"-§ = param4;
         this.§7'§ = §`#Q§.§+";§ == param1;
         this.§6&§ = new Sprite();
         this.§6&§.graphics.beginFill(0,0);
         this.§6&§.graphics.drawRect(0,0,50,50);
         this.§6&§.graphics.endFill();
         addChild(this.§6&§);
         this.§+!V§(param2);
         if(this.§7'§)
         {
            §6K§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§5#_§)
         {
            this.§?!!§.visible = false;
            this.§-" §.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§5#_§)
         {
            this.§?!!§.visible = true;
            this.§-" §.visible = false;
         }
      }
      
      public function get §5#_§() : Boolean
      {
         return this.§]"q§;
      }
      
      public function set §5#_§(param1:Boolean) : void
      {
         this.§]"q§ = param1;
         if(this.§5#_§)
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
         if(§&$&§ != null)
         {
            this.§+!V§(§&$&§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §@#_§() : Sprite
      {
         return this.§?!!§;
      }
      
      public function get §%$"§() : Boolean
      {
         return this.§7'§;
      }
      
      protected function §+!V§(param1:String) : void
      {
         if(this.§?!!§)
         {
            if(this.§?!!§.parent)
            {
               this.§?!!§.parent.removeChild(this.§?!!§);
            }
         }
         if(!this.§'!p§ && §%#J§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §%!2§.§;"A§(this.§0$3§);
            }
         }
         if(!(param1 == "" || param1 == null) && §%#J§)
         {
            this.createAvatar(param1);
         }
         else if(§0"V§.§5#$§(this.§0$3§))
         {
            this.§0$2§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§6&§)
         {
            setChildIndex(this.§6&§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§5#_§ = true;
         this.§-" § = this.§'$E§();
         this.§?!!§ = new §%"O§(param1,this.§&#q§);
         if(this.§-" §)
         {
            addChild(this.§-" §);
            this.§-" §.visible = false;
         }
         this.§6&§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§6&§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§?!!§)
         {
            addChild(this.§?!!§);
            this.§?!!§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§5#_§ = false;
         this.§?!!§ = this.§'$E§();
         if(this.§?!!§ && !param1)
         {
            addChild(this.§?!!§);
         }
      }
      
      private function §0$2§() : void
      {
         if(!§`#7§[this.§0$3§ + this.§-"-§])
         {
            §`#7§[this.§0$3§ + this.§-"-§] = [];
         }
         if(§`#7§[this.§0$3§ + this.§-"-§].length > 0)
         {
            this.§?!!§ = §`#7§[this.§0$3§ + this.§-"-§].pop();
         }
         else
         {
            this.§?!!§ = new §0"V§(this.§0$3§,this.§-"-§);
         }
         addChild(this.§?!!§);
      }
      
      protected function §'$E§() : §1!"§
      {
         var _loc1_:§1!"§ = null;
         if(!§-"L§[this.§0$3§ + this.§&#q§])
         {
            §-"L§[this.§0$3§ + this.§&#q§] = [];
         }
         if(§-"L§[this.§0$3§ + this.§&#q§].length > 0)
         {
            _loc1_ = §-"L§[this.§0$3§ + this.§&#q§].pop();
         }
         else
         {
            _loc1_ = new §1!"§(this.§0$3§,true,this.§&#q§,this.§-"-§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§+!V§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§?!!§ && this.§?!!§ is §0"V§)
         {
            if(!§`#7§[this.§0$3§ + this.§-"-§])
            {
               §`#7§[this.§0$3§ + this.§-"-§] = [];
            }
            §`#7§[this.§0$3§ + this.§-"-§].push(this.§?!!§);
         }
         if(this.§?!!§ && this.§?!!§ is §1!"§)
         {
            if(!§-"L§[this.§0$3§ + this.§&#q§])
            {
               §-"L§[this.§0$3§ + this.§&#q§] = [];
            }
            §-"L§[this.§0$3§ + this.§&#q§].push(this.§?!!§);
         }
         if(this.§?!!§)
         {
            if(this.§?!!§ is §!#T§)
            {
               §!#T§(this.§?!!§).dispose();
            }
            if(this.§?!!§.parent == this)
            {
               removeChild(this.§?!!§);
            }
            this.§?!!§ = null;
         }
         if(this.§-" §)
         {
            if(this.§-" §.parent == this)
            {
               removeChild(this.§-" §);
            }
            this.§-" § = null;
         }
         if(this.§6&§)
         {
            this.§6&§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§6&§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§-"-§;
      }
   }
}
