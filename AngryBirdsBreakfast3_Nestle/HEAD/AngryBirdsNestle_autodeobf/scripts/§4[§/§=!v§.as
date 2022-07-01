package §4[§
{
   import §&!y§.§14§;
   import §'!3§.§!i§;
   import §0!m§.§@!S§;
   import §1![§.§#E§;
   import §1!c§.§7]§;
   import §<S§.HighscoreSidebar;
   import §@V§.§52§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import com.angrybirds.utils.§4",§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!v§ extends EventDispatcher implements §30§
   {
       
      
      private var §[!H§:§#E§ = null;
      
      private var §"!O§:Boolean = false;
      
      private var §]!R§:§7]§;
      
      public function §=!v§(param1:§7]§)
      {
         super();
         this.§]!R§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§[!H§)
         {
            if(!§2P§.§[!$§)
            {
               return;
            }
            this.§"!O§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§]!R§.§[!,§.currentLevel;
            _loc3_ = §2P§.§<!i§(this.§]!R§.§[!,§.currentLevel);
            _loc4_ = this.§]!R§.§9c§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§1]§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §52§.§3^§();
            _loc3_.gamePlay = §@!S§.§2A§.§2C§().toString();
            _loc3_.userId = §2P§.§[!$§.id;
            _loc3_.security = §#E§.§;2§(_loc3_);
            (_loc5_ = new Object()).id = §2P§.§[!$§.id;
            _loc5_.security = §2P§.§[!$§.§&"!§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§[!H§ = new §#E§(_loc6_,AngryBirdsCustom.§;"1§ + _loc1_,this,§#E§.§3b§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§"!O§ = true;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §#E§.§0"$§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §14§.§>c§ = true;
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§ = new §3!<§("",this.§]!R§.§[!,§);
            §2P§.§[!$§ = new §<!o§();
            §2P§.levelProfile = [];
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.reset();
            dispatchEvent(new §4",§(§4",§.§,l§));
            return;
         }
         §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §2P§.levelProfile = _loc2_.levelProfile;
            §2P§.§-l§();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §2P§.§[!$§.§switch§(_loc4_);
            }
         }
         this.§!!F§(_loc2_);
      }
      
      private function §!!F§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§;
         if(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,true).§"c§();
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§`"0§();
            }
         }
         if(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,false).§"c§();
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§`"0§();
            }
         }
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closeAllPopups();
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new §!i§());
         dispatchEvent(new §4",§(§4",§.§#^§));
      }
      
      public function §`+§() : void
      {
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
         }
         this.§"!O§ = true;
      }
      
      public function §1h§() : void
      {
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
            this.§[!H§ = null;
         }
         this.§"!O§ = false;
      }
      
      public function get §"h§() : §#E§
      {
         return this.§[!H§;
      }
      
      public function get §3""§() : Boolean
      {
         return this.§"!O§;
      }
   }
}
