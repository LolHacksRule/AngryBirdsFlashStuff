package §_-hX§
{
   import §_-05L§.§_-K5§;
   import §_-0EZ§.§_-Dk§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §_-pI§ extends MovieClip
   {
      
      public static var §_-uP§:Array = [];
      
      private static var §_-03S§:String;
      
      public static const get:Boolean = false;
      
      private static var §_-qG§:Object = {};
       
      
      protected var §_-2A§:Sprite;
      
      protected var §_-gM§:Sprite;
      
      protected var §_-52§:Boolean;
      
      protected var §_-FS§:Sprite;
      
      protected var §_-ck§:String;
      
      protected var §_-3m§:String;
      
      protected var §_-lT§:Boolean = false;
      
      public function §_-pI§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §_-6-§(param1:String) : void
      {
         var _loc3_:§_-pI§ = null;
         §_-03S§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §_-uP§)
            {
               _loc3_.update(§_-K5§.§_-EE§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§_-3m§ = param4 = param4 || §_-bT§.§_-N2§;
         this.§_-ck§ = param1;
         this.§_-52§ = §_-K5§.§_-EE§ == param1;
         this.§_-FS§ = new Sprite();
         this.§_-FS§.graphics.beginFill(0,0);
         this.§_-FS§.graphics.drawRect(0,0,50,50);
         this.§_-FS§.graphics.endFill();
         addChild(this.§_-FS§);
         this.§_-BS§(param1,param2,param3);
         if(this.§_-52§)
         {
            §_-uP§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§_-l5§);
         }
      }
      
      private function §_-OT§(param1:MouseEvent) : void
      {
         if(this.§_-m4§)
         {
            this.§_-2A§.visible = false;
            this.§_-gM§.visible = true;
         }
      }
      
      private function §_-Ni§(param1:MouseEvent) : void
      {
         if(this.§_-m4§)
         {
            this.§_-2A§.visible = true;
            this.§_-gM§.visible = false;
         }
      }
      
      public function get §_-0x§() : String
      {
         return this.§_-ck§;
      }
      
      public function get §_-m4§() : Boolean
      {
         return this.§_-lT§;
      }
      
      public function set §_-m4§(param1:Boolean) : void
      {
         this.§_-lT§ = param1;
         if(this.§_-m4§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §_-b-§(param1:Event) : void
      {
         if(§_-03S§ != null)
         {
            this.§_-BS§(this.§_-ck§,§_-03S§);
         }
      }
      
      protected function §_-l5§(param1:Event) : void
      {
      }
      
      public function get §_-028§() : Sprite
      {
         return this.§_-2A§;
      }
      
      public function get §_-5m§() : Boolean
      {
         return this.§_-52§;
      }
      
      protected function §_-BS§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§_-2A§)
         {
            if(this.§_-2A§.parent)
            {
               this.§_-2A§.parent.removeChild(this.§_-2A§);
            }
         }
         if(get)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §_-Dk§.§_-03B§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && get)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§_-FS§)
         {
            setChildIndex(this.§_-FS§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§_-m4§ = true;
         this.§_-gM§ = this.§_-0AT§(param2,this.§_-3m§,param3);
         var _loc6_:String = this.§_-3m§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§_-2A§ = new §_-WC§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§_-gM§);
         }
         this.§_-gM§.visible = false;
         this.§_-FS§.addEventListener(MouseEvent.MOUSE_OVER,this.§_-OT§);
         this.§_-FS§.addEventListener(MouseEvent.MOUSE_OUT,this.§_-Ni§);
         if(this.§_-2A§ && !param5)
         {
            addChild(this.§_-2A§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-m4§ = false;
         this.§_-2A§ = this.§_-0AT§(param1,this.§_-3m§,param2);
         if(this.§_-2A§ && !param3)
         {
            addChild(this.§_-2A§);
         }
      }
      
      private function §_-0AT§(param1:String, param2:String, param3:Boolean = false) : §_-bT§
      {
         var _loc4_:§_-bT§ = null;
         if(!§_-qG§[param1 + param2])
         {
            §_-qG§[param1 + param2] = [];
         }
         if(§_-qG§[param1 + param2].length > 0)
         {
            _loc4_ = §_-qG§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §_-bT§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§_-BS§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§_-2A§ && this.§_-2A§ is §_-bT§)
         {
            if(!§_-qG§[this.§_-ck§ + this.§_-3m§])
            {
               §_-qG§[this.§_-ck§ + this.§_-3m§] = [];
            }
            §_-qG§[this.§_-ck§ + this.§_-3m§].push(this.§_-2A§);
         }
         if(this.§_-2A§)
         {
            if(this.§_-2A§.parent == this)
            {
               removeChild(this.§_-2A§);
            }
            this.§_-2A§ = null;
         }
         if(this.§_-gM§)
         {
            if(this.§_-gM§.parent == this)
            {
               removeChild(this.§_-gM§);
            }
            this.§_-gM§ = null;
         }
         if(this.§_-FS§)
         {
            this.§_-FS§.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-OT§);
            this.§_-FS§.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-Ni§);
         }
      }
   }
}
