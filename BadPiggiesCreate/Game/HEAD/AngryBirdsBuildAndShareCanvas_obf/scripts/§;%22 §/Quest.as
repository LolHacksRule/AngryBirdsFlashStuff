package §;" §
{
   import §%!0§.§,4§;
   import §+V§.§-!g§;
   import §4m§.§+r§;
   import §4m§.§3g§;
   import §4m§.§8o§;
   import §4m§.§9g§;
   import §4m§.§^!K§;
   import §7t§.§7a§;
   import §]" §.§?!m§;
   import §`!,§.§[!&§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §^E§:String = "[done]";
      
      public static const §4Z§:String = "None";
      
      public static const §[R§:String = "Static";
      
      public static const §`!$§:String = "Intro";
      
      public static const §'!X§:String = "Conditions";
      
      public static const §""0§:String = "ReadyForTest";
      
      public static const §;!b§:String = "StabilityCheck";
      
      public static const §0"?§:String = "ReadyForPlay";
      
      public static var §[!q§:Boolean = false;
       
      
      private var §<v§:Vector.<§>"0§>;
      
      private var §@-§:Vector.<§>"0§>;
      
      private var §?">§:Vector.<§9g§>;
      
      private var §2"=§:Vector.<String>;
      
      private var §!!^§:Vector.<§8o§>;
      
      private var §8!-§:Vector.<§7a§>;
      
      private var §`!G§:§,4§;
      
      private var §'!z§:int = 0;
      
      private var §>!F§:String;
      
      private var mName:String = "";
      
      private var §="=§:int;
      
      private var §?6§:int;
      
      private var §6!L§:Vector.<§7!9§>;
      
      private var §?!r§:§?!m§;
      
      private var §+",§:Boolean = false;
      
      private var §7Z§:Rectangle;
      
      private var §%"§:§-!g§;
      
      private var § !X§:int;
      
      public function Quest(param1:§,4§, param2:Boolean = false)
      {
         this.§<v§ = new Vector.<§>"0§>();
         this.§@-§ = new Vector.<§>"0§>();
         this.§?">§ = new Vector.<§9g§>();
         this.§2"=§ = new Vector.<String>();
         this.§!!^§ = new Vector.<§8o§>();
         this.§8!-§ = new Vector.<§7a§>();
         super();
         this.§`!G§ = param1;
         this.§+",§ = param2;
      }
      
      public static function §8"2§(param1:§,4§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§?">§.push(new §^!K§(param1));
         _loc2_.§!!^§.push(new §+r§());
         return _loc2_;
      }
      
      public function get §+!N§() : Boolean
      {
         return this.§+",§;
      }
      
      public function §["%§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§9g§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§>"0§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§7a§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §9g§.§2!3§(this.§`!G§,_loc2_))
            {
               this.§?">§.push(_loc7_);
            }
         }
         this.§6!L§ = new Vector.<§7!9§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§6!L§.push(new §7!9§(this.§`!G§,_loc3_));
         }
         this.§?!r§ = new §?!m§();
         this.§?!r§.init(this.§6!L§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§2"=§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§8!-§.push(§5_§.§<!v§(_loc5_,this.§`!G§.objects));
         }
         this.§!!^§.push(new §+r§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§7Z§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            _loc9_ = new §>"0§(_loc6_);
            if(!§[!q§ && _loc9_.type == §>"0§.§]"3§)
            {
               this.§<v§.push(_loc9_);
            }
            else if(_loc9_.type == §>"0§.§9!7§)
            {
               this.§@-§.push(_loc9_);
            }
         }
         if(!§[!q§)
         {
            _loc10_ = 0;
            while(_loc10_ < this.§`!G§.objects.getObjectCount())
            {
               if((_loc12_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc10_))).§^_§() && !this.isObjectNeeded(_loc12_))
               {
                  _loc12_.§+!0§(1);
               }
               else
               {
                  _loc12_.§+!0§(Number.MAX_VALUE);
               }
               _loc10_++;
            }
            _loc11_ = param1.intro[0];
            this.§="=§ = _loc11_.start;
            this.§?6§ = _loc11_.end;
            this.§ !X§ = this.§="=§;
         }
         §[!q§ = false;
         this.§>!F§ = §4Z§;
      }
      
      private function §"!!§() : void
      {
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(_loc2_.§^_§())
            {
               _loc2_.§2_§();
            }
            _loc1_++;
         }
      }
      
      public function §-!a§() : §>"0§
      {
         if(this.§<v§.length > 0)
         {
            return this.§<v§.shift();
         }
         if(this.§>!F§ == §0"?§)
         {
            return this.§@-§.shift();
         }
         if(this.§>!F§ == §'!X§ && this.§-!t§())
         {
            return this.§-!t§().§-!a§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§7a§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§>!F§ == §4Z§)
         {
            this.updateState();
         }
         else if(this.§>!F§ == §[R§)
         {
            this.§="=§ -= param1;
            _loc2_ = this.§7!T§.§'!"§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§="=§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§>!F§ == §`!$§)
         {
            this.§?6§ -= param1;
            if(this.§?6§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§>!F§ == §;!b§)
         {
            this.§4!E§(param1);
         }
         else if(this.§>!F§ == §'!X§ && this.§-!t§() is §3g§)
         {
            this.§#!"§(false);
         }
      }
      
      public function refresh(param1:§,4§) : void
      {
         var _loc2_:§9g§ = null;
         this.§`!G§ = param1;
         for each(_loc2_ in this.§?">§)
         {
            _loc2_.refresh(this.§`!G§);
         }
         this.§%!l§();
      }
      
      public function §-v§() : void
      {
         this.§+q§();
         this.§>!6§();
         this.§%!l§();
         this.updateState();
      }
      
      private function §+q§() : void
      {
         var _loc1_:§8o§ = null;
         if(this.§>!F§ == §0"?§)
         {
            for each(_loc1_ in this.§!!^§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §%!l§() : void
      {
         var _loc1_:§7!9§ = null;
         if(!(this.§-!t§() is §3g§))
         {
            for each(_loc1_ in this.§6!L§)
            {
               _loc1_.update(this.§`!G§.objects);
            }
            if(this.§?!r§)
            {
               this.§?!r§.update();
               this.§?!r§.visible = true;
            }
         }
         else
         {
            this.§?!r§.visible = false;
         }
         dispatchEvent(new §[!&§(§[!&§.§^A§));
      }
      
      private function §>!6§() : void
      {
         var _loc2_:§9g§ = null;
         var _loc3_:Boolean = false;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§?">§)
         {
            _loc3_ = _loc2_.isCompleted;
            _loc2_.isCompleted = _loc2_.update(this.§`!G§);
            if(_loc3_ != _loc2_.isCompleted)
            {
               _loc1_ = true;
            }
         }
         if(_loc1_)
         {
            dispatchEvent(new §[!&§(§[!&§.§^[§));
         }
      }
      
      public function § !R§() : void
      {
         var _loc1_:§8o§ = this.§-!r§();
         if(_loc1_)
         {
            _loc1_.§'r§();
         }
      }
      
      private function §4!E§(param1:int) : void
      {
         var _loc2_:§8o§ = this.§-!r§();
         if(_loc2_)
         {
            if(_loc2_.status == §8o§.§7!L§)
            {
               _loc2_.startCheck(this.§`!G§.§0n§);
            }
            _loc2_.update(this.§`!G§.§0n§,param1);
            if(_loc2_.status == §8o§.§"m§)
            {
               this.updateState();
               dispatchEvent(new §[!&§(§[!&§.§6B§));
            }
            else if(_loc2_.status == §8o§.§4!j§)
            {
               dispatchEvent(new §[!&§(§[!&§.§-@§));
               this.updateState();
            }
         }
      }
      
      public function §-!t§() : §9g§
      {
         var _loc1_:§9g§ = null;
         if(this.§>!F§ != §'!X§)
         {
            return null;
         }
         for each(_loc1_ in this.§?">§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §-!r§() : §8o§
      {
         var _loc1_:§8o§ = null;
         if(this.§>!F§ != §;!b§)
         {
            return null;
         }
         for each(_loc1_ in this.§!!^§)
         {
            if(_loc1_.status == §8o§.§4!d§ || _loc1_.status == §8o§.§7!L§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §#!J§() : Boolean
      {
         var _loc1_:§8o§ = null;
         for each(_loc1_ in this.§!!^§)
         {
            if(_loc1_.status != §8o§.§4!j§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§[!&§ = null;
         var _loc1_:String = §[R§;
         if(this.§="=§ > 0)
         {
            _loc1_ = §[R§;
         }
         else if(this.§?6§ > 0)
         {
            _loc1_ = §`!$§;
         }
         else if(this.§!!^§.length > 0 && this.§!!^§[0].status == §8o§.§4!d§)
         {
            _loc1_ = §;!b§;
         }
         else if(!this.§5"5§())
         {
            _loc1_ = §'!X§;
         }
         else if(!this.§#!J§())
         {
            _loc1_ = §""0§;
         }
         else
         {
            _loc1_ = §0"?§;
         }
         if(_loc1_ != this.§>!F§)
         {
            _loc2_ = this.§>!F§;
            _loc1_ = this.§+?§(this.§>!F§,_loc1_);
            if(_loc2_ == §`!$§)
            {
               this.§"!!§();
            }
            if(_loc1_ != this.§>!F§)
            {
               this.§>!F§ = _loc1_;
               _loc3_ = new §[!&§(§[!&§.§#+§);
               _loc3_.§4!2§ = _loc1_;
               _loc3_.§"!x§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §5"5§() : Boolean
      {
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §+?§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§7a§> = null;
         if(param1 == §`!$§)
         {
            _loc3_ = this.§;"+§();
         }
         return param2;
      }
      
      private function §;"+§() : Vector.<§7a§>
      {
         var _loc3_:§7a§ = null;
         var _loc1_:Vector.<§7a§> = new Vector.<§7a§>();
         var _loc2_:int = this.§`!G§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§`!G§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§7a§) : Boolean
      {
         var _loc2_:§9g§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§8!-§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§'5§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§?">§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,d§() : int
      {
         return this.§'!z§;
      }
      
      public function § !E§() : void
      {
         this.§!!^§[0].startCheck(this.§`!G§.§0n§);
         this.updateState();
      }
      
      public function §1H§() : void
      {
         this.§#E§();
      }
      
      private function §#E§() : void
      {
         var _loc1_:§7!9§ = null;
         if(this.§?!r§)
         {
            this.§?!r§.visible = false;
         }
         for each(_loc1_ in this.§6!L§)
         {
            _loc1_.activate(this.§`!G§);
         }
      }
      
      public function get §;!1§() : String
      {
         return this.§>!F§;
      }
      
      public function §9!J§() : Vector.<String>
      {
         var _loc2_:§9g§ = null;
         var _loc3_:§8o§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§?">§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §^E§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§!!^§)
         {
            _loc1_.push((_loc3_.status == §8o§.§4!j§ ? §^E§ : "") + _loc3_.description);
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
         var _loc2_:§8o§ = null;
         var _loc3_:§9g§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§%"§)
         {
            _loc1_.push(this.§%"§);
         }
         if(this.§>!F§ == §`!$§ || this.§>!F§ == §[R§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§!!^§)
         {
            if(_loc2_.status == §8o§.§4!d§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§?">§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §3g§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§9g§ = null;
         if(this.§>!F§ != §`!$§)
         {
            for each(_loc1_ in this.§?">§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§#E§();
         }
      }
      
      public function §[" §() : Vector.<§7!9§>
      {
         var _loc2_:§7!9§ = null;
         var _loc1_:Vector.<§7!9§> = new Vector.<§7!9§>();
         for each(_loc2_ in this.§6!L§)
         {
            if(_loc2_.§!9§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §=O§() : Vector.<§7!9§>
      {
         if(!this.§6!L§)
         {
            return null;
         }
         return this.§6!L§.concat();
      }
      
      public function §#!"§(param1:Boolean = true) : void
      {
         var _loc2_:§9g§ = null;
         for each(_loc2_ in this.§?">§)
         {
            if(_loc2_ is §3g§)
            {
               (_loc2_ as §3g§).§+5§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §[?§(param1:§7a§) : Boolean
      {
         if(this.§7!T§)
         {
            return this.§7!T§.§[?§(param1);
         }
         return true;
      }
      
      public function get §7!T§() : §3g§
      {
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            if(_loc1_ is §3g§)
            {
               return _loc1_ as §3g§;
            }
         }
         return null;
      }
      
      public function get §6!p§() : Boolean
      {
         if(!this.§7!T§)
         {
            return true;
         }
         return this.§7!T§.isCompleted;
      }
      
      public function §%!f§() : Rectangle
      {
         return this.§7Z§;
      }
      
      public function §[i§() : int
      {
         var _loc2_:§7a§ = null;
         var _loc3_:§9g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8!-§)
         {
            if(_loc2_.§^_§() && !_loc2_.§0"&§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§?">§)
         {
            if(_loc3_ is §3g§)
            {
               _loc1_ += (_loc3_ as §3g§).§2l§();
            }
         }
         return _loc1_;
      }
   }
}
