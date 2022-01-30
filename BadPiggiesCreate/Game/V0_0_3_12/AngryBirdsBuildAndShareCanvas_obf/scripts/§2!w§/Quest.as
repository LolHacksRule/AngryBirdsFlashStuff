package §2!w§
{
   import §!o§.§-,§;
   import §0"7§.§ !2§;
   import §1!N§.§"!k§;
   import §4!6§.§#!;§;
   import §4!6§.§1!J§;
   import §4!6§.§8!$§;
   import §4!6§.§9K§;
   import §4!6§.§@p§;
   import §4!6§.§[n§;
   import §>P§.§+#§;
   import §[B§.§"d§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §3!1§:String = "[done]";
      
      public static const §1e§:String = "None";
      
      public static const §>h§:String = "Static";
      
      public static const §,"9§:String = "Intro";
      
      public static const §'!F§:String = "Conditions";
      
      public static const §]!V§:String = "ReadyForTest";
      
      public static const §+!`§:String = "StabilityCheck";
      
      public static const §?!f§:String = "ReadyForPlay";
      
      public static var §4!8§:Boolean = false;
       
      
      private var §3!,§:Vector.<String>;
      
      private var §+f§:Vector.<String>;
      
      private var §@"$§:Vector.<§@p§>;
      
      private var §^!A§:Vector.<String>;
      
      private var §^!n§:Vector.<§[n§>;
      
      private var §,!t§:Vector.<§"!k§>;
      
      private var §]!3§:§"d§;
      
      private var §9]§:int = 0;
      
      private var §-!&§:String;
      
      private var mName:String = "";
      
      private var §^!l§:int;
      
      private var §@"4§:int;
      
      private var §8?§:Vector.<§8!g§>;
      
      private var §#!X§:§+#§;
      
      private var §2!m§:Boolean = false;
      
      private var §-!b§:Rectangle;
      
      private var §=r§:§-,§;
      
      private var §=8§:int;
      
      public function Quest(param1:§"d§, param2:Boolean = false)
      {
         this.§3!,§ = new Vector.<String>();
         this.§+f§ = new Vector.<String>();
         this.§@"$§ = new Vector.<§@p§>();
         this.§^!A§ = new Vector.<String>();
         this.§^!n§ = new Vector.<§[n§>();
         this.§,!t§ = new Vector.<§"!k§>();
         super();
         this.§]!3§ = param1;
         this.§2!m§ = param2;
      }
      
      public static function §?!,§(param1:§"d§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§@"$§.push(new §#!;§(param1));
         _loc2_.§@"$§.push(new §9K§(param1));
         return _loc2_;
      }
      
      public function get §"q§() : Boolean
      {
         return this.§2!m§;
      }
      
      public function §&!m§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§@p§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:§"!k§ = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §@p§.§[!]§(this.§]!3§,_loc2_))
            {
               this.§@"$§.push(_loc7_);
            }
         }
         this.§8?§ = new Vector.<§8!g§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§8?§.push(new §8!g§(this.§]!3§,_loc3_));
         }
         this.§#!X§ = new §+#§();
         this.§#!X§.init(this.§8?§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§^!A§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§,!t§.push(§7!s§.§5I§(_loc5_,this.§]!3§.objects));
         }
         this.§^!n§.push(new §1!J§());
         if(param1.hasOwnProperty("area"))
         {
            _loc8_ = param1.area.radius;
            this.§-!b§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
         }
         for each(_loc6_ in param1.prompt)
         {
            if(!§4!8§ && _loc6_.@type == "pre")
            {
               this.§3!,§.push(_loc6_.toString());
            }
            else if(_loc6_.@type == "post")
            {
               this.§+f§.push(_loc6_.toString());
            }
         }
         if(!§4!8§)
         {
            _loc9_ = 0;
            while(_loc9_ < this.§]!3§.objects.getObjectCount())
            {
               if((_loc11_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc9_))).§2!A§() && !this.isObjectNeeded(_loc11_))
               {
                  _loc11_.§9!F§(1);
               }
               else
               {
                  _loc11_.§9!F§(Number.MAX_VALUE);
               }
               _loc9_++;
            }
            _loc10_ = param1.intro[0];
            this.§^!l§ = _loc10_.start;
            this.§@"4§ = _loc10_.end;
            this.§=8§ = this.§^!l§;
         }
         §4!8§ = false;
         this.§-!&§ = §1e§;
      }
      
      private function §]"5§() : void
      {
         var _loc2_:§"!k§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!3§.objects.getObjectCount())
         {
            _loc2_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc1_));
            if(_loc2_.§2!A§())
            {
               _loc2_.§1!g§();
            }
            _loc1_++;
         }
      }
      
      public function §"M§() : String
      {
         if(this.§3!,§.length > 0)
         {
            return this.§3!,§.shift();
         }
         if(this.§-!&§ == §?!f§)
         {
            return this.§+f§.shift();
         }
         if(this.§-!&§ == §'!F§ && this.§;!!§())
         {
            return this.§;!!§().§"M§();
         }
         return null;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§"!k§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-!&§ == §1e§)
         {
            this.updateState();
         }
         else if(this.§-!&§ == §>h§)
         {
            this.§^!l§ -= param1;
            _loc2_ = this.§#W§.§8&§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§^!l§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§-!&§ == §,"9§)
         {
            this.§@"4§ -= param1;
            if(this.§@"4§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§-!&§ == §+!`§)
         {
            this.§!$§(param1);
         }
         else if(this.§-!&§ == §'!F§ && this.§;!!§() is §8!$§)
         {
            this.§[3§(false);
         }
      }
      
      public function refresh(param1:§"d§) : void
      {
         var _loc2_:§@p§ = null;
         this.§]!3§ = param1;
         for each(_loc2_ in this.§@"$§)
         {
            _loc2_.refresh(this.§]!3§);
         }
         this.§]T§();
      }
      
      public function §"!§() : void
      {
         this.§9w§();
         this.§]G§();
         this.§]T§();
         this.updateState();
      }
      
      private function §9w§() : void
      {
         var _loc1_:§[n§ = null;
         if(this.§-!&§ == §?!f§)
         {
            for each(_loc1_ in this.§^!n§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §]T§() : void
      {
         var _loc1_:§8!g§ = null;
         if(!(this.§;!!§() is §8!$§))
         {
            for each(_loc1_ in this.§8?§)
            {
               _loc1_.update(this.§]!3§.objects);
            }
            if(this.§#!X§)
            {
               this.§#!X§.update();
               this.§#!X§.visible = true;
            }
         }
         else
         {
            this.§#!X§.visible = false;
         }
         dispatchEvent(new § !2§(§ !2§.§3G§));
      }
      
      private function §]G§() : void
      {
         var _loc1_:§@p§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§@"$§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§]!3§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new § !2§(§ !2§.§6@§));
            }
         }
      }
      
      public function §]" §() : void
      {
         var _loc1_:§[n§ = this.§!!E§();
         if(_loc1_)
         {
            _loc1_.§3!5§();
         }
      }
      
      private function §!$§(param1:int) : void
      {
         var _loc2_:§[n§ = this.§!!E§();
         if(_loc2_)
         {
            if(_loc2_.status == §[n§.§!y§)
            {
               _loc2_.startCheck(this.§]!3§.§2![§);
            }
            _loc2_.update(this.§]!3§.§2![§,param1);
            if(_loc2_.status == §[n§.§%g§)
            {
               this.updateState();
               dispatchEvent(new § !2§(§ !2§.§'!N§));
            }
            else if(_loc2_.status == §[n§.§3^§)
            {
               dispatchEvent(new § !2§(§ !2§.§0!?§));
               this.updateState();
            }
         }
      }
      
      public function §;!!§() : §@p§
      {
         var _loc1_:§@p§ = null;
         if(this.§-!&§ != §'!F§)
         {
            return null;
         }
         for each(_loc1_ in this.§@"$§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §!!E§() : §[n§
      {
         var _loc1_:§[n§ = null;
         if(this.§-!&§ != §+!`§)
         {
            return null;
         }
         for each(_loc1_ in this.§^!n§)
         {
            if(_loc1_.status == §[n§.§`!>§ || _loc1_.status == §[n§.§!y§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function native() : Boolean
      {
         var _loc1_:§[n§ = null;
         for each(_loc1_ in this.§^!n§)
         {
            if(_loc1_.status != §[n§.§3^§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§ !2§ = null;
         var _loc1_:String = §>h§;
         if(this.§^!l§ > 0)
         {
            _loc1_ = §>h§;
         }
         else if(this.§@"4§ > 0)
         {
            _loc1_ = §,"9§;
         }
         else if(this.§^!n§.length > 0 && this.§^!n§[0].status == §[n§.§`!>§)
         {
            _loc1_ = §+!`§;
         }
         else if(!this.§7!w§())
         {
            _loc1_ = §'!F§;
         }
         else if(!this.native())
         {
            _loc1_ = §]!V§;
         }
         else
         {
            _loc1_ = §?!f§;
         }
         if(_loc1_ != this.§-!&§)
         {
            _loc2_ = this.§-!&§;
            _loc1_ = this.§9">§(this.§-!&§,_loc1_);
            if(_loc2_ == §,"9§)
            {
               this.§]"5§();
            }
            if(_loc1_ != this.§-!&§)
            {
               this.§-!&§ = _loc1_;
               _loc3_ = new § !2§(§ !2§.§=";§);
               _loc3_.§0f§ = _loc1_;
               _loc3_.§'!q§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §7!w§() : Boolean
      {
         var _loc1_:§@p§ = null;
         for each(_loc1_ in this.§@"$§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §9">§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§"!k§> = null;
         if(param1 == §,"9§)
         {
            _loc3_ = this.§3!`§();
         }
         return param2;
      }
      
      private function §3!`§() : Vector.<§"!k§>
      {
         var _loc3_:§"!k§ = null;
         var _loc1_:Vector.<§"!k§> = new Vector.<§"!k§>();
         var _loc2_:int = this.§]!3§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §"!k§.§2"5§(this.§]!3§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§]!3§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§"!k§) : Boolean
      {
         var _loc2_:§@p§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§,!t§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§&!d§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§@"$§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+!8§() : int
      {
         return this.§9]§;
      }
      
      public function §0!#§() : void
      {
         this.§^!n§[0].startCheck(this.§]!3§.§2![§);
         this.updateState();
      }
      
      public function §6?§() : void
      {
         this.§<!C§();
      }
      
      private function §<!C§() : void
      {
         var _loc1_:§8!g§ = null;
         if(this.§#!X§)
         {
            this.§#!X§.visible = false;
         }
         for each(_loc1_ in this.§8?§)
         {
            _loc1_.activate(this.§]!3§);
         }
      }
      
      public function get §=t§() : String
      {
         return this.§-!&§;
      }
      
      public function §`"3§() : Vector.<String>
      {
         var _loc2_:§@p§ = null;
         var _loc3_:§[n§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§@"$§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §3!1§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§^!n§)
         {
            _loc1_.push((_loc3_.status == §[n§.§3^§ ? §3!1§ : "") + _loc3_.description);
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
         var _loc2_:§[n§ = null;
         var _loc3_:§@p§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§=r§)
         {
            _loc1_.push(this.§=r§);
         }
         if(this.§-!&§ == §,"9§ || this.§-!&§ == §>h§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§^!n§)
         {
            if(_loc2_.status == §[n§.§`!>§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§@"$§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §8!$§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@p§ = null;
         for each(_loc1_ in this.§@"$§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§@p§ = null;
         if(this.§-!&§ != §,"9§)
         {
            for each(_loc1_ in this.§@"$§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§<!C§();
         }
      }
      
      public function §8!S§() : Vector.<§8!g§>
      {
         var _loc2_:§8!g§ = null;
         var _loc1_:Vector.<§8!g§> = new Vector.<§8!g§>();
         for each(_loc2_ in this.§8?§)
         {
            if(_loc2_.§!! §)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §;F§() : Vector.<§8!g§>
      {
         if(!this.§8?§)
         {
            return null;
         }
         return this.§8?§.concat();
      }
      
      public function §[3§(param1:Boolean = true) : void
      {
         var _loc2_:§@p§ = null;
         for each(_loc2_ in this.§@"$§)
         {
            if(_loc2_ is §8!$§)
            {
               (_loc2_ as §8!$§).§7!2§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§@p§ = null;
         for each(_loc1_ in this.§@"$§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function §%§(param1:§"!k§) : Boolean
      {
         if(this.§#W§)
         {
            return this.§#W§.§%§(param1);
         }
         return true;
      }
      
      public function get §#W§() : §8!$§
      {
         var _loc1_:§@p§ = null;
         for each(_loc1_ in this.§@"$§)
         {
            if(_loc1_ is §8!$§)
            {
               return _loc1_ as §8!$§;
            }
         }
         return null;
      }
      
      public function get §%!0§() : Boolean
      {
         if(!this.§#W§)
         {
            return true;
         }
         return this.§#W§.isCompleted;
      }
      
      public function §'!M§() : Rectangle
      {
         return this.§-!b§;
      }
      
      public function §>]§() : int
      {
         var _loc2_:§"!k§ = null;
         var _loc3_:§@p§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!t§)
         {
            if(_loc2_.§2!A§() && !_loc2_.§1"&§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§@"$§)
         {
            if(_loc3_ is §8!$§)
            {
               _loc1_ += (_loc3_ as §8!$§).§<! §();
            }
         }
         return _loc1_;
      }
   }
}
