package §2G§
{
   import §+W§.§<§;
   import §2!Y§.§"$=§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §?$3§ extends MovieClip
   {
      
      public static var §&"U§:Array = [];
      
      private static var §>#4§:String;
      
      public static const §42§:Boolean = true;
      
      private static var §[p§:Object = {};
      
      private static var §<"w§:Object = {};
       
      
      protected var §-!2§:Sprite;
      
      protected var §`r§:Sprite;
      
      protected var §8!W§:Boolean;
      
      protected var §1"-§:Sprite;
      
      protected var §5"U§:String;
      
      protected var §4!<§:String;
      
      protected var §]#`§:String;
      
      protected var §@#C§:Boolean = false;
      
      private var §-#=§:Boolean;
      
      public function §?$3§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§-#=§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §2!M§(param1:String) : void
      {
         var _loc3_:§?$3§ = null;
         §>#4§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §&"U§)
            {
               _loc3_.update(§<#8§.§#f§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§]#`§ = param3 = param3 || §?!s§.§'!n§;
         this.§5"U§ = param1;
         this.§4!<§ = param4;
         this.§8!W§ = §<#8§.§#f§ == param1;
         this.§1"-§ = new Sprite();
         this.§1"-§.graphics.beginFill(0,0);
         this.§1"-§.graphics.drawRect(0,0,50,50);
         this.§1"-§.graphics.endFill();
         addChild(this.§1"-§);
         this.§,!x§(param2);
         if(this.§8!W§)
         {
            §&"U§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§5#u§)
         {
            this.§-!2§.visible = false;
            this.§`r§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§5#u§)
         {
            this.§-!2§.visible = true;
            this.§`r§.visible = false;
         }
      }
      
      public function get §5#u§() : Boolean
      {
         return this.§@#C§;
      }
      
      public function set §5#u§(param1:Boolean) : void
      {
         this.§@#C§ = param1;
         if(this.§5#u§)
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
         if(§>#4§ != null)
         {
            this.§,!x§(§>#4§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §[!i§() : Sprite
      {
         return this.§-!2§;
      }
      
      public function get §1"t§() : Boolean
      {
         return this.§8!W§;
      }
      
      protected function §,!x§(param1:String) : void
      {
         if(this.§-!2§)
         {
            if(this.§-!2§.parent)
            {
               this.§-!2§.parent.removeChild(this.§-!2§);
            }
         }
         if(!this.§-#=§ && §42§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §"$=§.§ $8§(this.§5"U§);
            }
         }
         if(!(param1 == "" || param1 == null) && §42§)
         {
            this.createAvatar(param1);
         }
         else if(§"A§.§<$!§(this.§5"U§))
         {
            this.§?N§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§1"-§)
         {
            setChildIndex(this.§1"-§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§5#u§ = true;
         this.§`r§ = this.§^e§();
         this.§-!2§ = new §2@§(param1,this.§]#`§);
         if(this.§`r§)
         {
            addChild(this.§`r§);
            this.§`r§.visible = false;
         }
         this.§1"-§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§1"-§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§-!2§)
         {
            addChild(this.§-!2§);
            this.§-!2§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§5#u§ = false;
         this.§-!2§ = this.§^e§();
         if(this.§-!2§ && !param1)
         {
            addChild(this.§-!2§);
         }
      }
      
      private function §?N§() : void
      {
         if(!§<"w§[this.§5"U§ + this.§4!<§])
         {
            §<"w§[this.§5"U§ + this.§4!<§] = [];
         }
         if(§<"w§[this.§5"U§ + this.§4!<§].length > 0)
         {
            this.§-!2§ = §<"w§[this.§5"U§ + this.§4!<§].pop();
         }
         else
         {
            this.§-!2§ = new §"A§(this.§5"U§,this.§4!<§);
         }
         addChild(this.§-!2§);
      }
      
      protected function §^e§() : §?!s§
      {
         var _loc1_:§?!s§ = null;
         if(!§[p§[this.§5"U§ + this.§]#`§])
         {
            §[p§[this.§5"U§ + this.§]#`§] = [];
         }
         if(§[p§[this.§5"U§ + this.§]#`§].length > 0)
         {
            _loc1_ = §[p§[this.§5"U§ + this.§]#`§].pop();
         }
         else
         {
            _loc1_ = new §?!s§(this.§5"U§,true,this.§]#`§,this.§4!<§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§,!x§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§-!2§ && this.§-!2§ is §"A§)
         {
            if(!§<"w§[this.§5"U§ + this.§4!<§])
            {
               §<"w§[this.§5"U§ + this.§4!<§] = [];
            }
            §<"w§[this.§5"U§ + this.§4!<§].push(this.§-!2§);
         }
         if(this.§-!2§ && this.§-!2§ is §?!s§)
         {
            if(!§[p§[this.§5"U§ + this.§]#`§])
            {
               §[p§[this.§5"U§ + this.§]#`§] = [];
            }
            §[p§[this.§5"U§ + this.§]#`§].push(this.§-!2§);
         }
         if(this.§-!2§)
         {
            if(this.§-!2§ is §]#A§)
            {
               §]#A§(this.§-!2§).dispose();
            }
            if(this.§-!2§.parent == this)
            {
               removeChild(this.§-!2§);
            }
            this.§-!2§ = null;
         }
         if(this.§`r§)
         {
            if(this.§`r§.parent == this)
            {
               removeChild(this.§`r§);
            }
            this.§`r§ = null;
         }
         if(this.§1"-§)
         {
            this.§1"-§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§1"-§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§4!<§;
      }
   }
}
