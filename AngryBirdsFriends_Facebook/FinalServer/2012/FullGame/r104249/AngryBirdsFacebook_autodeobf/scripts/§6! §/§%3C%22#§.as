package §6! §
{
   import §2L§.§[!3§;
   import §=E§.§[[§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<"#§ extends MovieClip
   {
      
      public static var §"!S§:Array = [];
      
      private static var §18§:String;
      
      public static const §+y§:Boolean = true;
      
      private static var §5!n§:Object = {};
       
      
      protected var §+W§:Sprite;
      
      protected var §5"9§:Sprite;
      
      protected var §8W§:Boolean;
      
      protected var §8!w§:Sprite;
      
      protected var §&"7§:String;
      
      protected var §<!B§:String;
      
      protected var §9Q§:Boolean = false;
      
      public function §<"#§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §'"-§(param1:String) : void
      {
         var _loc3_:§<"#§ = null;
         §18§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §"!S§)
            {
               _loc3_.update(§[[§.§+"L§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§<!B§ = param4 = param4 || §@!k§.§8v§;
         this.§&"7§ = param1;
         this.§8W§ = §[[§.§+"L§ == param1;
         this.§8!w§ = new Sprite();
         this.§8!w§.graphics.beginFill(0,0);
         this.§8!w§.graphics.drawRect(0,0,50,50);
         this.§8!w§.graphics.endFill();
         addChild(this.§8!w§);
         this.§[!a§(param1,param2,param3);
         if(this.§8W§)
         {
            §"!S§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function §9g§(param1:MouseEvent) : void
      {
         if(this.§3!;§)
         {
            this.§+W§.visible = false;
            this.§5"9§.visible = true;
         }
      }
      
      private function §3c§(param1:MouseEvent) : void
      {
         if(this.§3!;§)
         {
            this.§+W§.visible = true;
            this.§5"9§.visible = false;
         }
      }
      
      public function get §;#§() : String
      {
         return this.§&"7§;
      }
      
      public function get §3!;§() : Boolean
      {
         return this.§9Q§;
      }
      
      public function set §3!;§(param1:Boolean) : void
      {
         this.§9Q§ = param1;
         if(this.§3!;§)
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
         if(§18§ != null)
         {
            this.§[!a§(this.§&"7§,§18§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §;!_§() : Sprite
      {
         return this.§+W§;
      }
      
      public function get §7"2§() : Boolean
      {
         return this.§8W§;
      }
      
      protected function §[!a§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§+W§)
         {
            if(this.§+W§.parent)
            {
               this.§+W§.parent.removeChild(this.§+W§);
            }
         }
         if(§+y§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §[!3§.§5O§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §+y§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§8!w§)
         {
            setChildIndex(this.§8!w§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§3!;§ = true;
         this.§5"9§ = this.§]!U§(param2,this.§<!B§,param3);
         var _loc6_:String = this.§<!B§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§+W§ = new §9!t§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§5"9§);
         }
         this.§5"9§.visible = false;
         this.§8!w§.addEventListener(MouseEvent.MOUSE_OVER,this.§9g§);
         this.§8!w§.addEventListener(MouseEvent.MOUSE_OUT,this.§3c§);
         if(this.§+W§ && !param5)
         {
            addChild(this.§+W§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§3!;§ = false;
         this.§+W§ = this.§]!U§(param1,this.§<!B§,param2);
         if(this.§+W§ && !param3)
         {
            addChild(this.§+W§);
         }
      }
      
      private function §]!U§(param1:String, param2:String, param3:Boolean = false) : §@!k§
      {
         var _loc4_:§@!k§ = null;
         if(!§5!n§[param1 + param2])
         {
            §5!n§[param1 + param2] = [];
         }
         if(§5!n§[param1 + param2].length > 0)
         {
            _loc4_ = §5!n§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §@!k§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§[!a§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§+W§ && this.§+W§ is §@!k§)
         {
            if(!§5!n§[this.§&"7§ + this.§<!B§])
            {
               §5!n§[this.§&"7§ + this.§<!B§] = [];
            }
            §5!n§[this.§&"7§ + this.§<!B§].push(this.§+W§);
         }
         if(this.§+W§)
         {
            if(this.§+W§ is §<">§)
            {
               §<">§(this.§+W§).dispose();
            }
            if(this.§+W§.parent == this)
            {
               removeChild(this.§+W§);
            }
            this.§+W§ = null;
         }
         if(this.§5"9§)
         {
            if(this.§5"9§.parent == this)
            {
               removeChild(this.§5"9§);
            }
            this.§5"9§ = null;
         }
         if(this.§8!w§)
         {
            this.§8!w§.removeEventListener(MouseEvent.MOUSE_OVER,this.§9g§);
            this.§8!w§.removeEventListener(MouseEvent.MOUSE_OUT,this.§3c§);
         }
      }
   }
}
