package §`"n§
{
   import §"§.§0!0§;
   import §"§.§0F§;
   import §%!G§.§0"V§;
   import §%!G§.§?!g§;
   import §%!G§.§`?§;
   import §%!U§.§#!S§;
   import §%!U§.§="H§;
   import §%!U§.§=H§;
   import §%!U§.§>!m§;
   import §%Y§.§[!G§;
   import §'!P§.§<#-§;
   import §'"A§.§#§;
   import §0"U§.§]!l§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §9"U§.§[!s§;
   import §9"`§.Base64;
   import §9=§.§?"C§;
   import §?!u§.§-"+§;
   import com.angrybirds.§<!J§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §""r§ extends §^!-§
   {
      
      public static const §6=§:String = "tt";
       
      
      private var §0"s§:§]!l§;
      
      private var §!"M§:§#!S§;
      
      private var §>!2§:String;
      
      private var §?"J§:Boolean = false;
      
      protected var §'!5§:Dictionary;
      
      protected var §0!=§:String;
      
      private var §4#4§:Array;
      
      private var §7!Y§:Array;
      
      private var §<!x§:Array;
      
      private var §8h§:Array;
      
      private var §!"o§:Array;
      
      private var §2!K§:Array;
      
      private var §<<§:Array;
      
      private var §<"N§:Array;
      
      private var §0!^§:Array;
      
      private var mName:Array;
      
      private var §4!J§:Array;
      
      private var §<!B§:Array;
      
      private var §@"A§:Array;
      
      private var §'+§:Array;
      
      private var §-!S§:Array;
      
      private var §;!r§:Array;
      
      private var §!!`§:§?!g§;
      
      private var §^"2§:Vector.<String>;
      
      protected var §>!1§:Boolean;
      
      public function §""r§(param1:String, param2:§5#§, param3:Array, param4:String, param5:Object)
      {
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         this.§4#4§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§7!Y§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§<!x§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§8h§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§!"o§ = [101,112,105,115,111,100,101];
         this.§2!K§ = [108,101,118,101,108];
         this.§<<§ = [112,111,105,110,116,115];
         this.§<"N§ = [115,116,97,114,115];
         this.§0!^§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§4!J§ = [115,101,99,117,114,105,116,121];
         this.§<!B§ = [98,108,111,99,107,115];
         this.§@"A§ = [101,120,116,114,97,66,105,114,100];
         this.§'+§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         this.§-!S§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         super(param1,param2);
         this.§>!1§ = false;
         this.§'!5§ = new Dictionary();
         this.§!"M§ = new §#!S§(§4"#§.SERVER_ROOT);
         this.§0"s§ = new §]!l§(§4"#§.SERVER_ROOT);
         this.§;!r§ = [];
         this.§^"2§ = new Vector.<String>(0);
         for each(_loc6_ in param3)
         {
            if(_loc6_.p)
            {
               §>"t§(_loc6_.l,_loc6_.p);
            }
            if(_loc6_.me)
            {
               §#!C§(_loc6_.l,_loc6_.me);
            }
            if(_loc6_.r)
            {
               this.§ "C§(_loc6_.l,_loc6_.r);
            }
         }
         _loc7_ = param5.tutorials;
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.§^"2§.push(_loc7_[_loc8_]);
            _loc8_++;
         }
      }
      
      public function get §;"j§() : String
      {
         return this.§>!2§;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         if(this.§'!5§[param1])
         {
            return this.§'!5§[param1];
         }
         return 0;
      }
      
      public function § "C§(param1:String, param2:int) : void
      {
         this.§'!5§[param1] = param2;
      }
      
      public function §;"4§(param1:String) : void
      {
         if(this.§'!5§[param1])
         {
            delete this.§'!5§[param1];
         }
      }
      
      public function §4#'§(param1:String) : void
      {
         if(§ -§[param1])
         {
            delete § -§[param1];
         }
      }
      
      private function §7",§(param1:String, param2:Boolean) : String
      {
         var _loc3_:§5!K§ = §'""§.getEpisodeForLevel(param1);
         return §[!G§.§,O§([!!_loc3_ ? _loc3_.name : this.§]"D§(),param1,§<!J§.§]!D§.getScore(0),getStarsForLevel(param1,§<!J§.§]!D§.getScore(10)),§<!J§.§]!D§.getEagleScore(),this.§ "p§()].join("|"));
      }
      
      private function §%!y§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function § "p§() : String
      {
         return this.§%!y§(this.mName);
      }
      
      private function §%l§() : String
      {
         return this.§%!y§(this.§4#4§);
      }
      
      private function §]"D§() : String
      {
         return this.§%!y§(this.§7!Y§);
      }
      
      private function §[!0§() : String
      {
         return this.§%!y§(this.§<!x§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§^"2§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         var _loc6_:§`?§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(this.§^"2§.indexOf(_loc3_) == -1)
            {
               this.§^"2§.push(_loc3_);
            }
         }
         _loc4_ = §!!-§ + "/tutorialshown/" + param1;
         (_loc5_ = §0"V§.§2"r§(_loc4_)).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§[!0§();
         (_loc6_ = new §`?§(null,2)).addEventListener(Event.COMPLETE,this.§<"5§);
         _loc6_.addEventListener(IOErrorEvent.IO_ERROR,this.§&"4§);
         _loc6_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&"4§);
         _loc6_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc6_.load(_loc5_);
      }
      
      private function §<"5§(param1:Event) : void
      {
         var _loc2_:§`?§ = null;
         if(param1.currentTarget is §`?§)
         {
            _loc2_ = param1.currentTarget as §`?§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§<"5§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §&"4§(param1:Event) : void
      {
         var _loc2_:§`?§ = null;
         if(param1.currentTarget is §`?§)
         {
            _loc2_ = param1.currentTarget as §`?§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§<"5§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      public function get §<S§() : Boolean
      {
         return this.§?"J§;
      }
      
      private function §6O§(param1:§=H§) : void
      {
         if(param1.§<#+§ && !§7"1§(§4"#§.singleton.dataModel).§9"$§.§&!3§)
         {
            this.§&!L§(param1.§<#+§,true);
         }
         this.§>!2§ = param1.§1!j§;
         this.§?"J§ = false;
      }
      
      private function §&!L§(param1:§>!m§, param2:Boolean = false) : void
      {
         §7"1§(§4"#§.singleton.dataModel).§9"$§.update(param1.§## §,param1.§@!1§,param1.§6!D§,param1.§>@§,param2);
      }
      
      public function §,!<§(param1:String, param2:String, param3:String, param4:String, param5:int) : §<#-§
      {
         if(this.§?"J§)
         {
            throw new Error();
         }
         return this.§0"s§.§,!<§(param1,param2,param3,param4,param5,this.§>!2§,this.§[#6§,this.§`!$§);
      }
      
      public function §2"Y§(param1:§<#-§) : void
      {
         this.§0"s§.§4K§(param1);
      }
      
      protected function §[#6§(param1:§?"C§) : void
      {
         var _loc3_:§7"1§ = null;
         var _loc2_:Boolean = false;
         if(param1)
         {
            _loc3_ = §7"1§(§4"#§.singleton.dataModel);
            _loc3_.§@!K§.§2"q§(param1.itemID,param1.balance);
            if(!isNaN(param1.starCoins))
            {
               _loc3_.§&!w§.§?c§(param1.starCoins);
            }
            if(param1.allowed && param1.§;"j§ != this.§>!2§)
            {
               _loc2_ = true;
               this.§>!2§ = param1.§;"j§;
               dispatchEvent(new §-"+§(§-"+§.§&!-§,_loc2_,param1.itemID));
               return;
            }
            throw new Error("--#BlackFacebookUserProgress[onUsePowerupComplete]:: ERROR, result.allowed[" + param1.allowed + "], same token?[" + (param1.§;"j§ == this.§>!2§) + "]");
         }
         dispatchEvent(new §-"+§(§-"+§.§&!-§,_loc2_,""));
      }
      
      protected function §`!$§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §-"+§(§-"+§.§&!-§,false,""));
      }
      
      public function §5#6§(param1:String, param2:Boolean) : void
      {
         this.§?"J§ = true;
         this.§!"M§.§1r§(param1,param2,this.§6O§);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc9_:String = null;
         if(this.§?"J§)
         {
            throw new Error();
         }
         this.§>!1§ = true;
         var _loc4_:§5!K§ = §'""§.getEpisodeForLevel(param1);
         var _loc5_:int = §<!J§.§]!D§.getScore(0);
         var _loc6_:int = getStarsForLevel(param1,§<!J§.§]!D§.getScore(10));
         var _loc7_:Object = {};
         var _loc8_:Boolean = §0F§(§<!J§.§=!%§).§"Y§(§[!b§.§]!F§);
         if(param3)
         {
            _loc9_ = (§7"1§(§4"#§.singleton.dataModel).§1z§.levelNames.indexOf(param1) + 1).toString();
         }
         else
         {
            _loc9_ = (_loc4_.getLevelIndex(param1) + 1).toString();
         }
         _loc7_[this.§%!y§(this.§!"o§)] = !!_loc4_ ? _loc4_.name : this.§]"D§();
         _loc7_[this.§%!y§(this.§2!K§)] = param1;
         _loc7_[this.§%!y§(this.§<<§)] = _loc5_;
         _loc7_[this.§%!y§(this.§<"N§)] = _loc6_;
         _loc7_[this.§%!y§(this.§0!^§)] = §<!J§.§]!D§.getEagleScore();
         _loc7_[this.§%!y§(this.§4!J§)] = this.§7",§(param1,param3);
         _loc7_[this.§%!y§(this.§<!B§)] = §0!0§.§>p§();
         var _loc10_:§##4§ = §7"1§(§4"#§.singleton.dataModel).birdLevels;
         _loc7_.birdLevels = {
            "red":_loc10_.red,
            "yellow":_loc10_.yellow,
            "blue":_loc10_.blue,
            "black":_loc10_.black,
            "big":_loc10_.§0"0§,
            "pink":_loc10_.pink
         };
         _loc7_[this.§%!y§(this.§-!S§)] = this.§>!2§;
         _loc7_[this.§%!y§(this.§'+§)] = §0F§(§<!J§.§=!%§).§;!5§();
         _loc7_[this.§%!y§(this.§8h§)] = _loc9_;
         _loc7_[this.§%!y§(this.§@"A§)] = _loc8_;
         var _loc11_:URLRequest;
         (_loc11_ = §0"V§.§2"r§(§!!-§ + this.§%!y§(this.§4#4§) + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc11_.contentType = this.§%!y§(this.§<!x§);
         var _loc12_:String = JSON.stringify(_loc7_);
         _loc11_.data = Base64.encode(_loc12_);
         this.§!"M§.saveLevelProgress(_loc11_,this.§%"6§);
      }
      
      private function §%"6§(param1:§="H§) : void
      {
         var _loc3_:§0!2§ = null;
         if(param1.§<#+§)
         {
            this.§&!L§(param1.§<#+§);
         }
         if(param1.birdLevels)
         {
            §7"1§(§4"#§.singleton.dataModel).birdLevels.update(param1.birdLevels);
         }
         if(!isNaN(param1.starCoins))
         {
            §7"1§(§4"#§.singleton.dataModel).§&!w§.§?c§(param1.starCoins);
         }
         if(param1.§["O§)
         {
            if(param1.§["O§ == "StarCoin")
            {
               _loc3_ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
               _loc3_.§?c§(_loc3_.starCoins + param1.§+!n§);
            }
            else
            {
               §7"1§(§4"#§.singleton.dataModel).§@!K§.§2"q§(param1.§["O§,§7"1§(§4"#§.singleton.dataModel).§@!K§.§6"0§(param1.§["O§) + param1.§+!n§);
            }
         }
         this.§>!1§ = false;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§"_§);
         _loc2_.data = param1;
         dispatchEvent(_loc2_);
      }
      
      public function get §=#%§() : Boolean
      {
         return this.§>!1§;
      }
      
      private function onError(param1:Event) : void
      {
      }
      
      public function get userName() : String
      {
         return this.§0!=§;
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:§[!s§ = null;
         var _loc3_:Object = null;
         if(param1.indexOf("2000-") != -1)
         {
            _loc2_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
            _loc3_ = _loc2_.§9<§(param1);
            if(!_loc3_)
            {
               return false;
            }
            if(_loc3_.unlocksAt != undefined && _loc3_.unlocksAt > getTimer())
            {
               return false;
            }
            return true;
         }
         return super.isLevelOpen(param1);
      }
      
      public function get §@"p§() : Boolean
      {
         return isLevelPassed(§'""§.getEpisodeByName("2").getLevelName(8));
      }
   }
}
