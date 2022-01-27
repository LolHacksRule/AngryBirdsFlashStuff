package §"O§
{
   import § "4§.§7q§;
   import §!"W§.§##L§;
   import §"a§.§6#!§;
   import §#!'§.§6"]§;
   import §'"E§.§8d§;
   import §,"N§.§@#B§;
   import §-!_§.§,#Q§;
   import §6!H§.§,#E§;
   import §;"3§.§+H§;
   import §;#Q§.§6!Y§;
   import §?m§.§,"X§;
   import §?m§.§3![§;
   import §^#>§.§15§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §"K§ extends EventDispatcher
   {
       
      
      private var §'#G§:Dictionary;
      
      private var §28§:§8d§;
      
      private var §?"v§:Number;
      
      private var §7"%§:Vector.<§^-§>;
      
      private var § "1§:Vector.<§8d§>;
      
      private var §#"K§:Vector.<§8d§>;
      
      private var §'#7§:Boolean;
      
      private var §[!X§:Boolean;
      
      private var §4"s§:§6!Y§;
      
      private var §4#J§:§@#B§;
      
      private var §">§:§7q§;
      
      private var §+!b§:§,"X§;
      
      public function §"K§(param1:§@#B§, param2:§,"X§)
      {
         super();
         this.§4#J§ = param1;
         this.§">§ = §7q§(this.§4#J§.userProgress);
         this.§+!b§ = param2;
         this.init();
      }
      
      public function get §^##§() : int
      {
         return this.§7"%§.length;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§4"s§ != null;
      }
      
      protected function init() : void
      {
         this.§'#7§ = true;
         this.§[!X§ = false;
         this.§?"v§ = -1;
         this.§28§ = null;
         this.§ "1§ = new Vector.<§8d§>(0);
         this.§7"%§ = new Vector.<§^-§>();
         this.§'#G§ = new Dictionary();
         this.§#"K§ = new Vector.<§8d§>(0);
      }
      
      public function dispose() : void
      {
         var _loc1_:§6#!§ = §,!q§.§>k§ as §6#!§;
         if(_loc1_)
         {
            _loc1_.mouseEnabled = true;
         }
         this.§?"v§ = -1;
         this.§28§ = null;
         this.§ "1§.length = 0;
         this.§7"%§.length = 0;
         this.§'#G§ = null;
         this.§#"K§.length = 0;
      }
      
      public function reset() : void
      {
         this.§7"%§.length = 0;
         if(this.§4"s§)
         {
            this.§">§.removeEventListener(§##L§.§0"5§,this.§2"C§);
            this.§">§.§"!1§(this.§4"s§);
         }
         this.§4"s§ = null;
      }
      
      public function §&"]§(param1:§8d§) : void
      {
         this.§'#G§[param1.id] = param1;
      }
      
      public function updateWithTime(param1:Number) : void
      {
         if(this.§?"v§ > 0)
         {
            this.§?"v§ -= param1;
            if(this.§?"v§ <= 0)
            {
               this.§],§();
            }
         }
         this.§8Y§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:§8d§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"K§.length)
         {
            _loc2_ = this.§#"K§[_loc3_];
            if(_loc2_.§6#A§ == §,#E§.§<#Q§)
            {
               _loc2_.§%"L§(param1);
            }
            _loc3_++;
         }
         if(this.§#"K§.length >= 1)
         {
            this.§5"_§();
         }
      }
      
      public function §6!4§() : Boolean
      {
         if(this.§#"K§.length >= 1)
         {
            return true;
         }
         return false;
      }
      
      public function §0"[§(param1:String) : void
      {
         if(!this.§'#G§[param1])
         {
            throw new Error("NO REGISTERED POWERUP FOUND WITH ID: " + param1);
         }
         this.§!!^§(param1);
      }
      
      protected function §!!^§(param1:String) : void
      {
         this.§[!X§ = true;
         this.§%z§(this.§'#7§);
         var _loc2_:§8d§ = this.§'#G§[param1];
         this.§&"T§(_loc2_);
         var _loc3_:int = §8"f§(§,!q§.§9!,§).§2!o§();
         var _loc4_:§^-§ = new §^-§(param1,_loc3_);
         if(this.§4"s§ != null)
         {
            this.§7"%§.push(_loc4_);
         }
         else
         {
            this.§""8§(_loc4_);
         }
         this.§4#J§.§]"<§.§0"[§(param1);
         §8"f§(§,!q§.§9!,§).§0"[§(param1);
         §6"]§.§?!h§(param1,this.§+!b§.currentLevelNumericName,this.§4#J§.§4"Z§.§,#a§(param1));
      }
      
      protected function §],§() : void
      {
         var _loc2_:§8d§ = null;
         this.§[!X§ = false;
         var _loc1_:String = this.§28§.id;
         this.§28§.execute();
         if(this.§28§.§6#A§ != §,#E§.§3#I§)
         {
            this.§#"K§.push(this.§28§);
         }
         this.§28§ = null;
         if(this.§#"K§.length == 0)
         {
            this.§%z§(true);
         }
         (§,!q§.§>k§ as §6#!§).mouseEnabled = true;
         dispatchEvent(new §+H§(§+H§.§["_§,_loc1_));
         if(this.§ "1§.length > 0)
         {
            _loc2_ = this.§ "1§.shift();
            this.§&"T§(_loc2_);
         }
      }
      
      protected function §8Y§(param1:Number) : void
      {
         var _loc2_:§8d§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"K§.length)
         {
            _loc2_ = this.§#"K§[_loc3_];
            if(_loc2_.§6#A§ == §,#E§.§&X§)
            {
               _loc2_.updateTimeStep(param1);
            }
            _loc3_++;
         }
         if(this.§#"K§.length >= 1)
         {
            this.§5"_§();
         }
      }
      
      private function §5"_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:int = this.§#"K§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§#"K§[_loc2_].isComplete)
            {
               this.§#"K§.splice(_loc2_,1);
            }
            else if(!this.§#"K§[_loc2_].allowNextPowerUp)
            {
               _loc1_ = false;
            }
            _loc2_--;
         }
         this.§%z§(_loc1_);
      }
      
      private function §%z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = this.§'#7§;
         this.§'#7§ = param1 && !this.§[!X§;
         if(_loc2_ != this.§'#7§)
         {
            dispatchEvent(new §+H§(§+H§.§=Z§,"",this.§'#7§));
         }
      }
      
      private function §&"T§(param1:§8d§) : void
      {
         if(this.§28§ != null)
         {
            this.§ "1§.push(param1);
         }
         else
         {
            this.§28§ = param1;
            (§,!q§.§>k§ as §6#!§).mouseEnabled = false;
            this.§?"v§ = §15§.§""Q§;
            §,!q§.§9!,§.camera.setAction(!!param1.§7"U§ ? int(§,#Q§.§@#G§) : int(§,#Q§.§+!v§));
         }
      }
      
      protected function §""8§(param1:§^-§) : void
      {
         var _loc2_:String = this.§+!b§.currentLevel;
         var _loc3_:§3![§ = this.§+!b§.getEpisodeForLevel(_loc2_);
         var _loc4_:String = !!_loc3_ ? _loc3_.name : "unknownEpisode";
         var _loc5_:String = (_loc3_.getLevelIndex(_loc2_) + 1).toString();
         var _loc6_:int;
         if((_loc6_ = §@#B§(§4#;§.singleton.dataModel).§!!C§.levelNames.indexOf(_loc2_)) > -1)
         {
            _loc5_ = (_loc6_ + 1).toString();
         }
         this.§">§.addEventListener(§##L§.§0"5§,this.§2"C§);
         this.§4"s§ = this.§">§.§7# §(param1.§'"4§,_loc2_,_loc4_,_loc5_,param1.§>!;§);
      }
      
      protected function §2"C§(param1:§##L§) : void
      {
         var _loc2_:§^-§ = null;
         this.§">§.removeEventListener(§##L§.§0"5§,this.§2"C§);
         this.§4"s§ = null;
         if(!param1.§;K§)
         {
            throw new Error("Powerup[" + param1.itemID + "] usage not allowed according to server response!");
         }
         if(this.§7"%§.length > 0)
         {
            _loc2_ = this.§7"%§.shift();
            this.§""8§(_loc2_);
         }
         else
         {
            dispatchEvent(new §+H§(§+H§.§6p§,param1.itemID));
         }
      }
   }
}
