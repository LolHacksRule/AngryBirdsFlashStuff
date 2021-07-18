package §8" §
{
   import §#R§.§4!+§;
   import §%"$§.§"s§;
   import §%"$§.§#!p§;
   import §%"$§.§%!4§;
   import §%"$§.§-d§;
   import §%"$§.§[!0§;
   import §%"$§.§^!U§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §@"5§.§1k§;
   import §]!+§.§'"+§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §<!j§:String = "[done]";
      
      public static const §"!!§:String = "None";
      
      public static const §@!?§:String = "Static";
      
      public static const §;!y§:String = "Intro";
      
      public static const §1! §:String = "Conditions";
      
      public static const §-!z§:String = "ReadyForTest";
      
      public static const §&P§:String = "StabilityCheck";
      
      public static const §9!h§:String = "ReadyForPlay";
      
      public static var §@>§:Boolean = false;
       
      
      private var §<0§:Vector.<§2J§>;
      
      private var § r§:Vector.<§2J§>;
      
      private var §<""§:Vector.<§[!0§>;
      
      private var §8e§:Vector.<String>;
      
      private var §+!z§:Vector.<§^!U§>;
      
      private var §]q§:Vector.<§=q§>;
      
      private var §9q§:§!w§;
      
      private var §02§:int = 0;
      
      private var §^"$§:String;
      
      private var mName:String = "";
      
      private var §&F§:int;
      
      private var §!j§:int;
      
      private var §7! §:Vector.<§7z§>;
      
      private var §=S§:§'"+§;
      
      private var §5]§:Boolean = false;
      
      private var §4!7§:Rectangle;
      
      private var §5!1§:§4!+§;
      
      private var §8"6§:int;
      
      public function Quest(param1:§!w§, param2:Boolean = false)
      {
         this.§<0§ = new Vector.<§2J§>();
         this.§ r§ = new Vector.<§2J§>();
         this.§<""§ = new Vector.<§[!0§>();
         this.§8e§ = new Vector.<String>();
         this.§+!z§ = new Vector.<§^!U§>();
         this.§]q§ = new Vector.<§=q§>();
         super();
         this.§9q§ = param1;
         this.§5]§ = param2;
      }
      
      public static function §+!#§(param1:§!w§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§<""§.push(new §-d§(param1));
         _loc2_.§<""§.push(new §%!4§(param1));
         return _loc2_;
      }
      
      public function get §&i§() : Boolean
      {
         return this.§5]§;
      }
      
      public function §?j§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§[!0§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§2J§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§=q§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §[!0§.§0j§(this.§9q§,_loc2_))
            {
               this.§<""§.push(_loc7_);
            }
         }
         this.§7! § = new Vector.<§7z§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§7! §.push(new §7z§(this.§9q§,_loc3_));
         }
         this.§=S§ = new §'"+§();
         this.§=S§.init(this.§7! §);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§8e§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§]q§.push(§`8§.§"!h§(_loc5_,this.§9q§.objects));
         }
         this.§+!z§.push(new §"s§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§4!7§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            _loc9_ = new §2J§(_loc6_);
            if(!§@>§ && _loc9_.type == §2J§.§;Z§)
            {
               this.§<0§.push(_loc9_);
            }
            else if(_loc9_.type == §2J§.§6v§)
            {
               this.§ r§.push(_loc9_);
            }
         }
         if(!§@>§)
         {
            _loc10_ = 0;
            while(_loc10_ < this.§9q§.objects.getObjectCount())
            {
               if((_loc12_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc10_))).§@!i§() && !this.isObjectNeeded(_loc12_))
               {
                  _loc12_.§'!^§(1);
               }
               else
               {
                  _loc12_.§'!^§(Number.MAX_VALUE);
               }
               _loc10_++;
            }
            _loc11_ = param1.intro[0];
            this.§&F§ = _loc11_.start;
            this.§!j§ = _loc11_.end;
            this.§8"6§ = this.§&F§;
         }
         §@>§ = false;
         this.§^"$§ = §"!!§;
      }
      
      private function §^]§() : void
      {
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(_loc2_.§@!i§())
            {
               _loc2_.§1!Z§();
            }
            _loc1_++;
         }
      }
      
      public function §=!"§() : §2J§
      {
         if(this.§<0§.length > 0)
         {
            return this.§<0§.shift();
         }
         if(this.§^"$§ == §9!h§)
         {
            return this.§ r§.shift();
         }
         if(this.§^"$§ == §1! § && this.§#D§())
         {
            return this.§#D§().§=!"§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§=q§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^"$§ == §"!!§)
         {
            this.updateState();
         }
         else if(this.§^"$§ == §@!?§)
         {
            this.§&F§ -= param1;
            _loc2_ = this.§+"6§.§ !t§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§&F§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§^"$§ == §;!y§)
         {
            this.§!j§ -= param1;
            if(this.§!j§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§^"$§ == §&P§)
         {
            this.§6!W§(param1);
         }
         else if(this.§^"$§ == §1! § && this.§#D§() is §#!p§)
         {
            this.§8D§(false);
         }
      }
      
      public function refresh(param1:§!w§) : void
      {
         var _loc2_:§[!0§ = null;
         this.§9q§ = param1;
         for each(_loc2_ in this.§<""§)
         {
            _loc2_.refresh(this.§9q§);
         }
         this.§<e§();
      }
      
      public function § f§() : void
      {
         this.§""$§();
         this.§>">§();
         this.§<e§();
         this.updateState();
      }
      
      private function §""$§() : void
      {
         var _loc1_:§^!U§ = null;
         if(this.§^"$§ == §9!h§)
         {
            for each(_loc1_ in this.§+!z§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §<e§() : void
      {
         var _loc1_:§7z§ = null;
         if(!(this.§#D§() is §#!p§))
         {
            for each(_loc1_ in this.§7! §)
            {
               _loc1_.update(this.§9q§.objects);
            }
            if(this.§=S§)
            {
               this.§=S§.update();
               this.§=S§.visible = true;
            }
         }
         else
         {
            this.§=S§.visible = false;
         }
         dispatchEvent(new §1k§(§1k§.§1!+§));
      }
      
      private function §>">§() : void
      {
         var _loc1_:§[!0§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§<""§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§9q§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §1k§(§1k§.§3!u§));
            }
         }
      }
      
      public function §4L§() : void
      {
         var _loc1_:§^!U§ = this.§1!"§();
         if(_loc1_)
         {
            _loc1_.§+"'§();
         }
      }
      
      private function §6!W§(param1:int) : void
      {
         var _loc2_:§^!U§ = this.§1!"§();
         if(_loc2_)
         {
            if(_loc2_.status == §^!U§.§"!x§)
            {
               _loc2_.startCheck(this.§9q§.§1!V§);
            }
            _loc2_.update(this.§9q§.§1!V§,param1);
            if(_loc2_.status == §^!U§.§+!>§)
            {
               this.updateState();
               dispatchEvent(new §1k§(§1k§.§?s§));
            }
            else if(_loc2_.status == §^!U§.§-7§)
            {
               dispatchEvent(new §1k§(§1k§.§7p§));
               this.updateState();
            }
         }
      }
      
      public function §#D§() : §[!0§
      {
         var _loc1_:§[!0§ = null;
         if(this.§^"$§ != §1! §)
         {
            return null;
         }
         for each(_loc1_ in this.§<""§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §1!"§() : §^!U§
      {
         var _loc1_:§^!U§ = null;
         if(this.§^"$§ != §&P§)
         {
            return null;
         }
         for each(_loc1_ in this.§+!z§)
         {
            if(_loc1_.status == §^!U§.§5!k§ || _loc1_.status == §^!U§.§"!x§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §0";§() : Boolean
      {
         var _loc1_:§^!U§ = null;
         for each(_loc1_ in this.§+!z§)
         {
            if(_loc1_.status != §^!U§.§-7§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§1k§ = null;
         var _loc1_:String = §@!?§;
         if(this.§&F§ > 0)
         {
            _loc1_ = §@!?§;
         }
         else if(this.§!j§ > 0)
         {
            _loc1_ = §;!y§;
         }
         else if(this.§+!z§.length > 0 && this.§+!z§[0].status == §^!U§.§5!k§)
         {
            _loc1_ = §&P§;
         }
         else if(!this.§^!J§())
         {
            _loc1_ = §1! §;
         }
         else if(!this.§0";§())
         {
            _loc1_ = §-!z§;
         }
         else
         {
            _loc1_ = §9!h§;
         }
         if(_loc1_ != this.§^"$§)
         {
            _loc2_ = this.§^"$§;
            _loc1_ = this.§&!b§(this.§^"$§,_loc1_);
            if(_loc2_ == §;!y§)
            {
               this.§^]§();
            }
            if(_loc1_ != this.§^"$§)
            {
               this.§^"$§ = _loc1_;
               _loc3_ = new §1k§(§1k§.§1g§);
               _loc3_.§'4§ = _loc1_;
               _loc3_.§-",§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §^!J§() : Boolean
      {
         var _loc1_:§[!0§ = null;
         for each(_loc1_ in this.§<""§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §&!b§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§=q§> = null;
         if(param1 == §;!y§)
         {
            _loc3_ = this.§'!v§();
         }
         return param2;
      }
      
      private function §'!v§() : Vector.<§=q§>
      {
         var _loc3_:§=q§ = null;
         var _loc1_:Vector.<§=q§> = new Vector.<§=q§>();
         var _loc2_:int = this.§9q§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§9q§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§=q§) : Boolean
      {
         var _loc2_:§[!0§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§]q§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§9!^§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§<""§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'!i§() : int
      {
         return this.§02§;
      }
      
      public function §8!K§() : void
      {
         this.§+!z§[0].startCheck(this.§9q§.§1!V§);
         this.updateState();
      }
      
      public function §'I§() : void
      {
         this.§;!h§();
      }
      
      private function §;!h§() : void
      {
         var _loc1_:§7z§ = null;
         if(this.§=S§)
         {
            this.§=S§.visible = false;
         }
         for each(_loc1_ in this.§7! §)
         {
            _loc1_.activate(this.§9q§);
         }
      }
      
      public function get §-!$§() : String
      {
         return this.§^"$§;
      }
      
      public function §5",§() : Vector.<String>
      {
         var _loc2_:§[!0§ = null;
         var _loc3_:§^!U§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§<""§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §<!j§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§+!z§)
         {
            _loc1_.push((_loc3_.status == §^!U§.§-7§ ? §<!j§ : "") + _loc3_.description);
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
         var _loc2_:§^!U§ = null;
         var _loc3_:§[!0§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§5!1§)
         {
            _loc1_.push(this.§5!1§);
         }
         if(this.§^"$§ == §;!y§ || this.§^"$§ == §@!?§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§+!z§)
         {
            if(_loc2_.status == §^!U§.§5!k§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§<""§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §#!p§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!0§ = null;
         for each(_loc1_ in this.§<""§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§[!0§ = null;
         if(this.§^"$§ != §;!y§)
         {
            for each(_loc1_ in this.§<""§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§;!h§();
         }
      }
      
      public function §+!d§() : Vector.<§7z§>
      {
         var _loc2_:§7z§ = null;
         var _loc1_:Vector.<§7z§> = new Vector.<§7z§>();
         for each(_loc2_ in this.§7! §)
         {
            if(_loc2_.§%!0§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §3!g§() : Vector.<§7z§>
      {
         if(!this.§7! §)
         {
            return null;
         }
         return this.§7! §.concat();
      }
      
      public function §8D§(param1:Boolean = true) : void
      {
         var _loc2_:§[!0§ = null;
         for each(_loc2_ in this.§<""§)
         {
            if(_loc2_ is §#!p§)
            {
               (_loc2_ as §#!p§).§64§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§[!0§ = null;
         for each(_loc1_ in this.§<""§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §?K§(param1:§=q§) : Boolean
      {
         if(this.§+"6§)
         {
            return this.§+"6§.§?K§(param1);
         }
         return true;
      }
      
      public function get §+"6§() : §#!p§
      {
         var _loc1_:§[!0§ = null;
         for each(_loc1_ in this.§<""§)
         {
            if(_loc1_ is §#!p§)
            {
               return _loc1_ as §#!p§;
            }
         }
         return null;
      }
      
      public function get §0" §() : Boolean
      {
         if(!this.§+"6§)
         {
            return true;
         }
         return this.§+"6§.isCompleted;
      }
      
      public function §2"0§() : Rectangle
      {
         return this.§4!7§;
      }
      
      public function §;!J§() : int
      {
         var _loc2_:§=q§ = null;
         var _loc3_:§[!0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]q§)
         {
            if(_loc2_.§@!i§() && !_loc2_.§8!w§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§<""§)
         {
            if(_loc3_ is §#!p§)
            {
               _loc1_ += (_loc3_ as §#!p§).§=<§();
            }
         }
         return _loc1_;
      }
   }
}
