package com.angrybirds.utils
{
   import §&!y§.§14§;
   import §'!3§.§ !3§;
   import §'!3§.§,!S§;
   import §1![§.§#E§;
   import §1!i§.§`!t§;
   import §4[§.§2P§;
   import §4[§.§3!<§;
   import §4[§.§<!o§;
   import §[!5§.§2p§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1"1§ extends EventDispatcher implements §30§
   {
       
      
      private var §;"5§:Boolean = false;
      
      private var § "3§:§,!S§;
      
      public function §1"1§()
      {
         super();
         this.§ "3§ = new §,!S§();
      }
      
      public function §0!h§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§#E§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§;"5§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§2P§.§[!$§.id,
               "code":param1
            };
            _loc5_ = new §#E§(_loc4_,AngryBirdsCustom.§;"1§ + _loc3_,this,§#E§.§3b§);
            this.§;"5§ = true;
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§ "3§);
         }
         else if(this.§;"5§ == false && !_loc2_)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.ENTER_CODE));
            dispatchEvent(new §@,§(§@,§.§,k§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         this.§;"5§ = false;
         this.§ "3§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §2P§.§[!$§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §2P§.§[!$§.§switch§(_loc6_);
               }
            }
            if((_loc5_ = §#E§.§0"$§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               §14§.§>c§ = true;
               (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§ = new §3!<§("",(§ !4§.§%"7§ as AngryBirdsCustom).§[!,§);
               §2P§.§[!$§ = new §<!o§();
               §2P§.levelProfile = [];
               return;
            }
            §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §2P§.levelProfile = _loc2_.levelProfile;
               §2P§.§-l§();
            }
            dispatchEvent(new §@,§(§@,§.§=h§));
         }
         else if(_loc2_ && _loc2_.error == §2p§.CODE_USED)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_USED,6000));
            dispatchEvent(new §@,§(§@,§.§+!§));
         }
         else if(_loc2_ && _loc2_.error == §2p§.PLAYER_BANNED)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §2p§.IP_BANNED)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §2p§.TOO_MANY_CODES)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §2p§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §@,§(§@,§.§>$§));
         }
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §@,§(§@,§.§>$§));
         this.§;"5§ = false;
      }
   }
}
