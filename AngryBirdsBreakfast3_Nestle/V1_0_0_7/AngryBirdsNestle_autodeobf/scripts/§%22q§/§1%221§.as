package §"q§
{
   import §%r§.§ L§;
   import §0!E§.HighscoreSidebar;
   import §3@§.§=W§;
   import §@!l§.§@H§;
   import §]!V§.§8!P§;
   import §]A§.§,!l§;
   import com.angrybirds.§#Z§;
   import com.angrybirds.utils.§#!z§;
   import com.angrybirds.utils.§@>§;
   import com.angrybirds.utils.§]?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1"1§ extends EventDispatcher implements §#!z§
   {
       
      
      private var §7d§:§=W§ = null;
      
      private var §6!C§:Boolean = false;
      
      private var §'!G§:§8!P§;
      
      public function §1"1§(param1:§8!P§)
      {
         super();
         this.§'!G§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§7d§)
         {
            if(!§6,§.§!!7§)
            {
               return;
            }
            this.§6!C§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§'!G§.§5!c§.currentLevel;
            _loc3_ = §6,§.§4!b§(this.§'!G§.§5!c§.currentLevel);
            _loc4_ = this.§'!G§.§'!s§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§3i§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §,!l§.§[n§();
            _loc3_.gamePlay = §#Z§.§'0§.§^",§().toString();
            _loc3_.userId = §6,§.§!!7§.id;
            _loc3_.security = §=W§.§`!o§(_loc3_);
            (_loc5_ = new Object()).id = §6,§.§!!7§.id;
            _loc5_.security = §6,§.§!!7§.§>!"§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§7d§ = new §=W§(_loc6_,AngryBirdsCustom.§9"+§ + _loc1_,this,§=W§.§"!x§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§6!C§ = true;
         var _loc2_:Object = §@>§.§&a§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §=W§.§76§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            § L§.§-w§ = true;
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§ = new §;!z§("",this.§'!G§.§5!c§);
            §6,§.§!!7§ = new §2!L§();
            §6,§.levelProfile = [];
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.reset();
            dispatchEvent(new §]?§(§]?§.§@!A§));
            return;
         }
         §6,§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §6,§.levelProfile = _loc2_.levelProfile;
            §6,§.§," §();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §6,§.§!!7§.§["&§(_loc4_);
            }
         }
         this.§?!d§(_loc2_);
      }
      
      private function §?!d§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§;
         if(_loc2_.§<!"§(this.§'!G§.§5!c§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§<!"§(this.§'!G§.§5!c§.currentLevel,true).§@-§();
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§^!2§();
            }
         }
         if(_loc2_.§<!"§(this.§'!G§.§5!c§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§<!"§(this.§'!G§.§5!c§.currentLevel,false).§@-§();
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§^!2§();
            }
         }
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closeAllPopups();
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §@H§());
         dispatchEvent(new §]?§(§]?§.§7a§));
      }
      
      public function §#!n§() : void
      {
         if(this.§7d§)
         {
            this.§7d§.dispose();
         }
         this.§6!C§ = true;
      }
      
      public function §>!t§() : void
      {
         if(this.§7d§)
         {
            this.§7d§.dispose();
            this.§7d§ = null;
         }
         this.§6!C§ = false;
      }
      
      public function get §"B§() : §=W§
      {
         return this.§7d§;
      }
      
      public function get §>"1§() : Boolean
      {
         return this.§6!C§;
      }
   }
}
