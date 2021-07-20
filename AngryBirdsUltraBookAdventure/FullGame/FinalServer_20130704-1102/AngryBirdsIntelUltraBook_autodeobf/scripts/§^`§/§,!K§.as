package §^`§
{
   import §,@§.§8@§;
   import §-5§.§+p§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,!K§ extends MovieClip
   {
      
      public static var §"x§:Array = [];
      
      private static var §8!W§:String;
      
      public static const §%t§:Boolean = false;
      
      private static var §]d§:Object = {};
       
      
      protected var §4!^§:Sprite;
      
      protected var §#Y§:Sprite;
      
      protected var §&"!§:Boolean;
      
      protected var §>z§:Sprite;
      
      protected var §][§:String;
      
      protected var §#!@§:String;
      
      protected var §>!S§:Boolean = false;
      
      public function §,!K§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §2!Y§(param1:String) : void
      {
         var _loc3_:§,!K§ = null;
         §8!W§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §"x§)
            {
               _loc3_.update(§+p§.§!!I§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§#!@§ = param4 = param4 || §14§.§93§;
         this.§][§ = param1;
         this.§&"!§ = §+p§.§!!I§ == param1;
         this.§>z§ = new Sprite();
         this.§>z§.graphics.beginFill(0,0);
         this.§>z§.graphics.drawRect(0,0,50,50);
         this.§>z§.graphics.endFill();
         addChild(this.§>z§);
         this.§+C§(param1,param2,param3);
         if(this.§&"!§)
         {
            §"x§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§=!?§);
         }
      }
      
      private function §"$§(param1:MouseEvent) : void
      {
         if(this.§[Y§)
         {
            this.§4!^§.visible = false;
            this.§#Y§.visible = true;
         }
      }
      
      private function §;_§(param1:MouseEvent) : void
      {
         if(this.§[Y§)
         {
            this.§4!^§.visible = true;
            this.§#Y§.visible = false;
         }
      }
      
      public function get § z§() : String
      {
         return this.§][§;
      }
      
      public function get §[Y§() : Boolean
      {
         return this.§>!S§;
      }
      
      public function set §[Y§(param1:Boolean) : void
      {
         this.§>!S§ = param1;
         if(this.§[Y§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §#Z§(param1:Event) : void
      {
         if(§8!W§ != null)
         {
            this.§+C§(this.§][§,§8!W§);
         }
      }
      
      protected function §=!?§(param1:Event) : void
      {
      }
      
      public function get §&!B§() : Sprite
      {
         return this.§4!^§;
      }
      
      public function get §&!N§() : Boolean
      {
         return this.§&"!§;
      }
      
      protected function §+C§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§4!^§)
         {
            if(this.§4!^§.parent)
            {
               this.§4!^§.parent.removeChild(this.§4!^§);
            }
         }
         if(§%t§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §8@§.§<!u§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §%t§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§>z§)
         {
            setChildIndex(this.§>z§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§[Y§ = true;
         this.§#Y§ = this.§#!b§(param2,this.§#!@§,param3);
         var _loc6_:String = this.§#!@§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§4!^§ = new §>!N§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§#Y§);
         }
         this.§#Y§.visible = false;
         this.§>z§.addEventListener(MouseEvent.MOUSE_OVER,this.§"$§);
         this.§>z§.addEventListener(MouseEvent.MOUSE_OUT,this.§;_§);
         if(this.§4!^§ && !param5)
         {
            addChild(this.§4!^§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§[Y§ = false;
         this.§4!^§ = this.§#!b§(param1,this.§#!@§,param2);
         if(this.§4!^§ && !param3)
         {
            addChild(this.§4!^§);
         }
      }
      
      private function §#!b§(param1:String, param2:String, param3:Boolean = false) : §14§
      {
         var _loc4_:§14§ = null;
         if(!§]d§[param1 + param2])
         {
            §]d§[param1 + param2] = [];
         }
         if(§]d§[param1 + param2].length > 0)
         {
            _loc4_ = §]d§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §14§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§+C§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§4!^§ && this.§4!^§ is §14§)
         {
            if(!§]d§[this.§][§ + this.§#!@§])
            {
               §]d§[this.§][§ + this.§#!@§] = [];
            }
            §]d§[this.§][§ + this.§#!@§].push(this.§4!^§);
         }
         if(this.§4!^§)
         {
            if(this.§4!^§.parent == this)
            {
               removeChild(this.§4!^§);
            }
            this.§4!^§ = null;
         }
         if(this.§#Y§)
         {
            if(this.§#Y§.parent == this)
            {
               removeChild(this.§#Y§);
            }
            this.§#Y§ = null;
         }
         if(this.§>z§)
         {
            this.§>z§.removeEventListener(MouseEvent.MOUSE_OVER,this.§"$§);
            this.§>z§.removeEventListener(MouseEvent.MOUSE_OUT,this.§;_§);
         }
      }
   }
}
