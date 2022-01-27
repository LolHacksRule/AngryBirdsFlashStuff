package §="8§
{
   import §"!P§.§3G§;
   import §,#+§.§ "0§;
   import §,#+§.§;"y§;
   import §0R§.§0!8§;
   import §1!o§.§;!J§;
   import §5!q§.§6"@§;
   import §5!q§.§>o§;
   import §5i§.§+M§;
   import §@##§.§]"C§;
   import §@b§.§&M§;
   import §]!=§.§;"I§;
   import §]"o§.§8!l§;
   import §^"H§.§'§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §'!U§ extends EventDispatcher
   {
       
      
      private var §0A§:Dictionary;
      
      private var §0!]§:§'#1§;
      
      private var §=!K§:Number;
      
      private var §>#§:Vector.<§[!T§>;
      
      private var §4#1§:Vector.<§'#1§>;
      
      private var §@#4§:Vector.<§'#1§>;
      
      private var §?J§:Boolean;
      
      private var §'!K§:Boolean;
      
      private var §,"#§:§]"C§;
      
      private var §]S§:§-!w§;
      
      private var §+"v§:§3G§;
      
      private var § !p§:§;"y§;
      
      public function §'!U§(param1:§-!w§, param2:§;"y§)
      {
         super();
         this.§]S§ = param1;
         this.§+"v§ = §3G§(this.§]S§.userProgress);
         this.§ !p§ = param2;
         this.init();
      }
      
      public function get §;!D§() : int
      {
         return this.§>#§.length;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§,"#§ != null;
      }
      
      protected function init() : void
      {
         this.§?J§ = true;
         this.§'!K§ = false;
         this.§=!K§ = -1;
         this.§0!]§ = null;
         this.§4#1§ = new Vector.<§'#1§>(0);
         this.§>#§ = new Vector.<§[!T§>();
         this.§0A§ = new Dictionary();
         this.§@#4§ = new Vector.<§'#1§>(0);
      }
      
      public function dispose() : void
      {
         var _loc1_:§;"I§ = §;!e§.§%e§ as §;"I§;
         if(_loc1_)
         {
            _loc1_.mouseEnabled = true;
         }
         this.§=!K§ = -1;
         this.§0!]§ = null;
         this.§4#1§.length = 0;
         this.§>#§.length = 0;
         this.§0A§ = null;
         this.§@#4§.length = 0;
      }
      
      public function reset() : void
      {
         this.§>#§.length = 0;
         if(this.§,"#§)
         {
            this.§+"v§.removeEventListener(§;!J§.§``§,this.§!";§);
            this.§+"v§.§%"=§(this.§,"#§);
         }
         this.§,"#§ = null;
      }
      
      public function §0!R§(param1:§'#1§) : void
      {
         this.§0A§[param1.id] = param1;
      }
      
      public function updateWithTime(param1:Number) : void
      {
         if(this.§=!K§ > 0)
         {
            this.§=!K§ -= param1;
            if(this.§=!K§ <= 0)
            {
               this.§'!T§();
            }
         }
         this.§^^§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:§'#1§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§@#4§.length)
         {
            _loc2_ = this.§@#4§[_loc3_];
            if(_loc2_.§'!_§ == §&M§.§["K§)
            {
               _loc2_.§<!z§(param1);
            }
            _loc3_++;
         }
         if(this.§@#4§.length >= 1)
         {
            this.§>"M§();
         }
      }
      
      public function §4"9§() : Boolean
      {
         if(this.§@#4§.length >= 1)
         {
            return true;
         }
         return false;
      }
      
      public function §8"E§(param1:String) : void
      {
         if(!this.§0A§[param1])
         {
            throw new Error("NO REGISTERED POWERUP FOUND WITH ID: " + param1);
         }
         this.§-#"§(param1);
      }
      
      protected function §-#"§(param1:String) : void
      {
         this.§'!K§ = true;
         this.§>>§(this.§?J§);
         var _loc2_:§'#1§ = this.§0A§[param1];
         this.§"#,§(_loc2_);
         var _loc3_:int = §6"@§(§;!e§.§<x§).§]"4§();
         var _loc4_:§[!T§ = new §[!T§(param1,_loc3_);
         if(this.§,"#§ != null)
         {
            this.§>#§.push(_loc4_);
         }
         else
         {
            this.§^E§(_loc4_);
         }
         this.§]S§.§=>§.§8"E§(param1);
         §6"@§(§;!e§.§<x§).§8"E§(param1);
         §0!8§.§7!_§(param1,this.§ !p§.currentLevelNumericName,this.§]S§.§?v§.§#%§(param1));
      }
      
      protected function §'!T§() : void
      {
         var _loc2_:§'#1§ = null;
         this.§'!K§ = false;
         var _loc1_:String = this.§0!]§.id;
         this.§0!]§.execute();
         if(this.§0!]§.§'!_§ != §&M§.§@!8§)
         {
            this.§@#4§.push(this.§0!]§);
         }
         this.§0!]§ = null;
         if(this.§@#4§.length == 0)
         {
            this.§>>§(true);
         }
         (§;!e§.§%e§ as §;"I§).mouseEnabled = true;
         dispatchEvent(new §8!l§(§8!l§.§7"[§,_loc1_));
         if(this.§4#1§.length > 0)
         {
            _loc2_ = this.§4#1§.shift();
            this.§"#,§(_loc2_);
         }
      }
      
      protected function §^^§(param1:Number) : void
      {
         var _loc2_:§'#1§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§@#4§.length)
         {
            _loc2_ = this.§@#4§[_loc3_];
            if(_loc2_.§'!_§ == §&M§.§="6§)
            {
               _loc2_.updateTimeStep(param1);
            }
            _loc3_++;
         }
         if(this.§@#4§.length >= 1)
         {
            this.§>"M§();
         }
      }
      
      private function §>"M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:int = this.§@#4§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§@#4§[_loc2_].isComplete)
            {
               this.§@#4§.splice(_loc2_,1);
            }
            else if(!this.§@#4§[_loc2_].allowNextPowerUp)
            {
               _loc1_ = false;
            }
            _loc2_--;
         }
         this.§>>§(_loc1_);
      }
      
      private function §>>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = this.§?J§;
         this.§?J§ = param1 && !this.§'!K§;
         if(_loc2_ != this.§?J§)
         {
            dispatchEvent(new §8!l§(§8!l§.§3#4§,"",this.§?J§));
         }
      }
      
      private function §"#,§(param1:§'#1§) : void
      {
         if(this.§0!]§ != null)
         {
            this.§4#1§.push(param1);
         }
         else
         {
            this.§0!]§ = param1;
            (§;!e§.§%e§ as §;"I§).mouseEnabled = false;
            this.§=!K§ = §>o§.§?!U§;
            §;!e§.§<x§.camera.setAction(!!param1.§&#!§ ? int(§+M§.§1Z§) : int(§+M§.§1h§));
         }
      }
      
      protected function §^E§(param1:§[!T§) : void
      {
         var _loc2_:String = this.§ !p§.currentLevel;
         var _loc3_:§ "0§ = this.§ !p§.getEpisodeForLevel(_loc2_);
         var _loc4_:String = !!_loc3_ ? _loc3_.name : "unknownEpisode";
         var _loc5_:String = (_loc3_.getLevelIndex(_loc2_) + 1).toString();
         var _loc6_:int;
         if((_loc6_ = §-!w§(§;"@§.singleton.dataModel).§2!J§.levelNames.indexOf(_loc2_)) > -1)
         {
            _loc5_ = (_loc6_ + 1).toString();
         }
         this.§+"v§.addEventListener(§;!J§.§``§,this.§!";§);
         this.§,"#§ = this.§+"v§.§58§(param1.§4!S§,_loc2_,_loc4_,_loc5_,param1.§'!Z§);
      }
      
      protected function §!";§(param1:§;!J§) : void
      {
         var _loc2_:§[!T§ = null;
         this.§+"v§.removeEventListener(§;!J§.§``§,this.§!";§);
         this.§,"#§ = null;
         if(!param1.§?!0§)
         {
            throw new Error("Powerup[" + param1.itemID + "] usage not allowed according to server response!");
         }
         if(this.§>#§.length > 0)
         {
            _loc2_ = this.§>#§.shift();
            this.§^E§(_loc2_);
         }
         else
         {
            dispatchEvent(new §8!l§(§8!l§.§?"<§,param1.itemID));
         }
      }
   }
}
