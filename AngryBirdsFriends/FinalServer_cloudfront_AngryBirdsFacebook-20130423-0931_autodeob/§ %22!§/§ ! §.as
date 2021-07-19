package § "!§
{
   import §2!o§.§?j§;
   import §<w§.§9"?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § ! § extends MovieClip
   {
      
      public static var §-!d§:Array = [];
      
      private static var §?">§:String;
      
      public static const §9z§:Boolean = true;
      
      private static var §56§:Object = {};
       
      
      protected var §`F§:Sprite;
      
      protected var §3"A§:Sprite;
      
      protected var §3!a§:Boolean;
      
      protected var §!!f§:Sprite;
      
      protected var §'F§:String;
      
      protected var §'""§:String;
      
      protected var §]C§:Boolean = false;
      
      public function § ! §(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §6"K§(param1:String) : void
      {
         var _loc3_:§ ! § = null;
         §?">§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §-!d§)
            {
               _loc3_.update(§?j§.§1"[§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§'""§ = param4 = param4 || §!"O§.§'"O§;
         this.§'F§ = param1;
         this.§3!a§ = §?j§.§1"[§ == param1;
         this.§!!f§ = new Sprite();
         this.§!!f§.graphics.beginFill(0,0);
         this.§!!f§.graphics.drawRect(0,0,50,50);
         this.§!!f§.graphics.endFill();
         addChild(this.§!!f§);
         this.§@2§(param1,param2,param3);
         if(this.§3!a§)
         {
            §-!d§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function §^"+§(param1:MouseEvent) : void
      {
         if(this.§>!k§)
         {
            this.§`F§.visible = false;
            this.§3"A§.visible = true;
         }
      }
      
      private function §;!f§(param1:MouseEvent) : void
      {
         if(this.§>!k§)
         {
            this.§`F§.visible = true;
            this.§3"A§.visible = false;
         }
      }
      
      public function get §5!0§() : String
      {
         return this.§'F§;
      }
      
      public function get §>!k§() : Boolean
      {
         return this.§]C§;
      }
      
      public function set §>!k§(param1:Boolean) : void
      {
         this.§]C§ = param1;
         if(this.§>!k§)
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
         if(§?">§ != null)
         {
            this.§@2§(this.§'F§,§?">§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §49§() : Sprite
      {
         return this.§`F§;
      }
      
      public function get §>b§() : Boolean
      {
         return this.§3!a§;
      }
      
      protected function §@2§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§`F§)
         {
            if(this.§`F§.parent)
            {
               this.§`F§.parent.removeChild(this.§`F§);
            }
         }
         if(§9z§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §9"?§.§%!h§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §9z§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else if(this.§'<§(param1))
         {
            this.§5!j§(param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§!!f§)
         {
            setChildIndex(this.§!!f§,this.numChildren - 1);
         }
      }
      
      private function §'<§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §9"&§.§-"W§:
               return true;
            case §9"&§.§#2§:
               return true;
            default:
               return false;
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§>!k§ = true;
         this.§3"A§ = this.§'B§(param2,this.§'""§,param3);
         var _loc6_:String = this.§'""§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§`F§ = new §2w§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§3"A§);
         }
         this.§3"A§.visible = false;
         this.§!!f§.addEventListener(MouseEvent.MOUSE_OVER,this.§^"+§);
         this.§!!f§.addEventListener(MouseEvent.MOUSE_OUT,this.§;!f§);
         if(this.§`F§ && !param5)
         {
            addChild(this.§`F§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§>!k§ = false;
         this.§`F§ = this.§'B§(param1,this.§'""§,param2);
         if(this.§`F§ && !param3)
         {
            addChild(this.§`F§);
         }
      }
      
      private function §5!j§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`F§ = new §9"&§(param1);
         if(this.§`F§ && !param3)
         {
            addChild(this.§`F§);
         }
      }
      
      private function §'B§(param1:String, param2:String, param3:Boolean = false) : §!"O§
      {
         var _loc4_:§!"O§ = null;
         if(!§56§[param1 + param2])
         {
            §56§[param1 + param2] = [];
         }
         if(§56§[param1 + param2].length > 0)
         {
            _loc4_ = §56§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §!"O§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§@2§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§`F§ && this.§`F§ is §!"O§)
         {
            if(!§56§[this.§'F§ + this.§'""§])
            {
               §56§[this.§'F§ + this.§'""§] = [];
            }
            §56§[this.§'F§ + this.§'""§].push(this.§`F§);
         }
         if(this.§`F§)
         {
            if(this.§`F§ is §]"@§)
            {
               §]"@§(this.§`F§).dispose();
            }
            if(this.§`F§.parent == this)
            {
               removeChild(this.§`F§);
            }
            this.§`F§ = null;
         }
         if(this.§3"A§)
         {
            if(this.§3"A§.parent == this)
            {
               removeChild(this.§3"A§);
            }
            this.§3"A§ = null;
         }
         if(this.§!!f§)
         {
            this.§!!f§.removeEventListener(MouseEvent.MOUSE_OVER,this.§^"+§);
            this.§!!f§.removeEventListener(MouseEvent.MOUSE_OUT,this.§;!f§);
         }
      }
   }
}
