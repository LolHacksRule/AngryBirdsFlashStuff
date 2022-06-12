package §&"8§
{
   import §%%§.§7!O§;
   import §;!A§.§9!U§;
   import §=b§.§-!K§;
   import §]!]§.§5]§;
   import §`q§.§ ![§;
   import §`q§.§#!t§;
   import §`q§.§;d§;
   import §`q§.§;k§;
   import §`q§.§>!N§;
   import §`q§.§[!Q§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import §try§.§#!c§;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §%!I§:String = "[done]";
      
      public static const §2!U§:String = "None";
      
      public static const §return§:String = "Static";
      
      public static const §,h§:String = "Intro";
      
      public static const §1!$§:String = "Conditions";
      
      public static const §]g§:String = "ReadyForTest";
      
      public static const §??§:String = "StabilityCheck";
      
      public static const §-9§:String = "ReadyForPlay";
      
      public static var §3x§:Boolean = false;
       
      
      private var §`!^§:Vector.<§;d§>;
      
      private var §;!0§:Vector.<String>;
      
      private var §7!j§:Vector.<§ ![§>;
      
      private var §6!Y§:Vector.<§7!O§>;
      
      private var §;!x§:§-!K§;
      
      private var §<y§:int = 0;
      
      private var §4C§:String;
      
      private var mName:String = "";
      
      private var §?!v§:int;
      
      private var §%e§:int;
      
      private var §#Z§:Vector.<§]T§>;
      
      private var §?!W§:§#!c§;
      
      private var §6!S§:Boolean = false;
      
      private var §>i§:Rectangle;
      
      private var §`!v§:§5]§;
      
      private var §'+§:int;
      
      public function Quest(param1:§-!K§, param2:Boolean = false)
      {
         this.§`!^§ = new Vector.<§;d§>();
         this.§;!0§ = new Vector.<String>();
         this.§7!j§ = new Vector.<§ ![§>();
         this.§6!Y§ = new Vector.<§7!O§>();
         super();
         this.§;!x§ = param1;
         this.§6!S§ = param2;
      }
      
      public static function §>!=§(param1:§-!K§) : Quest
      {
         var _loc2_:Quest = new Quest(param1,true);
         _loc2_.§`!^§.push(new §;k§(param1));
         _loc2_.§`!^§.push(new §[!Q§(param1));
         return _loc2_;
      }
      
      public function get §+!u§() : Boolean
      {
         return this.§6!S§;
      }
      
      public function §^!<§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:§;d§ = null;
         var _loc8_:§7!O§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:XML = null;
         this.mName = param1.@name;
         for each(_loc2_ in param1.step)
         {
            if(_loc7_ = §;d§.§do §(this.§;!x§,_loc2_))
            {
               this.§`!^§.push(_loc7_);
            }
         }
         this.§#Z§ = new Vector.<§]T§>();
         for each(_loc3_ in param1.surprise)
         {
            this.§#Z§.push(new §]T§(this.§;!x§,_loc3_));
         }
         this.§?!W§ = new §#!c§();
         this.§?!W§.init(this.§#Z§);
         for each(_loc4_ in param1.persistent.type)
         {
            this.§;!0§.push(_loc4_);
         }
         for each(_loc5_ in param1.persistent.object)
         {
            this.§6!Y§.push(§]!0§.§,!L§(_loc5_,this.§;!x§.objects));
         }
         this.§7!j§.push(new §>!N§());
         _loc6_ = 0;
         while(_loc6_ < this.§;!x§.objects.getObjectCount())
         {
            if((_loc8_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc6_))).§#!y§() && !this.isObjectNeeded(_loc8_))
            {
               _loc8_.§<6§(1);
            }
            else
            {
               _loc8_.§<6§(Number.MAX_VALUE);
            }
            _loc6_++;
         }
         if(param1.hasOwnProperty("area"))
         {
            _loc9_ = param1.area.radius;
            this.§>i§ = new Rectangle(param1.area.x - _loc9_,param1.area.y - _loc9_,2 * _loc9_,2 * _loc9_);
         }
         if(§3x§)
         {
            this.§4C§ = §2!U§;
            this.§"§();
         }
         else
         {
            _loc10_ = param1.intro[0];
            this.§4C§ = §return§;
            this.§?!v§ = _loc10_.start;
            this.§%e§ = _loc10_.end;
            this.§'+§ = this.§?!v§;
         }
         §3x§ = false;
      }
      
      private function §%!>§() : void
      {
         var _loc2_:§7!O§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!x§.objects.getObjectCount())
         {
            _loc2_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc1_));
            if(_loc2_.§#!y§())
            {
               _loc2_.§-!n§();
            }
            _loc1_++;
         }
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<§7!O§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§4C§ == §return§)
         {
            this.§?!v§ -= param1;
            _loc2_ = this.§]E§.§>!q§();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc2_[_loc4_].visible = _loc4_ < _loc3_;
               _loc4_++;
            }
            if(this.§?!v§ <= -1000)
            {
               this.updateState();
            }
         }
         else if(this.§4C§ == §,h§)
         {
            this.§%e§ -= param1;
            if(this.§%e§ <= 0)
            {
               this.updateState();
            }
         }
         else if(this.§4C§ == §??§)
         {
            this.§=P§(param1);
         }
         else if(this.§4C§ == §1!$§ && this.§>!n§() is §#!t§)
         {
            this.§+!1§(false);
         }
      }
      
      public function refresh(param1:§-!K§) : void
      {
         var _loc2_:§;d§ = null;
         this.§;!x§ = param1;
         for each(_loc2_ in this.§`!^§)
         {
            _loc2_.refresh(this.§;!x§);
         }
         this.§6"$§();
      }
      
      public function §"§() : void
      {
         this.§[!;§();
         this.§0k§();
         this.§6"$§();
         this.updateState();
      }
      
      private function §[!;§() : void
      {
         var _loc1_:§ ![§ = null;
         if(this.§4C§ == §-9§)
         {
            for each(_loc1_ in this.§7!j§)
            {
               _loc1_.reset();
            }
         }
      }
      
      private function §6"$§() : void
      {
         var _loc1_:§]T§ = null;
         if(!(this.§>!n§() is §#!t§))
         {
            for each(_loc1_ in this.§#Z§)
            {
               _loc1_.update(this.§;!x§.objects);
            }
            this.§?!W§.update();
            this.§?!W§.visible = true;
         }
         else
         {
            this.§?!W§.visible = false;
         }
         dispatchEvent(new §9!U§(§9!U§.§2!;§));
      }
      
      private function §0k§() : void
      {
         var _loc1_:§;d§ = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this.§`!^§)
         {
            _loc2_ = _loc1_.isCompleted;
            _loc1_.isCompleted = _loc1_.update(this.§;!x§);
            if(_loc2_ != _loc1_.isCompleted)
            {
               dispatchEvent(new §9!U§(§9!U§.§,!h§));
            }
         }
      }
      
      public function §,!I§() : void
      {
         var _loc1_:§ ![§ = this.§`!"§();
         if(_loc1_)
         {
            _loc1_.§#o§();
         }
      }
      
      private function §=P§(param1:int) : void
      {
         var _loc2_:§ ![§ = this.§`!"§();
         if(_loc2_)
         {
            if(_loc2_.status == § ![§.§`9§)
            {
               _loc2_.startCheck(this.§;!x§.§00§);
            }
            _loc2_.update(this.§;!x§.§00§,param1);
            if(_loc2_.status == § ![§.§!",§)
            {
               this.updateState();
               dispatchEvent(new §9!U§(§9!U§.§2!x§));
            }
            else if(_loc2_.status == § ![§.§%f§)
            {
               dispatchEvent(new §9!U§(§9!U§.§=!u§));
               this.updateState();
            }
         }
      }
      
      public function §>!n§() : §;d§
      {
         var _loc1_:§;d§ = null;
         if(this.§4C§ != §1!$§)
         {
            return null;
         }
         for each(_loc1_ in this.§`!^§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §`!"§() : § ![§
      {
         var _loc1_:§ ![§ = null;
         if(this.§4C§ != §??§)
         {
            return null;
         }
         for each(_loc1_ in this.§7!j§)
         {
            if(_loc1_.status == § ![§.§]!q§ || _loc1_.status == § ![§.§`9§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §8!l§() : Boolean
      {
         var _loc1_:§ ![§ = null;
         for each(_loc1_ in this.§7!j§)
         {
            if(_loc1_.status != § ![§.§%f§)
            {
               return false;
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc2_:String = null;
         var _loc3_:§9!U§ = null;
         var _loc1_:String = §return§;
         if(this.§?!v§ > 0)
         {
            _loc1_ = §return§;
         }
         else if(this.§%e§ > 0)
         {
            _loc1_ = §,h§;
         }
         else if(this.§7!j§.length > 0 && this.§7!j§[0].status == § ![§.§]!q§)
         {
            _loc1_ = §??§;
         }
         else if(!this.§!!?§())
         {
            _loc1_ = §1!$§;
         }
         else if(!this.§8!l§())
         {
            _loc1_ = §]g§;
         }
         else
         {
            _loc1_ = §-9§;
         }
         if(_loc1_ != this.§4C§)
         {
            _loc2_ = this.§4C§;
            _loc1_ = this.§7!"§(this.§4C§,_loc1_);
            if(_loc2_ == §,h§)
            {
               this.§%!>§();
            }
            if(_loc1_ != this.§4C§)
            {
               this.§4C§ = _loc1_;
               _loc3_ = new §9!U§(§9!U§.§!R§);
               _loc3_.§#K§ = _loc1_;
               _loc3_.§5!o§ = _loc2_;
               dispatchEvent(_loc3_);
            }
         }
      }
      
      private function §!!?§() : Boolean
      {
         var _loc1_:§;d§ = null;
         for each(_loc1_ in this.§`!^§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §7!"§(param1:String, param2:String) : String
      {
         var _loc3_:Vector.<§7!O§> = null;
         if(param1 == §,h§)
         {
            _loc3_ = this.§>!X§();
         }
         return param2;
      }
      
      private function §>!X§() : Vector.<§7!O§>
      {
         var _loc3_:§7!O§ = null;
         var _loc1_:Vector.<§7!O§> = new Vector.<§7!O§>();
         var _loc2_:int = this.§;!x§.objects.getObjectCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §7!O§.§-n§(this.§;!x§.objects.getObject(_loc2_));
            if(!_loc3_.isGround() && !this.isObjectNeeded(_loc3_))
            {
               _loc1_.push(_loc3_);
               this.§;!x§.objects.removeObject(_loc3_.getObject(),false,true);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§7!O§) : Boolean
      {
         var _loc2_:§;d§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(this.§6!Y§.indexOf(param1) != -1)
         {
            return true;
         }
         if(param1.isTexture() || param1.isGround())
         {
            return true;
         }
         if(param1.§@!j§() && param1.uniqueID == "")
         {
            return true;
         }
         for each(_loc2_ in this.§`!^§)
         {
            if(_loc2_.isObjectNeeded(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9!3§() : int
      {
         return this.§<y§;
      }
      
      public function §8!w§() : void
      {
         this.§7!j§[0].startCheck(this.§;!x§.§00§);
         this.updateState();
      }
      
      public function §=V§() : void
      {
         this.§!"6§();
      }
      
      private function §!"6§() : void
      {
         var _loc1_:§]T§ = null;
         this.§?!W§.visible = false;
         for each(_loc1_ in this.§#Z§)
         {
            _loc1_.activate(this.§;!x§);
         }
      }
      
      public function get §"K§() : String
      {
         return this.§4C§;
      }
      
      public function §>!^§() : Vector.<String>
      {
         var _loc2_:§;d§ = null;
         var _loc3_:§ ![§ = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§`!^§)
         {
            _loc4_ = _loc2_.description;
            if(_loc2_.isCompleted)
            {
               _loc4_ = §%!I§ + _loc4_;
            }
            _loc1_.push(_loc4_);
         }
         for each(_loc3_ in this.§7!j§)
         {
            _loc1_.push((_loc3_.status == § ![§.§%f§ ? §%!I§ : "") + _loc3_.description);
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
         var _loc2_:§ ![§ = null;
         var _loc3_:§;d§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(this.§`!v§)
         {
            _loc1_.push(this.§`!v§);
         }
         if(this.§4C§ == §,h§ || this.§4C§ == §return§)
         {
            return _loc1_;
         }
         for each(_loc2_ in this.§7!j§)
         {
            if(_loc2_.status == § ![§.§]!q§)
            {
               _loc1_ = _loc1_.concat(_loc2_.getHUDs());
            }
         }
         for each(_loc3_ in this.§`!^§)
         {
            _loc1_ = _loc1_.concat(_loc3_.getHUDs());
            if(_loc3_ is §#!t§ && !_loc3_.isCompleted)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;d§ = null;
         for each(_loc1_ in this.§`!^§)
         {
            _loc1_.dispose();
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc1_:§;d§ = null;
         if(this.§4C§ != §,h§)
         {
            for each(_loc1_ in this.§`!^§)
            {
               _loc1_.onPhysicsEnabled();
            }
            this.§!"6§();
         }
      }
      
      public function §?",§() : Vector.<§]T§>
      {
         var _loc2_:§]T§ = null;
         var _loc1_:Vector.<§]T§> = new Vector.<§]T§>();
         for each(_loc2_ in this.§#Z§)
         {
            if(_loc2_.§;m§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §2!h§() : Vector.<§]T§>
      {
         return this.§#Z§.concat();
      }
      
      public function §+!1§(param1:Boolean = true) : void
      {
         var _loc2_:§;d§ = null;
         for each(_loc2_ in this.§`!^§)
         {
            if(_loc2_ is §#!t§)
            {
               (_loc2_ as §#!t§).§1X§(param1);
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§;d§ = null;
         for each(_loc1_ in this.§`!^§)
         {
            if(!_loc1_.isCompleted)
            {
               return _loc1_.getNextInstruction();
            }
         }
         return null;
      }
      
      public function canObjectBeModified(param1:§7!O§) : Boolean
      {
         return this.§]E§.canObjectBeModified(param1);
      }
      
      public function get §]E§() : §#!t§
      {
         var _loc1_:§;d§ = null;
         for each(_loc1_ in this.§`!^§)
         {
            if(_loc1_ is §#!t§)
            {
               return _loc1_ as §#!t§;
            }
         }
         return null;
      }
      
      public function get §%" §() : Boolean
      {
         return this.§]E§.isCompleted;
      }
      
      public function §?"6§() : Rectangle
      {
         return this.§>i§;
      }
      
      public function §>w§() : int
      {
         var _loc2_:§7!O§ = null;
         var _loc3_:§;d§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6!Y§)
         {
            if(_loc2_.§#!y§() && !_loc2_.§1!"§())
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.§`!^§)
         {
            if(_loc3_ is §#!t§)
            {
               _loc1_ += (_loc3_ as §#!t§).§]z§();
            }
         }
         return _loc1_;
      }
   }
}
