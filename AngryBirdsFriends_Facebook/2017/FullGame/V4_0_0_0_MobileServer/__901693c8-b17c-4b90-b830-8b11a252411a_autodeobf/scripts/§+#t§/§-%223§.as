package §+#t§
{
   import §1#=§.§'b§;
   import §[G§.§8A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §-"3§ extends MovieClip
   {
      
      public static var §5!w§:Array = [];
      
      private static var §?"4§:String;
      
      public static const §<"l§:Boolean = true;
      
      private static var §8p§:Object = {};
      
      private static var §0!l§:Object = {};
       
      
      protected var §8!m§:Sprite;
      
      protected var §;$&§:Sprite;
      
      protected var §<!G§:Boolean;
      
      protected var §+"4§:Sprite;
      
      protected var §[#n§:String;
      
      protected var §%!3§:String;
      
      protected var §8#=§:String;
      
      protected var §+#=§:Boolean = false;
      
      private var §1?§:Boolean;
      
      public function §-"3§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:String = "", param6:Boolean = false)
      {
         super();
         this.§1?§ = param6;
         this.initProfile(param1,param2,param4,param5);
      }
      
      public static function §&"'§(param1:String) : void
      {
         var _loc3_:§-"3§ = null;
         §?"4§ = param1;
         if(param1 != null)
         {
            for each(_loc3_ in §5!w§)
            {
               _loc3_.update(§'b§.§4#;§,param1);
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         this.§8#=§ = param3 = param3 || §5V§.§1$$§;
         this.§[#n§ = param1;
         this.§%!3§ = param4;
         this.§<!G§ = §'b§.§4#;§ == param1;
         this.§+"4§ = new Sprite();
         this.§+"4§.graphics.beginFill(0,0);
         this.§+"4§.graphics.drawRect(0,0,50,50);
         this.§+"4§.graphics.endFill();
         addChild(this.§+"4§);
         this.§1!v§(param2);
         if(this.§<!G§)
         {
            §5!w§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this.§8#8§)
         {
            this.§8!m§.visible = false;
            this.§;$&§.visible = true;
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.§8#8§)
         {
            this.§8!m§.visible = true;
            this.§;$&§.visible = false;
         }
      }
      
      public function get §8#8§() : Boolean
      {
         return this.§+#=§;
      }
      
      public function set §8#8§(param1:Boolean) : void
      {
         this.§+#=§ = param1;
         if(this.§8#8§)
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
         if(§?"4§ != null)
         {
            this.§1!v§(§?"4§);
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §9W§() : Sprite
      {
         return this.§8!m§;
      }
      
      public function get §;q§() : Boolean
      {
         return this.§<!G§;
      }
      
      protected function §1!v§(param1:String) : void
      {
         if(this.§8!m§)
         {
            if(this.§8!m§.parent)
            {
               this.§8!m§.parent.removeChild(this.§8!m§);
            }
         }
         if(!this.§1?§ && §<"l§)
         {
            if(param1 == null || param1 == "")
            {
               param1 = §8A§.§&i§(this.§[#n§);
            }
         }
         if(!(param1 == "" || param1 == null) && §<"l§)
         {
            this.createAvatar(param1);
         }
         else if(§>J§.§7!;§(this.§[#n§))
         {
            this.§>`§();
         }
         else
         {
            this.createFacebookProfile();
         }
         if(this.§+"4§)
         {
            setChildIndex(this.§+"4§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(param1:String) : void
      {
         this.§8#8§ = true;
         this.§;$&§ = this.§2"7§();
         this.§8!m§ = new §5F§(param1,this.§8#=§);
         if(this.§;$&§)
         {
            addChild(this.§;$&§);
            this.§;$&§.visible = false;
         }
         this.§+"4§.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.§+"4§.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         if(this.§8!m§)
         {
            addChild(this.§8!m§);
            this.§8!m§.visible = true;
         }
      }
      
      protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§8#8§ = false;
         this.§8!m§ = this.§2"7§();
         if(this.§8!m§ && !param1)
         {
            addChild(this.§8!m§);
         }
      }
      
      private function §>`§() : void
      {
         if(!§0!l§[this.§[#n§ + this.§%!3§])
         {
            §0!l§[this.§[#n§ + this.§%!3§] = [];
         }
         if(§0!l§[this.§[#n§ + this.§%!3§].length > 0)
         {
            this.§8!m§ = §0!l§[this.§[#n§ + this.§%!3§].pop();
         }
         else
         {
            this.§8!m§ = new §>J§(this.§[#n§,this.§%!3§);
         }
         addChild(this.§8!m§);
      }
      
      protected function §2"7§() : §5V§
      {
         var _loc1_:§5V§ = null;
         if(!§8p§[this.§[#n§ + this.§8#=§])
         {
            §8p§[this.§[#n§ + this.§8#=§] = [];
         }
         if(§8p§[this.§[#n§ + this.§8#=§].length > 0)
         {
            _loc1_ = §8p§[this.§[#n§ + this.§8#=§].pop();
         }
         else
         {
            _loc1_ = new §5V§(this.§[#n§,true,this.§8#=§,this.§%!3§);
         }
         return _loc1_;
      }
      
      public function update(param1:String, param2:String) : void
      {
         this.§1!v§(param2);
      }
      
      public function dispose() : void
      {
         if(this.§8!m§ && this.§8!m§ is §>J§)
         {
            if(!§0!l§[this.§[#n§ + this.§%!3§])
            {
               §0!l§[this.§[#n§ + this.§%!3§] = [];
            }
            §0!l§[this.§[#n§ + this.§%!3§].push(this.§8!m§);
         }
         if(this.§8!m§ && this.§8!m§ is §5V§)
         {
            if(!§8p§[this.§[#n§ + this.§8#=§])
            {
               §8p§[this.§[#n§ + this.§8#=§] = [];
            }
            §8p§[this.§[#n§ + this.§8#=§].push(this.§8!m§);
         }
         if(this.§8!m§)
         {
            if(this.§8!m§ is §>=§)
            {
               §>=§(this.§8!m§).dispose();
            }
            if(this.§8!m§.parent == this)
            {
               removeChild(this.§8!m§);
            }
            this.§8!m§ = null;
         }
         if(this.§;$&§)
         {
            if(this.§;$&§.parent == this)
            {
               removeChild(this.§;$&§);
            }
            this.§;$&§ = null;
         }
         if(this.§+"4§)
         {
            this.§+"4§.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            this.§+"4§.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
      }
      
      public function get profileImageURL() : String
      {
         return this.§%!3§;
      }
   }
}
