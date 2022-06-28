package §;!q§
{
   import §+k§.§%!2§;
   import §]z§.§#!F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §=t§ extends MovieClip
   {
      
      public static var §9y§:Array = [];
      
      private static var §7y§:String;
      
      public static const §`W§:Boolean = false;
      
      private static var §3c§:Object = {};
       
      
      protected var §9!H§:Sprite;
      
      protected var §`!j§:Sprite;
      
      protected var §%2§:Boolean;
      
      protected var §6!1§:Sprite;
      
      protected var §7D§:String;
      
      protected var §4>§:String;
      
      protected var §7!0§:Boolean = false;
      
      public function §=t§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §?B§(param1:String) : void
      {
         var _loc3_:§=t§ = null;
         §7y§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §9y§)
            {
               _loc3_.update(§#!F§.§8%§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§4>§ = param4 = param4 || §%t§.§@!#§;
         this.§7D§ = param1;
         this.§%2§ = §#!F§.§8%§ == param1;
         this.§6!1§ = new Sprite();
         this.§6!1§.graphics.beginFill(0,0);
         this.§6!1§.graphics.drawRect(0,0,50,50);
         this.§6!1§.graphics.endFill();
         addChild(this.§6!1§);
         this.§ in§(param1,param2,param3);
         if(this.§%2§)
         {
            §9y§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§8!1§);
         }
      }
      
      private function §0! §(param1:MouseEvent) : void
      {
         if(this.§5!;§)
         {
            this.§9!H§.visible = false;
            this.§`!j§.visible = true;
         }
      }
      
      private function §3?§(param1:MouseEvent) : void
      {
         if(this.§5!;§)
         {
            this.§9!H§.visible = true;
            this.§`!j§.visible = false;
         }
      }
      
      public function get §0!V§() : String
      {
         return this.§7D§;
      }
      
      public function get §5!;§() : Boolean
      {
         return this.§7!0§;
      }
      
      public function set §5!;§(param1:Boolean) : void
      {
         this.§7!0§ = param1;
         if(this.§5!;§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §-8§(param1:Event) : void
      {
         if(§7y§ != null)
         {
            this.§ in§(this.§7D§,§7y§);
         }
      }
      
      protected function §8!1§(param1:Event) : void
      {
      }
      
      public function get §2?§() : Sprite
      {
         return this.§9!H§;
      }
      
      public function get §>!d§() : Boolean
      {
         return this.§%2§;
      }
      
      protected function § in§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§9!H§)
         {
            if(this.§9!H§.parent)
            {
               this.§9!H§.parent.removeChild(this.§9!H§);
            }
         }
         if(§`W§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §%!2§.§&B§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §`W§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§6!1§)
         {
            setChildIndex(this.§6!1§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§5!;§ = true;
         this.§`!j§ = this.§'j§(param2,this.§4>§,param3);
         var _loc6_:String = this.§4>§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§9!H§ = new §%!l§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§`!j§);
         }
         this.§`!j§.visible = false;
         this.§6!1§.addEventListener(MouseEvent.MOUSE_OVER,this.§0! §);
         this.§6!1§.addEventListener(MouseEvent.MOUSE_OUT,this.§3?§);
         if(this.§9!H§ && !param5)
         {
            addChild(this.§9!H§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§5!;§ = false;
         this.§9!H§ = this.§'j§(param1,this.§4>§,param2);
         if(this.§9!H§ && !param3)
         {
            addChild(this.§9!H§);
         }
      }
      
      private function §'j§(param1:String, param2:String, param3:Boolean = false) : §%t§
      {
         var _loc4_:§%t§ = null;
         if(!§3c§[param1 + param2])
         {
            §3c§[param1 + param2] = [];
         }
         if(§3c§[param1 + param2].length > 0)
         {
            _loc4_ = §3c§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §%t§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§ in§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§9!H§ && this.§9!H§ is §%t§)
         {
            if(!§3c§[this.§7D§ + this.§4>§])
            {
               §3c§[this.§7D§ + this.§4>§] = [];
            }
            §3c§[this.§7D§ + this.§4>§].push(this.§9!H§);
         }
         if(this.§9!H§)
         {
            if(this.§9!H§.parent == this)
            {
               removeChild(this.§9!H§);
            }
            this.§9!H§ = null;
         }
         if(this.§`!j§)
         {
            if(this.§`!j§.parent == this)
            {
               removeChild(this.§`!j§);
            }
            this.§`!j§ = null;
         }
         if(this.§6!1§)
         {
            this.§6!1§.removeEventListener(MouseEvent.MOUSE_OVER,this.§0! §);
            this.§6!1§.removeEventListener(MouseEvent.MOUSE_OUT,this.§3?§);
         }
      }
   }
}
