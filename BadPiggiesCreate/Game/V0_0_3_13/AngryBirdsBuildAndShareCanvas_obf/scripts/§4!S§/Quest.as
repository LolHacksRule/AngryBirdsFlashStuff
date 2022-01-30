package §4!S§
{
   import §3c§.§0" §;
   import §8!E§.§?!X§;
   import §8E§.§6$§;
   import §=!D§.§<]§;
   import §=%§.§<A§;
   import §>3§.§2R§;
   import §>3§.§4%§;
   import §>3§.§<!-§;
   import §>3§.§<u§;
   import §>3§.§=!W§;
   import §>3§.§^0§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §1!c§:String = "[done]";
      
      public static const §`!0§:String = "None";
      
      public static const §@<§:String = "Static";
      
      public static const §,"'§:String = "Intro";
      
      public static const §@!Z§:String = "Conditions";
      
      public static const §#!O§:String = "ReadyForTest";
      
      public static const §5e§:String = "StabilityCheck";
      
      public static const §#R§:String = "ReadyForPlay";
      
      public static var §,r§:Boolean = false;
       
      
      private var §+!Z§:Vector.<§&"'§>;
      
      private var §;"0§:Vector.<§&"'§>;
      
      private var § c§:Vector.<§4%§>;
      
      private var §5!C§:Vector.<String>;
      
      private var §`!,§:Vector.<§<!-§>;
      
      private var §-s§:Vector.<§<A§>;
      
      private var §7!;§:§?!X§;
      
      private var §#!X§:int = 0;
      
      private var §7l§:String;
      
      private var mName:String = "";
      
      private var §+"&§:int;
      
      private var §!!C§:int;
      
      private var §#"'§:Vector.<§7!o§>;
      
      private var §3j§:§0" §;
      
      private var §;"1§:Boolean = false;
      
      private var §5s§:Rectangle;
      
      private var §'!0§:§6$§;
      
      private var §9!Y§:int;
      
      public function Quest(param1:§?!X§, param2:Boolean = false)
      {
         this.§+!Z§ = new Vector.<§&"'§>();
         this.§;"0§ = new Vector.<§&"'§>();
         this.§ c§ = new Vector.<§4%§>();
         this.§5!C§ = new Vector.<String>();
         this.§`!,§ = new Vector.<§<!-§>();
         this.§-s§ = new Vector.<§<A§>();
         super();
         this.§7!;§ = param1;
         this.§;"1§ = param2;
      }
      
      public static function §1A§(param1:§?!X§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§ c§.push(new §^0§(param1));
         _loc2_.§ c§.push(new §=!W§(param1));
         return _loc2_;
      }
      
      public function get §5z§() : Boolean
      {
         return this.§;"1§;
      }
      
      public function §0!2§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§4%§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§&"'§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§<A§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §4%§.§+!A§(this.§7!;§,_loc2_))
            {
               this.§ c§.push(_loc7_);
            }
         }
         this.§#"'§ = new Vector.<§7!o§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§#"'§.push(new §7!o§(this.§7!;§,_loc3_));
         }
         this.§3j§ = new §0" §();
         this.§3j§.init(this.§#"'§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§5!C§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§-s§.push(§="%§.§&!c§(_loc5_,this.§7!;§.objects));
         }
         this.§`!,§.push(new §<u§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§5s§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            _loc9_ = new §&"'§(_loc6_);
            if(!§,r§ && _loc9_.type == §&"'§.§4G§)
            {
               this.§+!Z§.push(_loc9_);
            }
            else if(_loc9_.type == §&"'§.§<!d§)
            {
               this.§;"0§.push(_loc9_);
            }
         }
         if(!§,r§)
         {
            _loc10_ = 0;
            while(_loc10_ < this.§7!;§.objects.getObjectCount())
            {
               if((_loc12_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc10_))).§-E§() && !this.isObjectNeeded(_loc12_))
               {
                  _loc12_.§2!6§(1);
               }
               else
               {
                  _loc12_.§2!6§(Number.MAX_VALUE);
               }
               _loc10_++;
            }
            _loc11_ = param1.intro[0];
            this.§+"&§ = _loc11_.start;
            this.§!!C§ = _loc11_.end;
            this.§9!Y§ = this.§+"&§;
         }
         §,r§ = false;
         this.§7l§ = §`!0§;
      }
      
      private function §1m§() : void
      {
         var _loc2_:§<A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!;§.objects.getObjectCount())
         {
            _loc2_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc1_));
            if(_loc2_.§-E§())
            {
               _loc2_.§+!W§();
            }
            _loc1_++;
         }
      }
      
      public function §[",§() : §&"'§
      {
         if(this.§+!Z§.length > 0)
         {
            return this.§+!Z§.shift();
         }
         if(this.§7l§ == §#R§)
         {
            return this.§;"0§.shift();
         }
         if(this.§7l§ == §@!Z§ && this.§1E§())
         {
            return this.§1E§().§[",§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§<A§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7l§ == §`!0§)
         {
            this.updateState();
         }
         else if(this.§7l§ == §@<§)
         {
            this.§+"&§ -= param1;
            _loc2_ = this.§4o§.§#!r§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§+"&§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§7l§ == §,"'§)
         {
            this.§!!C§ -= param1;
            if(this.§!!C§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§7l§ == §5e§)
         {
            this.§0"<§(param1);
         }
         else if(this.§7l§ == §@!Z§ && this.§1E§() is §2R§)
         {
            this.§9R§(false);
         }
      }
      
      public function refresh(param1:§?!X§) : void
      {
         var _loc2_:§4%§ = null;
         this.§7!;§ = param1;
         for each(_loc2_ in this.§ c§)
         {
            _loc2_.refresh(this.§7!;§);
         }
         this.§#!h§();
      }
      
      public function §9!r§() : void
      {
         this.§8!A§();
         this.§-#§();
         this.§#!h§();
         this.updateState();
      }
      
      private function §8!A§() : void
      {
         var _loc1_:§<!-§ = null;
         if(this.§7l§ == §#R§)
         {
            for each(_loc1_ in this.§`!,§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §#!h§() : void
      {
         var _loc1_:§7!o§ = null;
         if(!(this.§1E§() is §2R§))
         {
            for each(_loc1_ in this.§#"'§)
            {
               _loc1_.update(this.§7!;§.objects);
            }
            if(this.§3j§)
            {
               this.§3j§.update();
               this.§3j§.visible = true;
            }
         }
         else
         {
            this.§3j§.visible = false;
         }
         dispatchEvent(new §<]§(§<]§.§+4§));
      }
      
      private function §-#§() : void
      {
         var _loc1_:§4%§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§ c§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§7!;§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §<]§(§<]§.§7"2§));
            }
         }
      }
      
      public function §8!0§() : void
      {
         var _loc1_:§<!-§ = this.§`"5§();
         if(_loc1_)
         {
            _loc1_.§+L§();
         }
      }
      
      private function §0"<§(param1:int) : void
      {
         var _loc2_:§<!-§ = this.§`"5§();
         if(_loc2_)
         {
            if(_loc2_.status == §<!-§.§3u§)
            {
               _loc2_.startCheck(this.§7!;§.§4!1§);
            }
            _loc2_.update(this.§7!;§.§4!1§,param1);
            if(_loc2_.status == §<!-§.§^-§)
            {
               this.updateState();
               dispatchEvent(new §<]§(§<]§.§9e§));
            }
            else if(_loc2_.status == §<!-§.§;"!§)
            {
               dispatchEvent(new §<]§(§<]§.§ j§));
               this.updateState();
            }
         }
      }
      
      public function §1E§() : §4%§
      {
         var _loc1_:§4%§ = null;
         if(this.§7l§ != §@!Z§)
         {
            return null;
         }
         for each(_loc1_ in this.§ c§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §`"5§() : §<!-§
      {
         var _loc1_:§<!-§ = null;
         if(this.§7l§ != §5e§)
         {
            return null;
         }
         for each(_loc1_ in this.§`!,§)
         {
            if(_loc1_.status == §<!-§.§?"#§ || _loc1_.status == §<!-§.§3u§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §[!E§() : Boolean
      {
         var _loc1_:§<!-§ = null;
         for each(_loc1_ in this.§`!,§)
         {
            if(_loc1_.status != §<!-§.§;"!§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§<]§ = null;
         var _loc1_:String = §@<§;
         if(this.§+"&§ > 0)
         {
            _loc1_ = §@<§;
         }
         else if(this.§!!C§ > 0)
         {
            _loc1_ = §,"'§;
         }
         else if(this.§`!,§.length > 0 && this.§`!,§[0].status == §<!-§.§?"#§)
         {
            _loc1_ = §5e§;
         }
         else if(!this.§3!Q§())
         {
            _loc1_ = §@!Z§;
         }
         else if(!this.§[!E§())
         {
            _loc1_ = §#!O§;
         }
         else
         {
            _loc1_ = §#R§;
         }
         if(_loc1_ != this.§7l§)
         {
            _loc2_ = this.§7l§;
            _loc1_ = this.§+a§(this.§7l§,_loc1_);
            if(_loc2_ == §,"'§)
            {
               this.§1m§();
            }
            if(_loc1_ != this.§7l§)
            {
               this.§7l§ = _loc1_;
               _loc3_ = new §<]§(§<]§.§+!n§);
               _loc3_.§6a§ = _loc1_;
               _loc3_.§>O§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §3!Q§() : Boolean
      {
         var _loc1_:§4%§ = null;
         for each(_loc1_ in this.§ c§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §+a§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§<A§> = null;
         if(param1 == §,"'§)
         {
            _loc3_ = this.§@G§();
         }
         return param2;
      }
      
      private function §@G§() : Vector.<§<A§>
      {
         var _loc3_:§<A§ = null;
         var _loc1_:Vector.<§<A§> = new Vector.<§<A§>();
         var _loc2_:int = this.§7!;§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §<A§.§5y§(this.§7!;§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§7!;§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§<A§) : Boolean
      {
         var _loc2_:§4%§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§-s§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§^!u§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§ c§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5!Z§() : int
      {
         return this.§#!X§;
      }
      
      public function §@!"§() : void
      {
         this.§`!,§[0].startCheck(this.§7!;§.§4!1§);
         this.updateState();
      }
      
      public function §-D§() : void
      {
         this.§%!J§();
      }
      
      private function §%!J§() : void
      {
         var _loc1_:§7!o§ = null;
         if(this.§3j§)
         {
            this.§3j§.visible = false;
         }
         for each(_loc1_ in this.§#"'§)
         {
            _loc1_.activate(this.§7!;§);
         }
      }
      
      public function get §^!I§() : String
      {
         return this.§7l§;
      }
      
      public function §@!s§() : Vector.<String>
      {
         var _loc2_:§4%§ = null;
         var _loc3_:§<!-§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§ c§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §1!c§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§`!,§)
         {
            _loc1_.push((_loc3_.status == §<!-§.§;"!§ ? §1!c§ : "") + _loc3_.description);
         }
         return _loc1_;
      }
      
      public function get name() : String
      {
         if(!this.mName || this.mName.length == 0)
         {
            return "Sandbox";
         }
         return this.mName;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc2_:§<!-§ = null;
         var _loc3_:§4%§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§'!0§)
         {
            _loc1_.push(this.§'!0§);
         }
         if(this.§7l§ == §,"'§ || this.§7l§ == §@<§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§`!,§)
         {
            if(_loc2_.status == §<!-§.§?"#§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§ c§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §2R§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4%§ = null;
         for each(_loc1_ in this.§ c§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§4%§ = null;
         if(this.§7l§ != §,"'§)
         {
            for each(_loc1_ in this.§ c§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§%!J§();
         }
      }
      
      public function §4" §() : Vector.<§7!o§>
      {
         var _loc2_:§7!o§ = null;
         var _loc1_:Vector.<§7!o§> = new Vector.<§7!o§>();
         for each(_loc2_ in this.§#"'§)
         {
            if(_loc2_.§%!E§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §%",§() : Vector.<§7!o§>
      {
         if(!this.§#"'§)
         {
            return null;
         }
         return this.§#"'§.concat();
      }
      
      public function §9R§(param1:Boolean = true) : void
      {
         var _loc2_:§4%§ = null;
         for each(_loc2_ in this.§ c§)
         {
            if(_loc2_ is §2R§)
            {
               (_loc2_ as §2R§).§8!D§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§4%§ = null;
         for each(_loc1_ in this.§ c§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §>!<§(param1:§<A§) : Boolean
      {
         if(this.§4o§)
         {
            return this.§4o§.§>!<§(param1);
         }
         return true;
      }
      
      public function get §4o§() : §2R§
      {
         var _loc1_:§4%§ = null;
         for each(_loc1_ in this.§ c§)
         {
            if(_loc1_ is §2R§)
            {
               return _loc1_ as §2R§;
            }
         }
         return null;
      }
      
      public function get §0Z§() : Boolean
      {
         if(!this.§4o§)
         {
            return true;
         }
         return this.§4o§.isCompleted;
      }
      
      public function §%!&§() : Rectangle
      {
         return this.§5s§;
      }
      
      public function §[!U§() : int
      {
         var _loc2_:§<A§ = null;
         var _loc3_:§4%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-s§)
         {
            if(_loc2_.§-E§() && !_loc2_.§!!F§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§ c§)
         {
            if(_loc3_ is §2R§)
            {
               _loc1_ += (_loc3_ as §2R§).§6X§();
            }
         }
         return _loc1_;
      }
   }
}
