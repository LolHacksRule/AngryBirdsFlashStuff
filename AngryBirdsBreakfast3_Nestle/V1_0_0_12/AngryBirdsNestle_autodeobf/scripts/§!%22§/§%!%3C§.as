package §!"§
{
   import § 2§.§&p§;
   import §#!]§.§-a§;
   import §2!,§.§'!0§;
   import §3!0§.§`i§;
   import §4"!§.§?!#§;
   import §="5§.HighscoreSidebar;
   import §?u§.§48§;
   import com.angrybirds.utils.§2n§;
   import com.angrybirds.utils.§?!-§;
   import com.angrybirds.utils.§?z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%!<§ extends EventDispatcher implements §?z§
   {
       
      
      private var §&!Y§:§48§ = null;
      
      private var §5!H§:Boolean = false;
      
      private var §,"#§:§-a§;
      
      public function §%!<§(param1:§-a§)
      {
         super();
         this.§,"#§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§&!Y§)
         {
            if(!§^!7§.§>!8§)
            {
               return;
            }
            this.§5!H§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§,"#§.§8S§.currentLevel;
            _loc3_ = §^!7§.§!"-§(this.§,"#§.§8S§.currentLevel);
            _loc4_ = this.§,"#§.§]h§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§-t§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §&p§.§]!Y§();
            _loc3_.gamePlay = §`i§.§&!L§.§@!v§().toString();
            _loc3_.userId = §^!7§.§>!8§.id;
            _loc3_.security = §48§.§<q§(_loc3_);
            (_loc5_ = new Object()).id = §^!7§.§>!8§.id;
            _loc5_.security = §^!7§.§>!8§.§#!m§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§&!Y§ = new §48§(_loc6_,AngryBirdsCustom.§8!O§ + _loc1_,this,§48§.§6!^§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§5!H§ = true;
         var _loc2_:Object = §?!-§.§4!-§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §48§.§"f§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §?!#§.§^"&§ = true;
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§ = new §'!1§("",this.§,"#§.§8S§);
            §^!7§.§>!8§ = new §0"6§();
            §^!7§.levelProfile = [];
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.reset();
            dispatchEvent(new §2n§(§2n§.§6j§));
            return;
         }
         §^!7§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §^!7§.levelProfile = _loc2_.levelProfile;
            §^!7§.§0!3§();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §^!7§.§>!8§.§]"5§(_loc4_);
            }
         }
         this.§^a§(_loc2_);
      }
      
      private function §^a§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§;
         if(_loc2_.§3<§(this.§,"#§.§8S§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§3<§(this.§,"#§.§8S§.currentLevel,true).§=!U§();
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§`W§();
            }
         }
         if(_loc2_.§3<§(this.§,"#§.§8S§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§3<§(this.§,"#§.§8S§.currentLevel,false).§=!U§();
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§`W§();
            }
         }
      }
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closeAllPopups();
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §'!0§());
         dispatchEvent(new §2n§(§2n§.§-M§));
      }
      
      public function §[P§() : void
      {
         if(this.§&!Y§)
         {
            this.§&!Y§.dispose();
         }
         this.§5!H§ = true;
      }
      
      public function §;!z§() : void
      {
         if(this.§&!Y§)
         {
            this.§&!Y§.dispose();
            this.§&!Y§ = null;
         }
         this.§5!H§ = false;
      }
      
      public function get §import§() : §48§
      {
         return this.§&!Y§;
      }
      
      public function get §@!6§() : Boolean
      {
         return this.§5!H§;
      }
   }
}
