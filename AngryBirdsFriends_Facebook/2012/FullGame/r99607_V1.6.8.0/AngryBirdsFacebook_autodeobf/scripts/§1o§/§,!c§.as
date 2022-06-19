package §1o§
{
   import §0t§.§"I§;
   import §<m§.§%!l§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,!c§ extends MovieClip
   {
      
      public static var §2,§:Array = [];
      
      private static var §]"3§:String;
      
      public static const §4!^§:Boolean = true;
      
      private static var § !U§:Object = {};
       
      
      protected var §9!u§:Sprite;
      
      protected var §>"0§:Sprite;
      
      protected var §-L§:Boolean;
      
      protected var §1!g§:Sprite;
      
      protected var §<!$§:String;
      
      protected var §30§:String;
      
      protected var §"!`§:Boolean = false;
      
      public function §,!c§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super();
         this.initProfile(param1,param2,param3,param4);
      }
      
      public static function §2G§(param1:String) : void
      {
         var _loc3_:§,!c§ = null;
         §]"3§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §2,§)
            {
               _loc3_.update(§%!l§.§]!z§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         this.§30§ = param4 = param4 || §'8§.§"!Y§;
         this.§<!$§ = param1;
         this.§-L§ = §%!l§.§]!z§ == param1;
         this.§1!g§ = new Sprite();
         this.§1!g§.graphics.beginFill(0,0);
         this.§1!g§.graphics.drawRect(0,0,50,50);
         this.§1!g§.graphics.endFill();
         addChild(this.§1!g§);
         this.§=q§(param1,param2,param3);
         if(this.§-L§)
         {
            §2,§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function §!9§(param1:MouseEvent) : void
      {
         if(this.§]!@§)
         {
            this.§9!u§.visible = false;
            this.§>"0§.visible = true;
         }
      }
      
      private function §?!2§(param1:MouseEvent) : void
      {
         if(this.§]!@§)
         {
            this.§9!u§.visible = true;
            this.§>"0§.visible = false;
         }
      }
      
      public function get §!!'§() : String
      {
         return this.§<!$§;
      }
      
      public function get §]!@§() : Boolean
      {
         return this.§"!`§;
      }
      
      public function set §]!@§(param1:Boolean) : void
      {
         this.§"!`§ = param1;
         if(this.§]!@§)
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
         if(§]"3§ != null)
         {
            this.§=q§(this.§<!$§,§]"3§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §;3§() : Sprite
      {
         return this.§9!u§;
      }
      
      public function get §2"B§() : Boolean
      {
         return this.§-L§;
      }
      
      protected function §=q§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         if(this.§9!u§)
         {
            if(this.§9!u§.parent)
            {
               this.§9!u§.parent.removeChild(this.§9!u§);
            }
         }
         if(§4!^§)
         {
            if(param2 == null || param2 == "")
            {
               param2 = §"I§.§<!v§(param1);
            }
         }
         if(!(param2 == "" || param2 == null) && §4!^§)
         {
            this.createAvatar(param2,param1,param3);
         }
         else
         {
            this.createFacebookProfile(param1,param3);
         }
         if(this.§1!g§)
         {
            setChildIndex(this.§1!g§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§]!@§ = true;
         this.§>"0§ = this.§8!"§(param2,this.§30§,param3);
         var _loc6_:String = this.§30§;
         if(param4 > 0)
         {
            _loc6_ = "" + param4;
         }
         this.§9!u§ = new §%"%§(param1,_loc6_);
         if(!param5)
         {
            addChild(this.§>"0§);
         }
         this.§>"0§.visible = false;
         this.§1!g§.addEventListener(MouseEvent.MOUSE_OVER,this.§!9§);
         this.§1!g§.addEventListener(MouseEvent.MOUSE_OUT,this.§?!2§);
         if(this.§9!u§ && !param5)
         {
            addChild(this.§9!u§);
         }
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§]!@§ = false;
         this.§9!u§ = this.§8!"§(param1,this.§30§,param2);
         if(this.§9!u§ && !param3)
         {
            addChild(this.§9!u§);
         }
      }
      
      private function §8!"§(param1:String, param2:String, param3:Boolean = false) : §'8§
      {
         var _loc4_:§'8§ = null;
         if(!§ !U§[param1 + param2])
         {
            § !U§[param1 + param2] = [];
         }
         if(§ !U§[param1 + param2].length > 0)
         {
            _loc4_ = § !U§[param1 + param2].pop();
         }
         else
         {
            _loc4_ = new §'8§(param1,param3,param2);
         }
         return _loc4_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§=q§(param1,param2,false);
      }
      
      public function dispose() : void
      {
         if(this.§9!u§ && this.§9!u§ is §'8§)
         {
            if(!§ !U§[this.§<!$§ + this.§30§])
            {
               § !U§[this.§<!$§ + this.§30§] = [];
            }
            § !U§[this.§<!$§ + this.§30§].push(this.§9!u§);
         }
         if(this.§9!u§)
         {
            if(this.§9!u§ is §3"4§)
            {
               §3"4§(this.§9!u§).dispose();
            }
            if(this.§9!u§.parent == this)
            {
               removeChild(this.§9!u§);
            }
            this.§9!u§ = null;
         }
         if(this.§>"0§)
         {
            if(this.§>"0§.parent == this)
            {
               removeChild(this.§>"0§);
            }
            this.§>"0§ = null;
         }
         if(this.§1!g§)
         {
            this.§1!g§.removeEventListener(MouseEvent.MOUSE_OVER,this.§!9§);
            this.§1!g§.removeEventListener(MouseEvent.MOUSE_OUT,this.§?!2§);
         }
      }
   }
}
