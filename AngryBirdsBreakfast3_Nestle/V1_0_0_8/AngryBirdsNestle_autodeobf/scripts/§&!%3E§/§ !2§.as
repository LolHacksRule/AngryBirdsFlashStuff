package §&!>§
{
   import §#!n§.§3!s§;
   import §'&§.§3W§;
   import §,#§.§^!B§;
   import §9G§.§7!y§;
   import §=0§.HighscoreSidebar;
   import §?I§.§#V§;
   import com.angrybirds.§4"6§;
   import com.angrybirds.utils.§>]§;
   import com.angrybirds.utils.§[!k§;
   import com.angrybirds.utils.§`2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class § !2§ extends EventDispatcher implements §[!k§
   {
       
      
      private var §1!m§:§3!s§ = null;
      
      private var §`!]§:Boolean = false;
      
      private var §@!2§:§^!B§;
      
      public function § !2§(param1:§^!B§)
      {
         super();
         this.§@!2§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§1!m§)
         {
            if(!§2!V§.§!!?§)
            {
               return;
            }
            this.§`!]§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§@!2§.§4!d§.currentLevel;
            _loc3_ = §2!V§.§>!"§(this.§@!2§.§4!d§.currentLevel);
            _loc4_ = this.§@!2§.§0!C§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§<!8§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §7!y§.§ !6§();
            _loc3_.gamePlay = §4"6§.§;!k§.§"a§().toString();
            _loc3_.userId = §2!V§.§!!?§.id;
            _loc3_.security = §3!s§.§@!S§(_loc3_);
            (_loc5_ = new Object()).id = §2!V§.§!!?§.id;
            _loc5_.security = §2!V§.§!!?§.§"Q§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§1!m§ = new §3!s§(_loc6_,AngryBirdsCustom.§1=§ + _loc1_,this,§3!s§.§5%§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§`!]§ = true;
         var _loc2_:Object = §`2§.§#!l§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §3!s§.§'!;§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §3W§.§2-§ = true;
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§ = new §#^§("",this.§@!2§.§4!d§);
            §2!V§.§!!?§ = new §7!B§();
            §2!V§.levelProfile = [];
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.reset();
            dispatchEvent(new §>]§(§>]§.§,I§));
            return;
         }
         §2!V§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §2!V§.levelProfile = _loc2_.levelProfile;
            §2!V§.§]n§();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §2!V§.§!!?§.§8!2§(_loc4_);
            }
         }
         this.§1B§(_loc2_);
      }
      
      private function §1B§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§;
         if(_loc2_.§7<§(this.§@!2§.§4!d§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§7<§(this.§@!2§.§4!d§.currentLevel,true).§"!J§();
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§%x§();
            }
         }
         if(_loc2_.§7<§(this.§@!2§.§4!d§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§7<§(this.§@!2§.§4!d§.currentLevel,false).§"!J§();
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§%x§();
            }
         }
      }
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closeAllPopups();
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §#V§());
         dispatchEvent(new §>]§(§>]§.§4!`§));
      }
      
      public function §4!O§() : void
      {
         if(this.§1!m§)
         {
            this.§1!m§.dispose();
         }
         this.§`!]§ = true;
      }
      
      public function §?!h§() : void
      {
         if(this.§1!m§)
         {
            this.§1!m§.dispose();
            this.§1!m§ = null;
         }
         this.§`!]§ = false;
      }
      
      public function get §^!7§() : §3!s§
      {
         return this.§1!m§;
      }
      
      public function get §#!m§() : Boolean
      {
         return this.§`!]§;
      }
   }
}
