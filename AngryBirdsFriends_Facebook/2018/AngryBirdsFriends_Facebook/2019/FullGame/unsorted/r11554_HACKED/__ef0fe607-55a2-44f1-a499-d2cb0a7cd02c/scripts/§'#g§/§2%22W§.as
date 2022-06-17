package §'#g§
{
   import § !D§.§3§;
   import § "C§.§ !<§;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!!?§.§,!K§;
   import §-#R§.§0!w§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §2"W§ extends EventDispatcher
   {
      
      public static const §!!x§:String = "POWER_UP";
      
      public static const §!0§:String = "AVATAR";
      
      public static const §!$9§:String = "SPECIAL";
      
      public static const §?$;§:String = "SLINGSHOT";
      
      public static const §8!^§:String = "VC";
      
      public static const §'#y§:String = "LEVEL";
      
      public static const §=$9§:String = "OFFER";
       
      
      private var §2]§:§'!n§;
      
      private var § !s§:Vector.<§,!K§>;
      
      private var §7@§:Vector.<§,!K§>;
      
      private var §<!T§:Vector.<§,!K§>;
      
      private var §1$B§:Vector.<§,!K§>;
      
      private var § $?§:Vector.<§,!K§>;
      
      private var §<"[§:Vector.<§,!K§>;
      
      private var §1;§:Vector.<§,!K§>;
      
      private var §+"Y§:Object;
      
      private var §<!$§:Array;
      
      private var §;"N§:Boolean = false;
      
      public function §2"W§()
      {
         super();
      }
      
      public function get §0"§() : Boolean
      {
         return this.§;"N§;
      }
      
      public function get §3$+§() : Vector.<§,!K§>
      {
         if(!this.§ !s§)
         {
            this.§"#E§();
            return null;
         }
         return this.§ !s§;
      }
      
      public function get §4"c§() : Vector.<§,!K§>
      {
         if(!this.§7@§)
         {
            this.§"#E§();
            return null;
         }
         return this.§7@§;
      }
      
      public function get §1$#§() : Vector.<§,!K§>
      {
         if(!this.§<!T§)
         {
            this.§"#E§();
            return null;
         }
         return this.§<!T§;
      }
      
      public function get §,#!§() : Vector.<§,!K§>
      {
         if(!this.§1$B§)
         {
            this.§"#E§();
            return null;
         }
         return this.§1$B§;
      }
      
      public function get slingshots() : Vector.<§,!K§>
      {
         if(!this.§ $?§)
         {
            this.§"#E§();
            return null;
         }
         return this.§ $?§;
      }
      
      public function get § #R§() : Vector.<§,!K§>
      {
         if(!this.§<"[§)
         {
            this.§"#E§();
            return null;
         }
         return this.§<"[§;
      }
      
      public function get §=$$§() : Vector.<§,!K§>
      {
         if(!this.§1;§)
         {
            this.§"#E§();
            return null;
         }
         return this.§1;§;
      }
      
      public function §"#E§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§;"N§ || this.§ !s§ || this.§7@§ || this.§<!T§ || this.§1$B§ || this.§ $?§ || this.§1;§)
            {
               return;
            }
         }
         this.§;"N§ = true;
         this.§2]§ = new §'!n§();
         this.§2]§.addEventListener(Event.COMPLETE,this.§;0§);
         this.§2]§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!b§);
         this.§2]§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!b§);
         this.§2]§.addEventListener(§"!;§.§ #x§,this.§#!b§);
         this.§2]§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2]§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §;0§(param1:Event) : void
      {
         if(this.§2]§)
         {
            this.§2]§.removeEventListener(Event.COMPLETE,this.§;0§);
            this.§2]§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!b§);
            this.§2]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!b§);
            this.§2]§.removeEventListener(§"!;§.§ #x§,this.§#!b§);
            if(this.§2]§.data)
            {
               this.§>P§(this.§2]§.data);
               §<$?§.§?q§.§class§(this.§2]§.data);
            }
         }
         this.§2]§ = null;
         this.§;"N§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §>P§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§,!K§ = null;
         var _loc7_:Object = null;
         var _loc8_:§,!K§ = null;
         var _loc9_:Object = null;
         var _loc10_:§,!K§ = null;
         var _loc11_:Object = null;
         var _loc12_:§,!K§ = null;
         var _loc13_:Object = null;
         var _loc14_:§,!K§ = null;
         var _loc15_:§6f§ = null;
         var _loc16_:Object = null;
         var _loc17_:§,!K§ = null;
         this.§7@§ = new Vector.<§,!K§>();
         this.§ !s§ = new Vector.<§,!K§>();
         this.§<!T§ = new Vector.<§,!K§>();
         this.§1$B§ = new Vector.<§,!K§>();
         this.§ $?§ = new Vector.<§,!K§>();
         this.§<"[§ = new Vector.<§,!K§>();
         this.§1;§ = new Vector.<§,!K§>();
         this.§<!$§ = new Array();
         var _loc2_:§@"%§ = §@"%§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§-x§ = false;
         _loc2_.§1#j§ = false;
         _loc2_.§=q§ = false;
         _loc2_.§&e§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§<!$§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §8!^§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§0"c§(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §,!K§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§+!K§(_loc5_.prices);
                     this.§6k§(_loc5_);
                     this.§7@§.push(_loc6_);
                  }
                  break;
               case §!!x§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§ !<§.§'!J§(§ !<§.§2#i§) == § !<§.§<_§)
                     {
                        if(_loc7_.id == §0!w§.§'!z§.§]'§ || _loc7_.id == §0!w§.§<!y§.§]'§)
                        {
                           continue;
                        }
                     }
                     this.§0"c§(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §,!K§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§6k§(_loc7_);
                     this.§ !s§.push(_loc8_);
                  }
                  break;
               case §!0§:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§0"c§(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §,!K§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§6k§(_loc9_);
                     this.§<!T§.push(_loc10_);
                  }
                  break;
               case §!$9§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§0"c§(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §,!K§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§6k§(_loc11_);
                     this.§1$B§.push(_loc12_);
                  }
                  break;
               case §?$;§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§0"c§(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §,!K§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§6k§(_loc13_);
                     this.§ $?§.push(_loc14_);
                     if(_loc15_ = §7!S§.§%$<§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §'#y§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§0"c§(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §,!K§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§6k§(_loc16_);
                     this.§<"[§.push(_loc17_);
                  }
                  break;
               case §=$9§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§1;§.push(new §,!K§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.§+N§();
         }
      }
      
      private function §6k§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = §#$D§.§?q§.§<"M§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(param1["id"]))
            {
               return false;
            }
            §@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§@"%§(AngryBirdsBase.singleton.dataModel).§+d§.indexOf(_loc4_) == -1)
                  {
                     §@"%§(AngryBirdsBase.singleton.dataModel).§+d§.push(_loc4_);
                  }
                  if(§@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.indexOf(_loc5_) == -1)
                  {
                     §@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.push(_loc5_);
                  }
               }
               continue;
               return true;
            }
         }
         return false;
      }
      
      private function §0"c§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §#$D§.§?q§.§<"M§(param1) > 0 && !§3#1§.§9"h§)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §@"%§(AngryBirdsBase.singleton.dataModel).§1#j§ = true;
               }
               else if(§7!S§.§%$<§(param1))
               {
                  §@"%§(AngryBirdsBase.singleton.dataModel).§=q§ = true;
               }
               else
               {
                  §@"%§(AngryBirdsBase.singleton.dataModel).§&e§ = true;
               }
            }
         }
      }
      
      private function §+!K§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §@"%§(AngryBirdsBase.singleton.dataModel).§-x§ = true;
            }
         }
      }
      
      private function §#!b§(param1:Event) : void
      {
         this.§2]§.removeEventListener(Event.COMPLETE,this.§;0§);
         this.§2]§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!b§);
         this.§2]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!b§);
         this.§2]§.removeEventListener(§"!;§.§ #x§,this.§#!b§);
         this.§;"N§ = false;
         if(param1.type == §"!;§.§ #x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§]"d§));
         }
         else
         {
            this.§^!c§();
         }
         this.§2]§ = null;
      }
      
      protected function §^!c§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §]#%§(param1:String) : §,!K§
      {
         var _loc2_:§,!K§ = null;
         for each(_loc2_ in this.§3$+§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §6=§(param1:String) : §,!K§
      {
         var _loc2_:§,!K§ = null;
         for each(_loc2_ in this.slingshots)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get shops() : Array
      {
         return this.§<!$§;
      }
      
      public function §'$-§() : void
      {
         this.§7@§ = null;
         this.§ !s§ = null;
         this.§<!T§ = null;
         this.§1$B§ = null;
         this.§ $?§ = null;
         this.§<"[§ = null;
         this.§1;§ = null;
         this.§<!$§ = null;
         this.§2]§ = null;
      }
   }
}
