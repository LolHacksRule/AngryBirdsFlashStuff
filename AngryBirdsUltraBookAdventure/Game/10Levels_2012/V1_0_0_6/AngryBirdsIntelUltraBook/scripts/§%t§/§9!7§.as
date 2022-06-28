package §%t§
{
   import §#!"§.§"U§;
   import §6!Y§.§!o§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!7§ extends MovieClip
   {
      
      public static var §'$§:Array = [];
      
      private static var §4=§:String;
      
      public static const §?q§:Boolean = false;
      
      private static var §->§:Object = {};
       
      
      protected var §2-§:Sprite;
      
      protected var §`'§:Sprite;
      
      protected var §@!h§:Boolean;
      
      protected var §"!b§:Sprite;
      
      protected var §^o§:String;
      
      protected var §&Q§:String;
      
      protected var §2!b§:Boolean = false;
      
      public function §9!7§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §%>§(param1:String) : void
      {
         var _loc3_:§9!7§ = null;
         §4=§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §'$§)
            {
               _loc3_.update(§"U§.§7!2§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§&Q§ = param4 = param4 || §?!a§.§+6§;
         this.§^o§ = param1;
         this.§@!h§ = §"U§.§7!2§ == param1;
         this.§"!b§ = new Sprite();
         this.§"!b§.graphics.beginFill(0,0);
         this.§"!b§.graphics.drawRect(0,0,50,50);
         this.§"!b§.graphics.endFill();
         addChild(this.§"!b§);
         this.§0Y§(param1,param2,param3);
         if(this.§@!h§)
         {
            §'$§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§<I§);
         }
      }
      
      private function §]!2§(param1:MouseEvent) : void
      {
         if(this.§+!M§)
         {
            this.§2-§.visible = false;
            this.§`'§.visible = true;
         }
      }
      
      private function §'!p§(param1:MouseEvent) : void
      {
         if(this.§+!M§)
         {
            this.§2-§.visible = true;
            this.§`'§.visible = false;
         }
      }
      
      public function get §-H§() : String
      {
         return this.§^o§;
      }
      
      public function get §+!M§() : Boolean
      {
         return this.§2!b§;
      }
      
      public function set §+!M§(param1:Boolean) : void
      {
         this.§2!b§ = param1;
         if(this.§+!M§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §+T§(param1:Event) : void
      {
         if(§4=§ != null)
         {
            this.§0Y§(this.§^o§,§4=§);
         }
      }
      
      protected function §<I§(param1:Event) : void
      {
      }
      
      public function get §;d§() : Sprite
      {
         return this.§2-§;
      }
      
      public function get §=n§() : Boolean
      {
         return this.§@!h§;
      }
      
      protected function §0Y§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§2-§)
         {
            if(this.§2-§.parent)
            {
               this.§2-§.parent.removeChild(this.§2-§);
            }
         }
         if(§?q§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §!o§.§#7§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §?q§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§"!b§)
         {
            setChildIndex(this.§"!b§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§+!M§ = true;
         this.§`'§ = this.§,!3§(param2,this.§&Q§,param3);
         var _loc6_:String = this.§&Q§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§2-§ = new §1§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§`'§);
         }
         this.§`'§.visible = false;
         this.§"!b§.addEventListener(MouseEvent.MOUSE_OVER,this.§]!2§);
         this.§"!b§.addEventListener(MouseEvent.MOUSE_OUT,this.§'!p§);
         if(this.§2-§ && !param5)
         {
            addChild(this.§2-§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§+!M§ = false;
         this.§2-§ = this.§,!3§(param1,this.§&Q§,param2);
         if(this.§2-§ && !param3)
         {
            addChild(this.§2-§);
         }
      }
      
      private function §,!3§(param1:String, param2:String, param3:Boolean = false) : §?!a§
      {
         var _loc4_:§?!a§ = null;
         if(!§->§[param1 + param2])
         {
            §->§[param1 + param2] = [];
         }
         if(§->§[param1 + param2].length > 0)
         {
            _loc4_ = §->§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §?!a§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§0Y§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§2-§ && this.§2-§ is §?!a§)
         {
            if(!§->§[this.§^o§ + this.§&Q§])
            {
               §->§[this.§^o§ + this.§&Q§] = [];
            }
            §->§[this.§^o§ + this.§&Q§].push(this.§2-§);
         }
         if(this.§2-§)
         {
            if(this.§2-§.parent == this)
            {
               removeChild(this.§2-§);
            }
            this.§2-§ = null;
         }
         if(this.§`'§)
         {
            if(this.§`'§.parent == this)
            {
               removeChild(this.§`'§);
            }
            this.§`'§ = null;
         }
         if(this.§"!b§)
         {
            this.§"!b§.removeEventListener(MouseEvent.MOUSE_OVER,this.§]!2§);
            this.§"!b§.removeEventListener(MouseEvent.MOUSE_OUT,this.§'!p§);
         }
      }
   }
}
