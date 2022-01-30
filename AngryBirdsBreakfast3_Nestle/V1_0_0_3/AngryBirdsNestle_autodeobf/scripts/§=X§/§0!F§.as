package §=X§
{
   import §#!`§.§4!#§;
   import §;U§.§`"2§;
   import §<[§.HighscoreSidebar;
   import §@"1§.§"1§;
   import §`!6§.§>!v§;
   import §`q§.§6!7§;
   import com.angrybirds.§4!l§;
   import com.angrybirds.utils.§2O§;
   import com.angrybirds.utils.§@!1§;
   import com.angrybirds.utils.§finally§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §0!F§ extends EventDispatcher implements §finally§
   {
       
      
      private var §for§:§4!#§ = null;
      
      private var §,!§:Boolean = false;
      
      private var §!!7§:§>!v§;
      
      public function §0!F§(param1:§>!v§)
      {
         super();
         this.§!!7§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§for§)
         {
            if(!§3j§.§0!i§)
            {
               return;
            }
            this.§,!§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§!!7§.§2!V§.currentLevel;
            _loc3_ = §3j§.§6!5§(this.§!!7§.§2!V§.currentLevel);
            _loc4_ = this.§!!7§.§9"&§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§7?§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §"1§.§7!X§();
            _loc3_.gamePlay = §4!l§.§,!8§.§9!c§().toString();
            _loc3_.userId = §3j§.§0!i§.id;
            _loc3_.security = §4!#§.§]H§(_loc3_);
            (_loc5_ = new Object()).id = §3j§.§0!i§.id;
            _loc5_.security = §3j§.§0!i§.§?!f§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§for§ = new §4!#§(_loc6_,AngryBirdsCustom.§91§ + _loc1_,this,§4!#§.§;0§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§,!§ = true;
         var _loc2_:Object = §2O§.§>!r§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §4!#§.§=y§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §`"2§.§#!w§ = true;
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§ = new §-!f§("",this.§!!7§.§2!V§);
            §3j§.§0!i§ = new §?!n§();
            §3j§.levelProfile = [];
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.reset();
            dispatchEvent(new §@!1§(§@!1§.§'"§));
            return;
         }
         §3j§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §3j§.levelProfile = _loc2_.levelProfile;
            §3j§.§'"'§();
         }
         this.§9!L§(_loc2_);
      }
      
      private function §9!L§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§;
         if(_loc2_.§=<§(this.§!!7§.§2!V§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§=<§(this.§!!7§.§2!V§.currentLevel,true).§`§();
               (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§5!7§();
            }
         }
         if(_loc2_.§=<§(this.§!!7§.§2!V§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§=<§(this.§!!7§.§2!V§.currentLevel,false).§`§();
               (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§5!7§();
            }
         }
      }
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closeAllPopups();
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §6!7§());
         dispatchEvent(new §@!1§(§@!1§.§+r§));
      }
      
      public function §"! §() : void
      {
         if(this.§for§)
         {
            this.§for§.dispose();
         }
         this.§,!§ = true;
      }
      
      public function §@!b§() : void
      {
         if(this.§for§)
         {
            this.§for§.dispose();
            this.§for§ = null;
         }
         this.§,!§ = false;
      }
      
      public function get §%!8§() : §4!#§
      {
         return this.§for§;
      }
      
      public function get §;[§() : Boolean
      {
         return this.§,!§;
      }
   }
}
