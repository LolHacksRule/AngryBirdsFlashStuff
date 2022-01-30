package §var§
{
   import § in§.§"!b§;
   import § in§.§"J§;
   import § in§.§5n§;
   import § in§.§7l§;
   import § in§.§8R§;
   import § in§.§`!U§;
   import §%h§.§5X§;
   import §,!$§.§`!z§;
   import §9u§.§;!1§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import §true§.§>"-§;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §"!B§:String = "[done]";
      
      public static const §5q§:String = "None";
      
      public static const §+"0§:String = "Static";
      
      public static const §?!W§:String = "Intro";
      
      public static const §<!y§:String = "Conditions";
      
      public static const § "%§:String = "ReadyForTest";
      
      public static const §;!X§:String = "StabilityCheck";
      
      public static const §=!M§:String = "ReadyForPlay";
      
      public static var §0!;§:Boolean = false;
       
      
      private var §6!o§:Vector.<§"J§>;
      
      private var §9""§:Vector.<String>;
      
      private var §@!1§:Vector.<§8R§>;
      
      private var §%0§:Vector.<§>"-§>;
      
      private var §>"2§:§5X§;
      
      private var §3"!§:int = 0;
      
      private var §4h§:String;
      
      private var mName:String = "";
      
      private var §`!M§:int;
      
      private var §%!J§:int;
      
      private var §8-§:Vector.<§0!r§>;
      
      private var §[!;§:§;!1§;
      
      private var §<w§:Boolean = false;
      
      public function Quest(param1:§5X§, param2:Boolean = false)
      {
         this.§6!o§ = new Vector.<§"J§>();
         this.§9""§ = new Vector.<String>();
         this.§@!1§ = new Vector.<§8R§>();
         this.§%0§ = new Vector.<§>"-§>();
         super();
         this.§>"2§ = param1;
         this.§<w§ = param2;
      }
      
      public static function §?Y§(param1:§5X§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§6!o§.push(new §7l§(param1));
         _loc2_.§6!o§.push(new §5n§(param1));
         return _loc2_;
      }
      
      public function get §]!x§() : Boolean
      {
         return this.§<w§;
      }
      
      public function §`-§(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:§"J§ = null;
         var _loc9_:§>"-§ = null;
         this.mName = param1.@name;
         var _loc2_:XML = param1.intro[0];
         for each(_loc3_ in param1.step)
         {
            if(_loc8_ = §"J§.§;!f§(this.§>"2§,_loc3_))
            {
               this.§6!o§.push(_loc8_);
            }
         }
         this.§8-§ = new Vector.<§0!r§>();
         for each(_loc4_ in param1.surprise)
         {
            this.§8-§.push(new §0!r§(this.§>"2§,_loc4_));
         }
         this.§[!;§ = new §;!1§();
         this.§[!;§.init(this.§8-§);
         for each(_loc5_ in param1.persistent.type)
         {
            this.§9""§.push(_loc5_);
         }
         for each(_loc6_ in param1.persistent.object)
         {
            this.§%0§.push(§&!y§.§3!m§(_loc6_,this.§>"2§.objects));
         }
         this.§@!1§.push(new §`!U§());
         _loc7_ = 0;
         while(_loc7_ < this.§>"2§.objects.getObjectCount())
         {
            if((_loc9_ = §>"-§.§0V§(this.§>"2§.objects.getObject(_loc7_))).§;!M§() && !this.isObjectNeeded(_loc9_))
            {
               _loc9_.§8"!§(1);
            }
            else
            {
               _loc9_.§8"!§(Number.MAX_VALUE);
            }
            _loc7_++;
         }
         if(§0!;§)
         {
            this.§4h§ = §5q§;
            this.§#u§();
         }
         else
         {
            this.§4h§ = §+"0§;
            this.§`!M§ = _loc2_.start;
            this.§%!J§ = _loc2_.end;
         }
         §0!;§ = false;
      }
      
      private function § l§() : void
      {
         var _loc2_:§>"-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>"2§.objects.getObjectCount())
         {
            _loc2_ = §>"-§.§0V§(this.§>"2§.objects.getObject(_loc1_));
            if(_loc2_.§;!M§())
            {
               _loc2_.§[!V§();
            }
            _loc1_++;
         }
      }
      
      public function update(param1:int) : void
      {
         if(this.§4h§ == §+"0§)
         {
            this.§`!M§ -= param1;
            if(this.§`!M§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§4h§ == §?!W§)
         {
            this.§%!J§ -= param1;
            if(this.§`!M§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§4h§ == §;!X§)
         {
            this.§ !7§(param1);
         }
      }
      
      public function refresh(param1:§5X§) : void
      {
         var _loc2_:§"J§ = null;
         this.§>"2§ = param1;
         for each(_loc2_ in this.§6!o§)
         {
            _loc2_.refresh(this.§>"2§);
         }
         this.§=S§();
      }
      
      public function §#u§() : void
      {
         this.§#!N§();
         this.§8!3§();
         this.§=S§();
         this.updateState();
      }
      
      private function §#!N§() : void
      {
         var _loc1_:§8R§ = null;
         if(this.§4h§ == §=!M§)
         {
            for each(_loc1_ in this.§@!1§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §=S§() : void
      {
         var _loc1_:§0!r§ = null;
         if(!(this.§?F§() is §"!b§))
         {
            for each(_loc1_ in this.§8-§)
            {
               _loc1_.update(this.§>"2§.objects);
            }
            this.§[!;§.update();
            this.§[!;§.visible = true;
         }
         else
         {
            this.§[!;§.visible = false;
         }
         dispatchEvent(new §`!z§(§`!z§.§^!r§));
      }
      
      private function §8!3§() : void
      {
         var _loc1_:§"J§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§6!o§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§>"2§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §`!z§(§`!z§.§;p§));
            }
         }
      }
      
      public function §&!v§() : void
      {
         var _loc1_:§8R§ = this.§#!r§();
         if(_loc1_)
         {
            _loc1_.§>!g§();
         }
      }
      
      private function § !7§(param1:int) : void
      {
         var _loc2_:§8R§ = this.§#!r§();
         if(_loc2_)
         {
            if(_loc2_.status == §8R§.§'t§)
            {
               _loc2_.startCheck(this.§>"2§.§2!H§);
            }
            _loc2_.update(this.§>"2§.§2!H§,param1);
            if(_loc2_.status == §8R§.§;!Q§)
            {
               this.updateState();
               dispatchEvent(new §`!z§(§`!z§.§;!9§));
            }
            else if(_loc2_.status == §8R§.§;=§)
            {
               dispatchEvent(new §`!z§(§`!z§.§6"-§));
               this.updateState();
            }
         }
      }
      
      public function §?F§() : §"J§
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §#!r§() : §8R§
      {
         var _loc1_:§8R§ = null;
         if(this.§4h§ != §;!X§)
         {
            return null;
         }
         for each(_loc1_ in this.§@!1§)
         {
            if(_loc1_.status == §8R§.§&z§ || _loc1_.status == §8R§.§'t§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §;o§() : Boolean
      {
         var _loc1_:§8R§ = null;
         for each(_loc1_ in this.§@!1§)
         {
            if(_loc1_.status != §8R§.§;=§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§`!z§ = null;
         var _loc1_:String = §+"0§;
         if(this.§`!M§ > 0)
         {
            _loc1_ = §+"0§;
         }
         else if(this.§%!J§ > 0)
         {
            _loc1_ = §?!W§;
         }
         else if(this.§@!1§.length > 0 && this.§@!1§[0].status == §8R§.§&z§)
         {
            _loc1_ = §;!X§;
         }
         else if(!this.§3n§())
         {
            _loc1_ = §<!y§;
         }
         else if(!this.§;o§())
         {
            _loc1_ = § "%§;
         }
         else
         {
            _loc1_ = §=!M§;
         }
         if(_loc1_ != this.§4h§)
         {
            _loc2_ = this.§4h§;
            _loc1_ = this.§[E§(this.§4h§,_loc1_);
            if(_loc2_ == §?!W§)
            {
               this.§ l§();
            }
            if(_loc1_ != this.§4h§)
            {
               this.§4h§ = _loc1_;
               _loc3_ = new §`!z§(§`!z§.§'! §);
               _loc3_.§0^§ = _loc1_;
               _loc3_.§!!R§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §3n§() : Boolean
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §[E§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§>"-§> = null;
         if(param1 == §?!W§)
         {
            _loc3_ = this.§>G§();
         }
         return param2;
      }
      
      private function §>G§() : Vector.<§>"-§>
      {
         var _loc3_:§>"-§ = null;
         var _loc1_:Vector.<§>"-§> = new Vector.<§>"-§>();
         var _loc2_:int = this.§>"2§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §>"-§.§0V§(this.§>"2§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§>"2§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§>"-§) : Boolean
      {
         var _loc2_:§"J§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§%0§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§6!p§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§6!o§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,h§() : int
      {
         return this.§3"!§;
      }
      
      public function §'!9§() : void
      {
         this.§@!1§[0].startCheck(this.§>"2§.§2!H§);
         this.updateState();
      }
      
      public function §]"'§() : void
      {
         this.§>"%§();
      }
      
      private function §>"%§() : void
      {
         var _loc1_:§0!r§ = null;
         this.§[!;§.visible = false;
         for each(_loc1_ in this.§8-§)
         {
            _loc1_.activate(this.§>"2§);
         }
      }
      
      public function get §=H§() : String
      {
         return this.§4h§;
      }
      
      public function §8!E§() : Vector.<String>
      {
         var _loc2_:§"J§ = null;
         var _loc3_:§8R§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§6!o§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §"!B§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§@!1§)
         {
            _loc1_.push((_loc3_.status == §8R§.§;=§ ? §"!B§ : "") + _loc3_.description);
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
         var _loc2_:§8R§ = null;
         var _loc3_:§"J§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§4h§ == §?!W§ || this.§4h§ == §+"0§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§@!1§)
         {
            if(_loc2_.status == §8R§.§&z§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§6!o§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §"!b§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§"J§ = null;
         if(this.§4h§ != §?!W§)
         {
            for each(_loc1_ in this.§6!o§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§>"%§();
         }
      }
      
      public function §<",§() : Vector.<§0!r§>
      {
         var _loc2_:§0!r§ = null;
         var _loc1_:Vector.<§0!r§> = new Vector.<§0!r§>();
         for each(_loc2_ in this.§8-§)
         {
            if(_loc2_.§7@§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §,O§() : void
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            if(_loc1_ is §"!b§)
            {
               (_loc1_ as §"!b§).§9!D§();
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function canObjectBeModified(param1:§>"-§) : Boolean
      {
         return this.§]!$§.canObjectBeModified(param1);
      }
      
      public function get §]!$§() : §"!b§
      {
         var _loc1_:§"J§ = null;
         for each(_loc1_ in this.§6!o§)
         {
            if(_loc1_ is §"!b§)
            {
               return _loc1_ as §"!b§;
            }
         }
         return null;
      }
      
      public function get §`+§() : Boolean
      {
         return this.§]!$§.isCompleted;
      }
      
      public function § _§() : int
      {
         var _loc2_:§>"-§ = null;
         var _loc3_:§"J§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%0§)
         {
            if(_loc2_.§;!M§() && !_loc2_.§[!,§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§6!o§)
         {
            if(_loc3_ is §"!b§)
            {
               _loc1_ += (_loc3_ as §"!b§).§>p§();
            }
         }
         return _loc1_;
      }
   }
}
