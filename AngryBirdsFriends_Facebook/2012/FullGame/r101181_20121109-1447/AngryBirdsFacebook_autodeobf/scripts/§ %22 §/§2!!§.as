package § " §
{
   import §!!C§.§!H§;
   import §-!+§.§ 7§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2!!§ extends MovieClip
   {
      
      public static var §+f§:Array = [];
      
      private static var §=!9§:String;
      
      public static const §,I§:Boolean = true;
      
      private static var §0i§:Object = {};
       
      
      protected var §#!j§:Sprite;
      
      protected var §>!#§:Sprite;
      
      protected var §+e§:Boolean;
      
      protected var §!A§:Sprite;
      
      protected var §"S§:String;
      
      protected var §%" §:String;
      
      protected var §?!Y§:Boolean = false;
      
      public function §2!!§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §&!L§(param1:String) : void
      {
         var _loc3_:§2!!§ = null;
         §=!9§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §+f§)
            {
               _loc3_.update(§ 7§.§+!z§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§%" § = param4 = param4 || §+!p§.§'"6§;
         this.§"S§ = param1;
         this.§+e§ = § 7§.§+!z§ == param1;
         this.§!A§ = new Sprite();
         this.§!A§.graphics.beginFill(0,0);
         this.§!A§.graphics.drawRect(0,0,50,50);
         this.§!A§.graphics.endFill();
         addChild(this.§!A§);
         this.§,!K§(param1,param2,param3);
         if(this.§+e§)
         {
            §+f§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function §=;§(param1:MouseEvent) : void
      {
         if(this.§+"5§)
         {
            this.§#!j§.visible = false;
            this.§>!#§.visible = true;
         }
      }
      
      private function §+Q§(param1:MouseEvent) : void
      {
         if(this.§+"5§)
         {
            this.§#!j§.visible = true;
            this.§>!#§.visible = false;
         }
      }
      
      public function get §4v§() : String
      {
         return this.§"S§;
      }
      
      public function get §+"5§() : Boolean
      {
         return this.§?!Y§;
      }
      
      public function set §+"5§(param1:Boolean) : void
      {
         this.§?!Y§ = param1;
         if(this.§+"5§)
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
         if(§=!9§ != null)
         {
            this.§,!K§(this.§"S§,§=!9§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §0"A§() : Sprite
      {
         return this.§#!j§;
      }
      
      public function get §class§() : Boolean
      {
         return this.§+e§;
      }
      
      protected function §,!K§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§#!j§)
         {
            if(this.§#!j§.parent)
            {
               this.§#!j§.parent.removeChild(this.§#!j§);
            }
         }
         if(§,I§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §!H§.§,!6§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §,I§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§!A§)
         {
            setChildIndex(this.§!A§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§+"5§ = true;
         this.§>!#§ = this.§1&§(param2,this.§%" §,param3);
         var _loc6_:String = this.§%" §;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§#!j§ = new §3P§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§>!#§);
         }
         this.§>!#§.visible = false;
         this.§!A§.addEventListener(MouseEvent.MOUSE_OVER,this.§=;§);
         this.§!A§.addEventListener(MouseEvent.MOUSE_OUT,this.§+Q§);
         if(this.§#!j§ && !param5)
         {
            addChild(this.§#!j§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§+"5§ = false;
         this.§#!j§ = this.§1&§(param1,this.§%" §,param2);
         if(this.§#!j§ && !param3)
         {
            addChild(this.§#!j§);
         }
      }
      
      private function §1&§(param1:String, param2:String, param3:Boolean = false) : §+!p§
      {
         var _loc4_:§+!p§ = null;
         if(!§0i§[param1 + param2])
         {
            §0i§[param1 + param2] = [];
         }
         if(§0i§[param1 + param2].length > 0)
         {
            _loc4_ = §0i§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §+!p§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§,!K§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§#!j§ && this.§#!j§ is §+!p§)
         {
            if(!§0i§[this.§"S§ + this.§%" §])
            {
               §0i§[this.§"S§ + this.§%" §] = [];
            }
            §0i§[this.§"S§ + this.§%" §].push(this.§#!j§);
         }
         if(this.§#!j§)
         {
            if(this.§#!j§ is §3!"§)
            {
               §3!"§(this.§#!j§).dispose();
            }
            if(this.§#!j§.parent == this)
            {
               removeChild(this.§#!j§);
            }
            this.§#!j§ = null;
         }
         if(this.§>!#§)
         {
            if(this.§>!#§.parent == this)
            {
               removeChild(this.§>!#§);
            }
            this.§>!#§ = null;
         }
         if(this.§!A§)
         {
            this.§!A§.removeEventListener(MouseEvent.MOUSE_OVER,this.§=;§);
            this.§!A§.removeEventListener(MouseEvent.MOUSE_OUT,this.§+Q§);
         }
      }
   }
}
