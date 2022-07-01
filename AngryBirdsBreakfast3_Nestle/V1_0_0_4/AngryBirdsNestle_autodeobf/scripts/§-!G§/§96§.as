package §-!G§
{
   import §%9§.§9k§;
   import §&5§.HighscoreSidebar;
   import §0I§.§2"3§;
   import §8D§.§ " §;
   import §?!E§.§%!?§;
   import §[j§.§%p§;
   import com.angrybirds.§6U§;
   import com.angrybirds.utils.§!!^§;
   import com.angrybirds.utils.§9_§;
   import com.angrybirds.utils.§?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §96§ extends EventDispatcher implements §!!^§
   {
       
      
      private var §-p§:§%p§ = null;
      
      private var §1r§:Boolean = false;
      
      private var §+9§:§%!?§;
      
      public function §96§(param1:§%!?§)
      {
         super();
         this.§+9§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§-p§)
         {
            if(!§!!Y§.§9!L§)
            {
               return;
            }
            this.§1r§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§+9§.§6!N§.currentLevel;
            _loc3_ = §!!Y§.§ !0§(this.§+9§.§6!N§.currentLevel);
            _loc4_ = this.§+9§.§5`§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§4o§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §2"3§.§^r§();
            _loc3_.gamePlay = §6U§.§+_§.§1!W§().toString();
            _loc3_.userId = §!!Y§.§9!L§.id;
            _loc3_.security = §%p§.§#!<§(_loc3_);
            (_loc5_ = new Object()).id = §!!Y§.§9!L§.id;
            _loc5_.security = §!!Y§.§9!L§.§4!z§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§-p§ = new §%p§(_loc6_,AngryBirdsCustom.§5"+§ + _loc1_,this,§%p§.§#0§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§1r§ = true;
         var _loc2_:Object = §?§.§8!B§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §%p§.§3m§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            § " §.§4"0§ = true;
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§ = new §0![§("",this.§+9§.§6!N§);
            §!!Y§.§9!L§ = new §"$§();
            §!!Y§.levelProfile = [];
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.reset();
            dispatchEvent(new §9_§(§9_§.§3Y§));
            return;
         }
         §!!Y§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §!!Y§.levelProfile = _loc2_.levelProfile;
            §!!Y§.§>!k§();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §!!Y§.§9!L§.§^"$§(_loc4_);
            }
         }
         this.§%!h§(_loc2_);
      }
      
      private function §%!h§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§;
         if(_loc2_.§@!k§(this.§+9§.§6!N§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§@!k§(this.§+9§.§6!N§.currentLevel,true).§+>§();
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§<]§();
            }
         }
         if(_loc2_.§@!k§(this.§+9§.§6!N§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§@!k§(this.§+9§.§6!N§.currentLevel,false).§+>§();
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§<]§();
            }
         }
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closeAllPopups();
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §9k§());
         dispatchEvent(new §9_§(§9_§.§?q§));
      }
      
      public function §]e§() : void
      {
         if(this.§-p§)
         {
            this.§-p§.dispose();
         }
         this.§1r§ = true;
      }
      
      public function §,<§() : void
      {
         if(this.§-p§)
         {
            this.§-p§.dispose();
            this.§-p§ = null;
         }
         this.§1r§ = false;
      }
      
      public function get §-"§() : §%p§
      {
         return this.§-p§;
      }
      
      public function get §#x§() : Boolean
      {
         return this.§1r§;
      }
   }
}
