package §=!&§
{
   import §&!F§.§"!d§;
   import §,§.§'-§;
   import §1!E§.§>f§;
   import §1!E§.§`!8§;
   import §1!E§.§class§;
   import §12§.§4!1§;
   import §5G§.StatePlay;
   import §=!g§.§!!@§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!-§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §7!b§:§"!d§ = null;
      
      private var §#!K§:Boolean = false;
      
      private var §#!P§:StatePlay;
      
      public function §3!-§(param1:StatePlay)
      {
         super();
         this.§#!P§ = param1;
      }
      
      public function levelCompleted() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!this.§7!b§)
         {
            if(!§>f§.§%!`§)
            {
               return;
            }
            this.§#!K§ = false;
            _loc1_ = "updateLevelProfile";
            _loc2_ = §@;§.§6!K§;
            _loc3_ = §>f§.§0!9§(§@;§.§6!K§);
            _loc4_ = this.§#!P§.§58§.getScore();
            _loc3_.score = _loc4_;
            _loc3_.stars = §5!9§.§#%§.§[![§(_loc2_,_loc4_);
            _loc3_.levelId = _loc2_;
            _loc3_.blocks = §'-§.§1-§();
            _loc3_.gamePlay = §@!Z§.§;!,§.§&;§().toString();
            _loc3_.userId = §>f§.§%!`§.id;
            _loc3_.security = §"!d§.§0#§(_loc3_);
            (_loc5_ = new Object()).id = §>f§.§%!`§.id;
            _loc5_.security = §>f§.§%!`§.§#]§;
            _loc6_ = {
               "player":_loc5_,
               "levelProfile":_loc3_
            };
            this.§7!b§ = new §"!d§(_loc6_,§5!9§.§<V§ + _loc1_,this,§"!d§.§9X§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:String = null;
         this.§#!K§ = true;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §"!d§.§ !_§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §5!9§.§#%§ = new §`!8§("");
            §>f§.§%!`§ = new §class§();
            §>f§.levelProfile = [];
            return;
         }
         §>f§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §>f§.levelProfile = _loc2_.levelProfile;
            §>f§.§1!P§();
         }
         if(_loc2_.achievements)
         {
            for each(_loc4_ in _loc2_.achievements)
            {
               if(§>f§.§%!`§)
               {
                  §>f§.§%!`§.§";§(_loc4_);
                  this.§9!!§(_loc4_);
               }
            }
         }
         this.§#!P§.§%n§();
         dispatchEvent(new §4!1§(§4!1§.§1!8§));
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §4!1§(§4!1§.§3!>§));
      }
      
      public function §5>§() : void
      {
         if(this.§7!b§)
         {
            this.§7!b§.dispose();
         }
         this.§#!K§ = true;
      }
      
      public function §>3§() : void
      {
         if(this.§7!b§)
         {
            this.§7!b§.dispose();
            this.§7!b§ = null;
         }
         this.§#!K§ = false;
      }
      
      public function get §,!@§() : Boolean
      {
         return this.§#!K§;
      }
      
      private function §9!!§(param1:String) : void
      {
         §!!@§.§%Q§("spotAchievement",param1);
      }
   }
}
