package §63§
{
   import §&_§.§<H§;
   import §6!5§.§1!e§;
   import §?!v§.§2" §;
   import §]K§.HighscoreSidebar;
   import §]k§.§9J§;
   import com.angrybirds.§6!E§;
   import com.angrybirds.utils.§ b§;
   import com.angrybirds.utils.§0;§;
   import com.angrybirds.utils.§?m§;
   import §const§.§!!`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §'!a§ extends EventDispatcher implements §0;§
   {
       
      
      private var §&"6§:§2" § = null;
      
      private var §,!_§:Boolean = false;
      
      private var §1![§:§1!e§;
      
      public function §'!a§(param1:§1!e§)
      {
         super();
         this.§1![§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§&"6§)
         {
            if(!§^!!§.§]!P§)
            {
               return;
            }
            this.§,!_§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = this.§1![§.§+!t§.currentLevel;
            _loc3_ = §^!!§.§@r§(this.§1![§.§+!t§.currentLevel);
            _loc4_ = this.§1![§.§`!M§.getScore(10);
            _loc3_.score = _loc4_;
            _loc3_.stars = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§`!E§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §9J§.§1!v§();
            _loc3_.gamePlay = §6!E§.§7I§.§,O§().toString();
            _loc3_.userId = §^!!§.§]!P§.id;
            _loc3_.security = §2" §.§;"$§(_loc3_);
            (_loc5_ = new Object()).id = §^!!§.§]!P§.id;
            _loc5_.security = §^!!§.§]!P§.§>4§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§&"6§ = new §2" §(_loc6_,AngryBirdsCustom.§'P§ + _loc1_,this,§2" §.§0!<§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:int = 0;
         this.§,!_§ = true;
         var _loc2_:Object = §?m§.§98§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §2" §.§?!a§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §!!`§.§,i§ = true;
            (§-!I§.§[f§ as AngryBirdsCustom).§=! § = new §2!e§("",this.§1![§.§+!t§);
            §^!!§.§]!P§ = new §%!8§();
            §^!!§.levelProfile = [];
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.reset();
            dispatchEvent(new § b§(§ b§.§-W§));
            return;
         }
         §^!!§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §^!!§.levelProfile = _loc2_.levelProfile;
            §^!!§.§9!m§();
         }
         if(_loc2_.chapters && _loc2_.chapters is Array)
         {
            for each(_loc4_ in _loc2_.chapters)
            {
               §^!!§.§]!P§.§?!n§(_loc4_);
            }
         }
         this.§#!p§(_loc2_);
      }
      
      private function §#!p§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§;
         if(_loc2_.§4!E§(this.§1![§.§+!t§.currentLevel,true))
         {
            if(param1.isHighScore)
            {
               _loc2_.§4!E§(this.§1![§.§+!t§.currentLevel,true).§0!m§();
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§8@§();
            }
         }
         if(_loc2_.§4!E§(this.§1![§.§+!t§.currentLevel,false))
         {
            if(param1.isHighScore)
            {
               _loc2_.§4!E§(this.§1![§.§+!t§.currentLevel,false).§0!m§();
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§8@§();
            }
         }
      }
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closeAllPopups();
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §<H§());
         dispatchEvent(new § b§(§ b§.§,! §));
      }
      
      public function §+![§() : void
      {
         if(this.§&"6§)
         {
            this.§&"6§.dispose();
         }
         this.§,!_§ = true;
      }
      
      public function §!R§() : void
      {
         if(this.§&"6§)
         {
            this.§&"6§.dispose();
            this.§&"6§ = null;
         }
         this.§,!_§ = false;
      }
      
      public function get §6!O§() : §2" §
      {
         return this.§&"6§;
      }
      
      public function get §]B§() : Boolean
      {
         return this.§,!_§;
      }
   }
}
