package §3!8§
{
   import §8u§.§3?§;
   import §<z§.§^!s§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0z§ extends MovieClip
   {
      
      public static var §[9§:Array = [];
      
      private static var § R§:String;
      
      public static const §[u§:Boolean = false;
      
      private static var §;A§:Object = {};
       
      
      protected var §4!H§:Sprite;
      
      protected var §=!s§:Sprite;
      
      protected var §=!&§:Boolean;
      
      protected var §>!g§:Sprite;
      
      protected var § u§:String;
      
      protected var §2!I§:String;
      
      protected var §'!e§:Boolean = false;
      
      public function §0z§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §%?§(param1:String) : void
      {
         var _loc3_:§0z§ = null;
         § R§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §[9§)
            {
               _loc3_.update(§^!s§.§-!1§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§2!I§ = param4 = param4 || §%!5§.§+a§;
         this.§ u§ = param1;
         this.§=!&§ = §^!s§.§-!1§ == param1;
         this.§>!g§ = new Sprite();
         this.§>!g§.graphics.beginFill(0,0);
         this.§>!g§.graphics.drawRect(0,0,50,50);
         this.§>!g§.graphics.endFill();
         addChild(this.§>!g§);
         this.§5!Z§(param1,param2,param3);
         if(this.§=!&§)
         {
            §[9§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§@!K§);
         }
      }
      
      private function §!w§(param1:MouseEvent) : void
      {
         if(this.§#!#§)
         {
            this.§4!H§.visible = false;
            this.§=!s§.visible = true;
         }
      }
      
      private function §[K§(param1:MouseEvent) : void
      {
         if(this.§#!#§)
         {
            this.§4!H§.visible = true;
            this.§=!s§.visible = false;
         }
      }
      
      public function get §0u§() : String
      {
         return this.§ u§;
      }
      
      public function get §#!#§() : Boolean
      {
         return this.§'!e§;
      }
      
      public function set §#!#§(param1:Boolean) : void
      {
         this.§'!e§ = param1;
         if(this.§#!#§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §'6§(param1:Event) : void
      {
         if(§ R§ != null)
         {
            this.§5!Z§(this.§ u§,§ R§);
         }
      }
      
      protected function §@!K§(param1:Event) : void
      {
      }
      
      public function get §4!7§() : Sprite
      {
         return this.§4!H§;
      }
      
      public function get §-!§() : Boolean
      {
         return this.§=!&§;
      }
      
      protected function §5!Z§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§4!H§)
         {
            if(this.§4!H§.parent)
            {
               this.§4!H§.parent.removeChild(this.§4!H§);
            }
         }
         if(§[u§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §3?§.§"!r§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §[u§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§>!g§)
         {
            setChildIndex(this.§>!g§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§#!#§ = true;
         this.§=!s§ = this.§"!9§(param2,this.§2!I§,param3);
         var _loc6_:String = this.§2!I§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§4!H§ = new §2!_§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§=!s§);
         }
         this.§=!s§.visible = false;
         this.§>!g§.addEventListener(MouseEvent.MOUSE_OVER,this.§!w§);
         this.§>!g§.addEventListener(MouseEvent.MOUSE_OUT,this.§[K§);
         if(this.§4!H§ && !param5)
         {
            addChild(this.§4!H§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§#!#§ = false;
         this.§4!H§ = this.§"!9§(param1,this.§2!I§,param2);
         if(this.§4!H§ && !param3)
         {
            addChild(this.§4!H§);
         }
      }
      
      private function §"!9§(param1:String, param2:String, param3:Boolean = false) : §%!5§
      {
         var _loc4_:§%!5§ = null;
         if(!§;A§[param1 + param2])
         {
            §;A§[param1 + param2] = [];
         }
         if(§;A§[param1 + param2].length > 0)
         {
            _loc4_ = §;A§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §%!5§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§5!Z§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§4!H§ && this.§4!H§ is §%!5§)
         {
            if(!§;A§[this.§ u§ + this.§2!I§])
            {
               §;A§[this.§ u§ + this.§2!I§] = [];
            }
            §;A§[this.§ u§ + this.§2!I§].push(this.§4!H§);
         }
         if(this.§4!H§)
         {
            if(this.§4!H§.parent == this)
            {
               removeChild(this.§4!H§);
            }
            this.§4!H§ = null;
         }
         if(this.§=!s§)
         {
            if(this.§=!s§.parent == this)
            {
               removeChild(this.§=!s§);
            }
            this.§=!s§ = null;
         }
         if(this.§>!g§)
         {
            this.§>!g§.removeEventListener(MouseEvent.MOUSE_OVER,this.§!w§);
            this.§>!g§.removeEventListener(MouseEvent.MOUSE_OUT,this.§[K§);
         }
      }
   }
}
