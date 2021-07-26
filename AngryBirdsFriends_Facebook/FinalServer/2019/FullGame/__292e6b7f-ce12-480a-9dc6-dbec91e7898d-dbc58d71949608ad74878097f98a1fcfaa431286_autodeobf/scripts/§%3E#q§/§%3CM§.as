package §>#q§
{
   import § $0§.§5R§;
   import §"N§.§^!r§;
   import §#g§.§<!N§;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §9T§.§ "T§;
   import §>!f§.§>#-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §<M§ extends EventDispatcher
   {
      
      public static const §7H§:String = "POWER_UP";
      
      public static const §3#5§:String = "AVATAR";
      
      public static const §7"y§:String = "SPECIAL";
      
      public static const §1$-§:String = "SLINGSHOT";
      
      public static const §1$0§:String = "VC";
      
      public static const §%>§:String = "LEVEL";
      
      public static const §,"+§:String = "OFFER";
       
      
      private var §2"q§:§-$C§;
      
      private var §<l§:Vector.<§2_§>;
      
      private var §=X§:Vector.<§2_§>;
      
      private var §4!z§:Vector.<§2_§>;
      
      private var §2!s§:Vector.<§2_§>;
      
      private var §!"5§:Vector.<§2_§>;
      
      private var §#"D§:Vector.<§2_§>;
      
      private var §>"X§:Vector.<§2_§>;
      
      private var §,a§:Object;
      
      private var §[!5§:Array;
      
      private var §&#a§:Boolean = false;
      
      public function §<M§()
      {
         super();
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§&#a§;
      }
      
      public function get §"!S§() : Vector.<§2_§>
      {
         if(!this.§<l§)
         {
            this.§#"N§();
            return null;
         }
         return this.§<l§;
      }
      
      public function get §`!6§() : Vector.<§2_§>
      {
         if(!this.§=X§)
         {
            this.§#"N§();
            return null;
         }
         return this.§=X§;
      }
      
      public function get §-!C§() : Vector.<§2_§>
      {
         if(!this.§4!z§)
         {
            this.§#"N§();
            return null;
         }
         return this.§4!z§;
      }
      
      public function get §<#o§() : Vector.<§2_§>
      {
         if(!this.§2!s§)
         {
            this.§#"N§();
            return null;
         }
         return this.§2!s§;
      }
      
      public function get slingshots() : Vector.<§2_§>
      {
         if(!this.§!"5§)
         {
            this.§#"N§();
            return null;
         }
         return this.§!"5§;
      }
      
      public function get §0"Z§() : Vector.<§2_§>
      {
         if(!this.§#"D§)
         {
            this.§#"N§();
            return null;
         }
         return this.§#"D§;
      }
      
      public function get §2"k§() : Vector.<§2_§>
      {
         if(!this.§>"X§)
         {
            this.§#"N§();
            return null;
         }
         return this.§>"X§;
      }
      
      public function §#"N§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§&#a§ || this.§<l§ || this.§=X§ || this.§4!z§ || this.§2!s§ || this.§!"5§ || this.§>"X§)
            {
               return;
            }
         }
         this.§&#a§ = true;
         this.§2"q§ = new §-$C§();
         this.§2"q§.addEventListener(Event.COMPLETE,this.§#!>§);
         this.§2"q§.addEventListener(IOErrorEvent.IO_ERROR,this.§"#8§);
         this.§2"q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"#8§);
         this.§2"q§.addEventListener(§+!p§.§2$9§,this.§"#8§);
         this.§2"q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"q§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §#!>§(param1:Event) : void
      {
         if(this.§2"q§)
         {
            this.§2"q§.removeEventListener(Event.COMPLETE,this.§#!>§);
            this.§2"q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"#8§);
            this.§2"q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"#8§);
            this.§2"q§.removeEventListener(§+!p§.§2$9§,this.§"#8§);
            if(this.§2"q§.data)
            {
               this.§5"R§(this.§2"q§.data);
               §^!r§.§+!,§.§<#@§(this.§2"q§.data);
            }
         }
         this.§2"q§ = null;
         this.§&#a§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §5"R§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§2_§ = null;
         var _loc7_:Object = null;
         var _loc8_:§2_§ = null;
         var _loc9_:Object = null;
         var _loc10_:§2_§ = null;
         var _loc11_:Object = null;
         var _loc12_:§2_§ = null;
         var _loc13_:Object = null;
         var _loc14_:§2_§ = null;
         var _loc15_:§3!B§ = null;
         var _loc16_:Object = null;
         var _loc17_:§2_§ = null;
         this.§=X§ = new Vector.<§2_§>();
         this.§<l§ = new Vector.<§2_§>();
         this.§4!z§ = new Vector.<§2_§>();
         this.§2!s§ = new Vector.<§2_§>();
         this.§!"5§ = new Vector.<§2_§>();
         this.§#"D§ = new Vector.<§2_§>();
         this.§>"X§ = new Vector.<§2_§>();
         this.§[!5§ = new Array();
         var _loc2_:§=#o§ = §=#o§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§8!#§ = false;
         _loc2_.§^^§ = false;
         _loc2_.§`![§ = false;
         _loc2_.§[!§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§[!5§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §1$0§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§,"m§(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §2_§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§`#g§(_loc5_.prices);
                     this.§!"P§(_loc5_);
                     this.§=X§.push(_loc6_);
                  }
                  break;
               case §7H§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§>#-§.§5$<§(§>#-§.§4$0§) == §>#-§.§9"§)
                     {
                        if(_loc7_.id == § "T§.§="E§.§8t§ || _loc7_.id == § "T§.§=$%§.§8t§)
                        {
                           continue;
                        }
                     }
                     this.§,"m§(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §2_§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§!"P§(_loc7_);
                     this.§<l§.push(_loc8_);
                  }
                  break;
               case §3#5§:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§,"m§(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §2_§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§!"P§(_loc9_);
                     this.§4!z§.push(_loc10_);
                  }
                  break;
               case §7"y§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§,"m§(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §2_§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§!"P§(_loc11_);
                     this.§2!s§.push(_loc12_);
                  }
                  break;
               case §1$-§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§,"m§(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §2_§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§!"P§(_loc13_);
                     this.§!"5§.push(_loc14_);
                     if(_loc15_ = §[@§.§[#P§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §%>§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§,"m§(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §2_§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§!"P§(_loc16_);
                     this.§#"D§.push(_loc17_);
                  }
                  break;
               case §,"+§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§>"X§.push(new §2_§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§]$?§.§;u§ as §@z§).§8!;§)
         {
            (§]$?§.§;u§ as §@z§).§8!;§.§8!4§();
         }
      }
      
      private function §!"P§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = §]#0§.§+!,§.§,#k§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(param1["id"]))
            {
               return false;
            }
            §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§=#o§(AngryBirdsBase.singleton.dataModel).§45§.indexOf(_loc4_) == -1)
                  {
                     §=#o§(AngryBirdsBase.singleton.dataModel).§45§.push(_loc4_);
                  }
               }
               continue;
               if(§=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.indexOf(_loc5_) == -1)
               {
                  §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.push(_loc5_);
               }
               return true;
            }
         }
         return false;
      }
      
      private function §,"m§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §]#0§.§+!,§.§,#k§(param1) > 0 && !§<!N§.§]# §)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §=#o§(AngryBirdsBase.singleton.dataModel).§^^§ = true;
               }
               else if(§[@§.§[#P§(param1))
               {
                  §=#o§(AngryBirdsBase.singleton.dataModel).§`![§ = true;
               }
               else
               {
                  §=#o§(AngryBirdsBase.singleton.dataModel).§[!§ = true;
               }
            }
         }
      }
      
      private function §`#g§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §=#o§(AngryBirdsBase.singleton.dataModel).§8!#§ = true;
            }
         }
      }
      
      private function §"#8§(param1:Event) : void
      {
         this.§2"q§.removeEventListener(Event.COMPLETE,this.§#!>§);
         this.§2"q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"#8§);
         this.§2"q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"#8§);
         this.§2"q§.removeEventListener(§+!p§.§2$9§,this.§"#8§);
         this.§&#a§ = false;
         if(param1.type == §+!p§.§2$9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§-#d§));
         }
         else
         {
            this.§4!0§();
         }
         this.§2"q§ = null;
      }
      
      protected function §4!0§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §'"k§(param1:String) : §2_§
      {
         var _loc2_:§2_§ = null;
         for each(_loc2_ in this.§"!S§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §'$#§(param1:String) : §2_§
      {
         var _loc2_:§2_§ = null;
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
         return this.§[!5§;
      }
      
      public function §@!-§() : void
      {
         this.§=X§ = null;
         this.§<l§ = null;
         this.§4!z§ = null;
         this.§2!s§ = null;
         this.§!"5§ = null;
         this.§#"D§ = null;
         this.§>"X§ = null;
         this.§[!5§ = null;
         this.§2"q§ = null;
      }
   }
}
