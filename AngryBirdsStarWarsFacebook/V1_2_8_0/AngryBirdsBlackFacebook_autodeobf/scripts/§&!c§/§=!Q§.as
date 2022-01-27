package §&!c§
{
   import §!b§.§]!s§;
   import §"§.§ !3§;
   import §"§.§0F§;
   import §%#+§.§?"U§;
   import §'!P§.§<#-§;
   import §'"A§.§3"x§;
   import §3L§.§+!W§;
   import §7§.§8[§;
   import §9"U§.§7"1§;
   import §?!u§.§-"+§;
   import §?"6§.§`!^§;
   import §`"n§.§""r§;
   import com.angrybirds.§<!J§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import §null §.§ #$§;
   import §null §.§5!K§;
   
   public class §=!Q§ extends EventDispatcher
   {
       
      
      private var §;'§:Dictionary;
      
      private var §5S§:§?"U§;
      
      private var § !§:Number;
      
      private var §!p§:Vector.<§<"=§>;
      
      private var §;"T§:Vector.<§?"U§>;
      
      private var §6!1§:Vector.<§?"U§>;
      
      private var §`K§:Boolean;
      
      private var §4"P§:Boolean;
      
      private var § !B§:§<#-§;
      
      private var §?!$§:§7"1§;
      
      private var §3"§:§""r§;
      
      private var §'""§:§ #$§;
      
      public function §=!Q§(param1:§7"1§, param2:§ #$§)
      {
         super();
         this.§?!$§ = param1;
         this.§3"§ = §""r§(this.§?!$§.userProgress);
         this.§'""§ = param2;
         this.init();
      }
      
      public function get §;"R§() : int
      {
         return this.§!p§.length;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§ !B§ != null;
      }
      
      protected function init() : void
      {
         this.§`K§ = true;
         this.§4"P§ = false;
         this.§ !§ = -1;
         this.§5S§ = null;
         this.§;"T§ = new Vector.<§?"U§>(0);
         this.§!p§ = new Vector.<§<"=§>();
         this.§;'§ = new Dictionary();
         this.§6!1§ = new Vector.<§?"U§>(0);
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!^§ = §<!J§.§]!D§ as §`!^§;
         if(_loc1_)
         {
            _loc1_.mouseEnabled = true;
         }
         this.§ !§ = -1;
         this.§5S§ = null;
         this.§;"T§.length = 0;
         this.§!p§.length = 0;
         this.§;'§ = null;
         this.§6!1§.length = 0;
      }
      
      public function reset() : void
      {
         this.§!p§.length = 0;
         if(this.§ !B§)
         {
            this.§3"§.removeEventListener(§-"+§.§&!-§,this.§>A§);
            this.§3"§.§2"Y§(this.§ !B§);
         }
         this.§ !B§ = null;
      }
      
      public function §-"_§(param1:§?"U§) : void
      {
         this.§;'§[param1.id] = param1;
      }
      
      public function updateWithTime(param1:Number) : void
      {
         if(this.§ !§ > 0)
         {
            this.§ !§ -= param1;
            if(this.§ !§ <= 0)
            {
               this.§use §();
            }
         }
         this.§6"j§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:§?"U§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!1§.length)
         {
            _loc2_ = this.§6!1§[_loc3_];
            if(_loc2_.§<+§ == §3"x§.§1s§)
            {
               _loc2_.§#b§(param1);
            }
            _loc3_++;
         }
         if(this.§6!1§.length >= 1)
         {
            this.§+j§();
         }
      }
      
      public function §]!§() : Boolean
      {
         if(this.§6!1§.length >= 1)
         {
            return true;
         }
         return false;
      }
      
      public function § #,§(param1:String) : void
      {
         if(!this.§;'§[param1])
         {
            throw new Error("NO REGISTERED POWERUP FOUND WITH ID: " + param1);
         }
         this.§?!9§(param1);
      }
      
      protected function §?!9§(param1:String) : void
      {
         this.§4"P§ = true;
         this.§>"Q§(this.§`K§);
         var _loc2_:§?"U§ = this.§;'§[param1];
         this.§3"?§(_loc2_);
         var _loc3_:int = §0F§(§<!J§.§=!%§).§;!5§();
         var _loc4_:§<"=§ = new §<"=§(param1,_loc3_);
         if(this.§ !B§ != null)
         {
            this.§!p§.push(_loc4_);
         }
         else
         {
            this.§#T§(_loc4_);
         }
         this.§?!$§.§@!K§.§ #,§(param1);
         §0F§(§<!J§.§=!%§).§ #,§(param1);
         §]!s§.§4!§(param1,this.§'""§.currentLevelNumericName,this.§?!$§.§4"-§.§<"$§(param1));
      }
      
      protected function §use §() : void
      {
         var _loc2_:§?"U§ = null;
         this.§4"P§ = false;
         var _loc1_:String = this.§5S§.id;
         this.§5S§.execute();
         if(this.§5S§.§<+§ != §3"x§.§#!Q§)
         {
            this.§6!1§.push(this.§5S§);
         }
         this.§5S§ = null;
         if(this.§6!1§.length == 0)
         {
            this.§>"Q§(true);
         }
         (§<!J§.§]!D§ as §`!^§).mouseEnabled = true;
         dispatchEvent(new §+!W§(§+!W§.§]!f§,_loc1_));
         if(this.§;"T§.length > 0)
         {
            _loc2_ = this.§;"T§.shift();
            this.§3"?§(_loc2_);
         }
      }
      
      protected function §6"j§(param1:Number) : void
      {
         var _loc2_:§?"U§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!1§.length)
         {
            _loc2_ = this.§6!1§[_loc3_];
            if(_loc2_.§<+§ == §3"x§.§"!0§)
            {
               _loc2_.updateTimeStep(param1);
            }
            _loc3_++;
         }
         if(this.§6!1§.length >= 1)
         {
            this.§+j§();
         }
      }
      
      private function §+j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:int = this.§6!1§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§6!1§[_loc2_].isComplete)
            {
               this.§6!1§.splice(_loc2_,1);
            }
            else if(!this.§6!1§[_loc2_].allowNextPowerUp)
            {
               _loc1_ = false;
            }
            _loc2_--;
         }
         this.§>"Q§(_loc1_);
      }
      
      private function §>"Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = this.§`K§;
         this.§`K§ = param1 && !this.§4"P§;
         if(_loc2_ != this.§`K§)
         {
            dispatchEvent(new §+!W§(§+!W§.§,U§,"",this.§`K§));
         }
      }
      
      private function §3"?§(param1:§?"U§) : void
      {
         if(this.§5S§ != null)
         {
            this.§;"T§.push(param1);
         }
         else
         {
            this.§5S§ = param1;
            (§<!J§.§]!D§ as §`!^§).mouseEnabled = false;
            this.§ !§ = § !3§.§[!i§;
            §<!J§.§=!%§.camera.setAction(!!param1.§9"r§ ? int(§8[§.§ "<§) : int(§8[§.§?t§));
         }
      }
      
      protected function §#T§(param1:§<"=§) : void
      {
         var _loc2_:String = this.§'""§.currentLevel;
         var _loc3_:§5!K§ = this.§'""§.getEpisodeForLevel(_loc2_);
         var _loc4_:String = !!_loc3_ ? _loc3_.name : "unknownEpisode";
         var _loc5_:String = (_loc3_.getLevelIndex(_loc2_) + 1).toString();
         var _loc6_:int;
         if((_loc6_ = §7"1§(§4"#§.singleton.dataModel).§1z§.levelNames.indexOf(_loc2_)) > -1)
         {
            _loc5_ = (_loc6_ + 1).toString();
         }
         this.§3"§.addEventListener(§-"+§.§&!-§,this.§>A§);
         this.§ !B§ = this.§3"§.§,!<§(param1.§9!x§,_loc2_,_loc4_,_loc5_,param1.§<x§);
      }
      
      protected function §>A§(param1:§-"+§) : void
      {
         var _loc2_:§<"=§ = null;
         this.§3"§.removeEventListener(§-"+§.§&!-§,this.§>A§);
         this.§ !B§ = null;
         if(!param1.§9s§)
         {
            throw new Error("Powerup[" + param1.itemID + "] usage not allowed according to server response!");
         }
         if(this.§!p§.length > 0)
         {
            _loc2_ = this.§!p§.shift();
            this.§#T§(_loc2_);
         }
         else
         {
            dispatchEvent(new §+!W§(§+!W§.§^!_§,param1.itemID));
         }
      }
   }
}
