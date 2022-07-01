package §1z§
{
   import § !i§.§>!H§;
   import §#V§.§=C§;
   import §0",§.§'!H§;
   import §1!v§.§@%§;
   import §@!P§.§?"%§;
   import §`!Z§.§-"4§;
   import §`!Z§.§1!+§;
   import §`!Z§.§9"1§;
   import §`!Z§.§>!X§;
   import §`!Z§.§@3§;
   import §`!Z§.§[I§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §5!l§:String = "[done]";
      
      public static const §;"8§:String = "None";
      
      public static const §0!_§:String = "Static";
      
      public static const §;E§:String = "Intro";
      
      public static const §@0§:String = "Conditions";
      
      public static const §=!V§:String = "ReadyForTest";
      
      public static const §99§:String = "StabilityCheck";
      
      public static const §2q§:String = "ReadyForPlay";
      
      public static var §-!P§:Boolean = false;
       
      
      private var §#Z§:Vector.<String>;
      
      private var §@!$§:Vector.<String>;
      
      private var §`!J§:Vector.<§-"4§>;
      
      private var §@r§:Vector.<String>;
      
      private var §17§:Vector.<§>!X§>;
      
      private var §;!p§:Vector.<§?"%§>;
      
      private var §]Z§:§@%§;
      
      private var §>!8§:int = 0;
      
      private var §5H§:String;
      
      private var mName:String = "";
      
      private var §8!U§:int;
      
      private var §[!4§:int;
      
      private var §-%§:Vector.<§@k§>;
      
      private var §<?§:§=C§;
      
      private var §6!R§:Boolean = false;
      
      private var §&!m§:Rectangle;
      
      private var §0!A§:§'!H§;
      
      private var §5"9§:int;
      
      public function Quest(param1:§@%§, param2:Boolean = false)
      {
         this.§#Z§ = new Vector.<String>();
         this.§@!$§ = new Vector.<String>();
         this.§`!J§ = new Vector.<§-"4§>();
         this.§@r§ = new Vector.<String>();
         this.§17§ = new Vector.<§>!X§>();
         this.§;!p§ = new Vector.<§?"%§>();
         super();
         this.§]Z§ = param1;
         this.§6!R§ = param2;
      }
      
      public static function §'"3§(param1:§@%§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§`!J§.push(new §1!+§(param1));
         _loc2_.§`!J§.push(new §[I§(param1));
         return _loc2_;
      }
      
      public function get §7!p§() : Boolean
      {
         return this.§6!R§;
      }
      
      public function §3!0§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§-"4§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§?"%§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §-"4§.§&!l§(this.§]Z§,_loc2_))
            {
               this.§`!J§.push(_loc7_);
            }
         }
         this.§-%§ = new Vector.<§@k§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§-%§.push(new §@k§(this.§]Z§,_loc3_));
         }
         this.§<?§ = new §=C§();
         this.§<?§.init(this.§-%§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§@r§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§;!p§.push(§,!b§.§3!-§(_loc5_,this.§]Z§.objects));
         }
         this.§17§.push(new §@3§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§&!m§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            if(_loc6_.@type == "pre")
            {
               this.§#Z§.push(_loc6_.toString());
            }
            else if(_loc6_.@type == "post")
            {
               this.§@!$§.push(_loc6_.toString());
            }
         }
         if(!§-!P§)
         {
            _loc9_ = 0;
            while(_loc9_ < this.§]Z§.objects.getObjectCount())
            {
               if((_loc11_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc9_))).§^6§() && !this.isObjectNeeded(_loc11_))
               {
                  _loc11_.§!!j§(1);
               }
               else
               {
                  _loc11_.§!!j§(Number.MAX_VALUE);
               }
               _loc9_++;
            }
            _loc10_ = param1.intro[0];
            this.§8!U§ = _loc10_.start;
            this.§[!4§ = _loc10_.end;
            this.§5"9§ = this.§8!U§;
         }
         §-!P§ = false;
         this.§5H§ = §;"8§;
      }
      
      private function §3!e§() : void
      {
         var _loc2_:§?"%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]Z§.objects.getObjectCount())
         {
            _loc2_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc1_));
            if(_loc2_.§^6§())
            {
               _loc2_.§0!e§();
            }
            _loc1_++;
         }
      }
      
      public function §[t§() : String
      {
         if(this.§#Z§.length > 0)
         {
            return this.§#Z§.shift();
         }
         if(this.§5H§ == §2q§)
         {
            return this.§@!$§.shift();
         }
         if(this.§5H§ == §@0§ && this.§`0§())
         {
            return this.§`0§().§[t§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§?"%§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§5H§ == §;"8§)
         {
            this.updateState();
         }
         else if(this.§5H§ == §0!_§)
         {
            this.§8!U§ -= param1;
            _loc2_ = this.§'!m§.§,!C§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§8!U§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§5H§ == §;E§)
         {
            this.§[!4§ -= param1;
            if(this.§[!4§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§5H§ == §99§)
         {
            this.§4!%§(param1);
         }
         else if(this.§5H§ == §@0§ && this.§`0§() is §9"1§)
         {
            this.§,!>§(false);
         }
      }
      
      public function refresh(param1:§@%§) : void
      {
         var _loc2_:§-"4§ = null;
         this.§]Z§ = param1;
         for each(_loc2_ in this.§`!J§)
         {
            _loc2_.refresh(this.§]Z§);
         }
         this.§'!u§();
      }
      
      public function §3!%§() : void
      {
         this.§^!A§();
         this.§,"8§();
         this.§'!u§();
         this.updateState();
      }
      
      private function §^!A§() : void
      {
         var _loc1_:§>!X§ = null;
         if(this.§5H§ == §2q§)
         {
            for each(_loc1_ in this.§17§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §'!u§() : void
      {
         var _loc1_:§@k§ = null;
         if(!(this.§`0§() is §9"1§))
         {
            for each(_loc1_ in this.§-%§)
            {
               _loc1_.update(this.§]Z§.objects);
            }
            if(this.§<?§)
            {
               this.§<?§.update();
               this.§<?§.visible = true;
            }
         }
         else
         {
            this.§<?§.visible = false;
         }
         dispatchEvent(new §>!H§(§>!H§.§9&§));
      }
      
      private function §,"8§() : void
      {
         var _loc1_:§-"4§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§`!J§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§]Z§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §>!H§(§>!H§.§"!L§));
            }
         }
      }
      
      public function §<!n§() : void
      {
         var _loc1_:§>!X§ = this.§7l§();
         if(_loc1_)
         {
            _loc1_.§6t§();
         }
      }
      
      private function §4!%§(param1:int) : void
      {
         var _loc2_:§>!X§ = this.§7l§();
         if(_loc2_)
         {
            if(_loc2_.status == §>!X§.§3!K§)
            {
               _loc2_.startCheck(this.§]Z§.§>"9§);
            }
            _loc2_.update(this.§]Z§.§>"9§,param1);
            if(_loc2_.status == §>!X§.§2-§)
            {
               this.updateState();
               dispatchEvent(new §>!H§(§>!H§.§^%§));
            }
            else if(_loc2_.status == §>!X§.§ !=§)
            {
               dispatchEvent(new §>!H§(§>!H§.§-!§));
               this.updateState();
            }
         }
      }
      
      public function §`0§() : §-"4§
      {
         var _loc1_:§-"4§ = null;
         if(this.§5H§ != §@0§)
         {
            return null;
         }
         for each(_loc1_ in this.§`!J§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §7l§() : §>!X§
      {
         var _loc1_:§>!X§ = null;
         if(this.§5H§ != §99§)
         {
            return null;
         }
         for each(_loc1_ in this.§17§)
         {
            if(_loc1_.status == §>!X§.§=O§ || _loc1_.status == §>!X§.§3!K§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §#!s§() : Boolean
      {
         var _loc1_:§>!X§ = null;
         for each(_loc1_ in this.§17§)
         {
            if(_loc1_.status != §>!X§.§ !=§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§>!H§ = null;
         var _loc1_:String = §0!_§;
         if(this.§8!U§ > 0)
         {
            _loc1_ = §0!_§;
         }
         else if(this.§[!4§ > 0)
         {
            _loc1_ = §;E§;
         }
         else if(this.§17§.length > 0 && this.§17§[0].status == §>!X§.§=O§)
         {
            _loc1_ = §99§;
         }
         else if(!this.§63§())
         {
            _loc1_ = §@0§;
         }
         else if(!this.§#!s§())
         {
            _loc1_ = §=!V§;
         }
         else
         {
            _loc1_ = §2q§;
         }
         if(_loc1_ != this.§5H§)
         {
            _loc2_ = this.§5H§;
            _loc1_ = this.§36§(this.§5H§,_loc1_);
            if(_loc2_ == §;E§)
            {
               this.§3!e§();
            }
            if(_loc1_ != this.§5H§)
            {
               this.§5H§ = _loc1_;
               _loc3_ = new §>!H§(§>!H§.§'§);
               _loc3_.§%!u§ = _loc1_;
               _loc3_.§@!5§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §63§() : Boolean
      {
         var _loc1_:§-"4§ = null;
         for each(_loc1_ in this.§`!J§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §36§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§?"%§> = null;
         if(param1 == §;E§)
         {
            _loc3_ = this.§1t§();
         }
         return param2;
      }
      
      private function §1t§() : Vector.<§?"%§>
      {
         var _loc3_:§?"%§ = null;
         var _loc1_:Vector.<§?"%§> = new Vector.<§?"%§>();
         var _loc2_:int = this.§]Z§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §?"%§.§3! §(this.§]Z§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§]Z§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§?"%§) : Boolean
      {
         var _loc2_:§-"4§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§;!p§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§^!!§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§`!J§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@"!§() : int
      {
         return this.§>!8§;
      }
      
      public function §-!C§() : void
      {
         this.§17§[0].startCheck(this.§]Z§.§>"9§);
         this.updateState();
      }
      
      public function §4X§() : void
      {
         this.§8u§();
      }
      
      private function §8u§() : void
      {
         var _loc1_:§@k§ = null;
         if(this.§<?§)
         {
            this.§<?§.visible = false;
         }
         for each(_loc1_ in this.§-%§)
         {
            _loc1_.activate(this.§]Z§);
         }
      }
      
      public function get §?!N§() : String
      {
         return this.§5H§;
      }
      
      public function § l§() : Vector.<String>
      {
         var _loc2_:§-"4§ = null;
         var _loc3_:§>!X§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§`!J§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §5!l§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§17§)
         {
            _loc1_.push((_loc3_.status == §>!X§.§ !=§ ? §5!l§ : "") + _loc3_.description);
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
         var _loc2_:§>!X§ = null;
         var _loc3_:§-"4§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§0!A§)
         {
            _loc1_.push(this.§0!A§);
         }
         if(this.§5H§ == §;E§ || this.§5H§ == §0!_§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§17§)
         {
            if(_loc2_.status == §>!X§.§=O§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§`!J§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §9"1§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-"4§ = null;
         for each(_loc1_ in this.§`!J§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§-"4§ = null;
         if(this.§5H§ != §;E§)
         {
            for each(_loc1_ in this.§`!J§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§8u§();
         }
      }
      
      public function §3,§() : Vector.<§@k§>
      {
         var _loc2_:§@k§ = null;
         var _loc1_:Vector.<§@k§> = new Vector.<§@k§>();
         for each(_loc2_ in this.§-%§)
         {
            if(_loc2_.§2!t§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §#T§() : Vector.<§@k§>
      {
         if(!this.§-%§)
         {
            return null;
         }
         return this.§-%§.concat();
      }
      
      public function §,!>§(param1:Boolean = true) : void
      {
         var _loc2_:§-"4§ = null;
         for each(_loc2_ in this.§`!J§)
         {
            if(_loc2_ is §9"1§)
            {
               (_loc2_ as §9"1§).§6!r§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§-"4§ = null;
         for each(_loc1_ in this.§`!J§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §#!A§(param1:§?"%§) : Boolean
      {
         if(this.§'!m§)
         {
            return this.§'!m§.§#!A§(param1);
         }
         return true;
      }
      
      public function get §'!m§() : §9"1§
      {
         var _loc1_:§-"4§ = null;
         for each(_loc1_ in this.§`!J§)
         {
            if(_loc1_ is §9"1§)
            {
               return _loc1_ as §9"1§;
            }
         }
         return null;
      }
      
      public function get §[H§() : Boolean
      {
         if(!this.§'!m§)
         {
            return true;
         }
         return this.§'!m§.isCompleted;
      }
      
      public function §!!w§() : Rectangle
      {
         return this.§&!m§;
      }
      
      public function §@!v§() : int
      {
         var _loc2_:§?"%§ = null;
         var _loc3_:§-"4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;!p§)
         {
            if(_loc2_.§^6§() && !_loc2_.§@g§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§`!J§)
         {
            if(_loc3_ is §9"1§)
            {
               _loc1_ += (_loc3_ as §9"1§).§-9§();
            }
         }
         return _loc1_;
      }
   }
}
