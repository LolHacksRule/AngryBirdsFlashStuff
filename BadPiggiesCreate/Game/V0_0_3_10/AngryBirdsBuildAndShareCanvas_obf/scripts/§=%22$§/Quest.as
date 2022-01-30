package §="$§
{
   import § L§.§'!u§;
   import § L§.§,!"§;
   import § L§.§0!;§;
   import § L§.§4"8§;
   import § L§.§7!?§;
   import § L§.§["-§;
   import §#L§.§!!Q§;
   import §4!s§.§%I§;
   import §6`§.§,!n§;
   import §?^§.§0Q§;
   import §`J§.§-!_§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §4!D§:String = "[done]";
      
      public static const §2!Q§:String = "None";
      
      public static const §;!Q§:String = "Static";
      
      public static const §!!r§:String = "Intro";
      
      public static const §`!q§:String = "Conditions";
      
      public static const §`!k§:String = "ReadyForTest";
      
      public static const §;!;§:String = "StabilityCheck";
      
      public static const §#=§:String = "ReadyForPlay";
      
      public static var §[d§:Boolean = false;
       
      
      private var §1_§:Vector.<String>;
      
      private var §0"-§:Vector.<String>;
      
      private var §]"6§:Vector.<§4"8§>;
      
      private var §=h§:Vector.<String>;
      
      private var §'4§:Vector.<§0!;§>;
      
      private var §"!D§:Vector.<§0Q§>;
      
      private var §,!T§:§%I§;
      
      private var §+<§:int = 0;
      
      private var §1%§:String;
      
      private var mName:String = "";
      
      private var §[§:int;
      
      private var §`!P§:int;
      
      private var §0!,§:Vector.<§?w§>;
      
      private var §4s§:§,!n§;
      
      private var §'"8§:Boolean = false;
      
      private var §,'§:Rectangle;
      
      private var §%E§:§-!_§;
      
      private var §<;§:int;
      
      public function Quest(param1:§%I§, param2:Boolean = false)
      {
         this.§1_§ = new Vector.<String>();
         this.§0"-§ = new Vector.<String>();
         this.§]"6§ = new Vector.<§4"8§>();
         this.§=h§ = new Vector.<String>();
         this.§'4§ = new Vector.<§0!;§>();
         this.§"!D§ = new Vector.<§0Q§>();
         super();
         this.§,!T§ = param1;
         this.§'"8§ = param2;
      }
      
      public static function §5!C§(param1:§%I§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§]"6§.push(new §'!u§(param1));
         _loc2_.§]"6§.push(new §7!?§(param1));
         return _loc2_;
      }
      
      public function get §+!"§() : Boolean
      {
         return this.§'"8§;
      }
      
      public function §5@§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§4"8§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§0Q§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §4"8§.§6!0§(this.§,!T§,_loc2_))
            {
               this.§]"6§.push(_loc7_);
            }
         }
         this.§0!,§ = new Vector.<§?w§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§0!,§.push(new §?w§(this.§,!T§,_loc3_));
         }
         this.§4s§ = new §,!n§();
         this.§4s§.init(this.§0!,§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§=h§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§"!D§.push(§"!#§.§ !&§(_loc5_,this.§,!T§.objects));
         }
         this.§'4§.push(new §["-§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§,'§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            if(_loc6_.@type == "pre")
            {
               this.§1_§.push(_loc6_.toString());
            }
            else if(_loc6_.@type == "post")
            {
               this.§0"-§.push(_loc6_.toString());
            }
         }
         if(!§[d§)
         {
            _loc9_ = 0;
            while(_loc9_ < this.§,!T§.objects.getObjectCount())
            {
               if((_loc11_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc9_))).§[!Z§() && !this.isObjectNeeded(_loc11_))
               {
                  _loc11_.§,!9§(1);
               }
               else
               {
                  _loc11_.§,!9§(Number.MAX_VALUE);
               }
               _loc9_++;
            }
            _loc10_ = param1.intro[0];
            this.§[§ = _loc10_.start;
            this.§`!P§ = _loc10_.end;
            this.§<;§ = this.§[§;
         }
         §[d§ = false;
         this.§1%§ = §2!Q§;
      }
      
      private function §+!<§() : void
      {
         var _loc2_:§0Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!T§.objects.getObjectCount())
         {
            _loc2_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc1_));
            if(_loc2_.§[!Z§())
            {
               _loc2_.§4V§();
            }
            _loc1_++;
         }
      }
      
      public function §9!t§() : String
      {
         if(this.§1_§.length > 0)
         {
            return this.§1_§.shift();
         }
         if(this.§1%§ == §#=§)
         {
            return this.§0"-§.shift();
         }
         if(this.§1%§ == §`!q§ && this.§8v§())
         {
            return this.§8v§().§9!t§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§0Q§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1%§ == §2!Q§)
         {
            this.updateState();
         }
         else if(this.§1%§ == §;!Q§)
         {
            this.§[§ -= param1;
            _loc2_ = this.§3"1§.§4B§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§[§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§1%§ == §!!r§)
         {
            this.§`!P§ -= param1;
            if(this.§`!P§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§1%§ == §;!;§)
         {
            this.§=!j§(param1);
         }
         else if(this.§1%§ == §`!q§ && this.§8v§() is §,!"§)
         {
            this.§=""§(false);
         }
      }
      
      public function refresh(param1:§%I§) : void
      {
         var _loc2_:§4"8§ = null;
         this.§,!T§ = param1;
         for each(_loc2_ in this.§]"6§)
         {
            _loc2_.refresh(this.§,!T§);
         }
         this.§"!3§();
      }
      
      public function §=Q§() : void
      {
         this.§,W§();
         this.§^+§();
         this.§"!3§();
         this.updateState();
      }
      
      private function §,W§() : void
      {
         var _loc1_:§0!;§ = null;
         if(this.§1%§ == §#=§)
         {
            for each(_loc1_ in this.§'4§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §"!3§() : void
      {
         var _loc1_:§?w§ = null;
         if(!(this.§8v§() is §,!"§))
         {
            for each(_loc1_ in this.§0!,§)
            {
               _loc1_.update(this.§,!T§.objects);
            }
            if(this.§4s§)
            {
               this.§4s§.update();
               this.§4s§.visible = true;
            }
         }
         else
         {
            this.§4s§.visible = false;
         }
         dispatchEvent(new §!!Q§(§!!Q§.§<!N§));
      }
      
      private function §^+§() : void
      {
         var _loc1_:§4"8§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§]"6§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§,!T§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §!!Q§(§!!Q§.§?!;§));
            }
         }
      }
      
      public function §&!o§() : void
      {
         var _loc1_:§0!;§ = this.§]M§();
         if(_loc1_)
         {
            _loc1_.§,T§();
         }
      }
      
      private function §=!j§(param1:int) : void
      {
         var _loc2_:§0!;§ = this.§]M§();
         if(_loc2_)
         {
            if(_loc2_.status == §0!;§.§4I§)
            {
               _loc2_.startCheck(this.§,!T§.§6!"§);
            }
            _loc2_.update(this.§,!T§.§6!"§,param1);
            if(_loc2_.status == §0!;§.§@!Q§)
            {
               this.updateState();
               dispatchEvent(new §!!Q§(§!!Q§.§&F§));
            }
            else if(_loc2_.status == §0!;§.§9;§)
            {
               dispatchEvent(new §!!Q§(§!!Q§.§`!o§));
               this.updateState();
            }
         }
      }
      
      public function §8v§() : §4"8§
      {
         var _loc1_:§4"8§ = null;
         if(this.§1%§ != §`!q§)
         {
            return null;
         }
         for each(_loc1_ in this.§]"6§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §]M§() : §0!;§
      {
         var _loc1_:§0!;§ = null;
         if(this.§1%§ != §;!;§)
         {
            return null;
         }
         for each(_loc1_ in this.§'4§)
         {
            if(_loc1_.status == §0!;§.§'R§ || _loc1_.status == §0!;§.§4I§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §>]§() : Boolean
      {
         var _loc1_:§0!;§ = null;
         for each(_loc1_ in this.§'4§)
         {
            if(_loc1_.status != §0!;§.§9;§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§!!Q§ = null;
         var _loc1_:String = §;!Q§;
         if(this.§[§ > 0)
         {
            _loc1_ = §;!Q§;
         }
         else if(this.§`!P§ > 0)
         {
            _loc1_ = §!!r§;
         }
         else if(this.§'4§.length > 0 && this.§'4§[0].status == §0!;§.§'R§)
         {
            _loc1_ = §;!;§;
         }
         else if(!this.§5m§())
         {
            _loc1_ = §`!q§;
         }
         else if(!this.§>]§())
         {
            _loc1_ = §`!k§;
         }
         else
         {
            _loc1_ = §#=§;
         }
         if(_loc1_ != this.§1%§)
         {
            _loc2_ = this.§1%§;
            _loc1_ = this.§'G§(this.§1%§,_loc1_);
            if(_loc2_ == §!!r§)
            {
               this.§+!<§();
            }
            if(_loc1_ != this.§1%§)
            {
               this.§1%§ = _loc1_;
               _loc3_ = new §!!Q§(§!!Q§.§%g§);
               _loc3_.§[!e§ = _loc1_;
               _loc3_.§<!n§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §5m§() : Boolean
      {
         var _loc1_:§4"8§ = null;
         for each(_loc1_ in this.§]"6§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §'G§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§0Q§> = null;
         if(param1 == §!!r§)
         {
            _loc3_ = this.§>D§();
         }
         return param2;
      }
      
      private function §>D§() : Vector.<§0Q§>
      {
         var _loc3_:§0Q§ = null;
         var _loc1_:Vector.<§0Q§> = new Vector.<§0Q§>();
         var _loc2_:int = this.§,!T§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §0Q§.§super§(this.§,!T§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§,!T§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§0Q§) : Boolean
      {
         var _loc2_:§4"8§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§"!D§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§>R§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§]"6§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2!,§() : int
      {
         return this.§+<§;
      }
      
      public function §+!m§() : void
      {
         this.§'4§[0].startCheck(this.§,!T§.§6!"§);
         this.updateState();
      }
      
      public function §8!3§() : void
      {
         this.§<!J§();
      }
      
      private function §<!J§() : void
      {
         var _loc1_:§?w§ = null;
         if(this.§4s§)
         {
            this.§4s§.visible = false;
         }
         for each(_loc1_ in this.§0!,§)
         {
            _loc1_.activate(this.§,!T§);
         }
      }
      
      public function get §3"§() : String
      {
         return this.§1%§;
      }
      
      public function §8#§() : Vector.<String>
      {
         var _loc2_:§4"8§ = null;
         var _loc3_:§0!;§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§]"6§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §4!D§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§'4§)
         {
            _loc1_.push((_loc3_.status == §0!;§.§9;§ ? §4!D§ : "") + _loc3_.description);
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
         var _loc2_:§0!;§ = null;
         var _loc3_:§4"8§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§%E§)
         {
            _loc1_.push(this.§%E§);
         }
         if(this.§1%§ == §!!r§ || this.§1%§ == §;!Q§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§'4§)
         {
            if(_loc2_.status == §0!;§.§'R§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§]"6§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §,!"§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4"8§ = null;
         for each(_loc1_ in this.§]"6§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§4"8§ = null;
         if(this.§1%§ != §!!r§)
         {
            for each(_loc1_ in this.§]"6§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§<!J§();
         }
      }
      
      public function §@"5§() : Vector.<§?w§>
      {
         var _loc2_:§?w§ = null;
         var _loc1_:Vector.<§?w§> = new Vector.<§?w§>();
         for each(_loc2_ in this.§0!,§)
         {
            if(_loc2_.§""4§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §4",§() : Vector.<§?w§>
      {
         if(!this.§0!,§)
         {
            return null;
         }
         return this.§0!,§.concat();
      }
      
      public function §=""§(param1:Boolean = true) : void
      {
         var _loc2_:§4"8§ = null;
         for each(_loc2_ in this.§]"6§)
         {
            if(_loc2_ is §,!"§)
            {
               (_loc2_ as §,!"§).§8!#§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§4"8§ = null;
         for each(_loc1_ in this.§]"6§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §@4§(param1:§0Q§) : Boolean
      {
         if(this.§3"1§)
         {
            return this.§3"1§.§@4§(param1);
         }
         return true;
      }
      
      public function get §3"1§() : §,!"§
      {
         var _loc1_:§4"8§ = null;
         for each(_loc1_ in this.§]"6§)
         {
            if(_loc1_ is §,!"§)
            {
               return _loc1_ as §,!"§;
            }
         }
         return null;
      }
      
      public function get §=e§() : Boolean
      {
         if(!this.§3"1§)
         {
            return true;
         }
         return this.§3"1§.isCompleted;
      }
      
      public function §=!6§() : Rectangle
      {
         return this.§,'§;
      }
      
      public function §3!`§() : int
      {
         var _loc2_:§0Q§ = null;
         var _loc3_:§4"8§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"!D§)
         {
            if(_loc2_.§[!Z§() && !_loc2_.§ !b§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§]"6§)
         {
            if(_loc3_ is §,!"§)
            {
               _loc1_ += (_loc3_ as §,!"§).§?!]§();
            }
         }
         return _loc1_;
      }
   }
}
