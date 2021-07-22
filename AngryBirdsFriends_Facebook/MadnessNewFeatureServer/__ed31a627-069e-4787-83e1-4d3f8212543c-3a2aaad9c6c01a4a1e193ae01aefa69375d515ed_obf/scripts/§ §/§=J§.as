package § §#4
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §5" §.§=n§;
   import §6#f§.§<!M§;
   import §>2§.§?##§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §=J§ extends EventDispatcher
   {
      
      public static const §7"I§:String = "POWER_UP";
      
      public static const §%$0§:String = "AVATAR";
      
      public static const §%"Z§:String = "SPECIAL";
      
      public static const §'#]§:String = "SLINGSHOT";
      
      public static const §?"f§:String = "VC";
      
      public static const §2=§:String = "LEVEL";
      
      public static const §#M§:String = "OFFER";
       
      
      private var §?#H§:§!!o§;
      
      private var §@$,§:Vector.<§=n§>;
      
      private var §>"P§:Vector.<§=n§>;
      
      private var §+M§:Vector.<§=n§>;
      
      private var §,w§:Vector.<§=n§>;
      
      private var §#$=§:Vector.<§=n§>;
      
      private var §0"l§:Vector.<§=n§>;
      
      private var §=C§:Vector.<§=n§>;
      
      private var §%"@§:Object;
      
      private var §+"V§:Array;
      
      private var §7#e§:Boolean = false;
      
      public function §=J§()
      {
         super();
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§7#e§;
      }
      
      public function get §,!d§() : Vector.<§=n§>
      {
         if(!this.§@$,§)
         {
            this.§;"4§();
            return null;
         }
         return this.§@$,§;
      }
      
      public function get §8!5§() : Vector.<§=n§>
      {
         if(!this.§>"P§)
         {
            this.§;"4§();
            return null;
         }
         return this.§>"P§;
      }
      
      public function get §^@§() : Vector.<§=n§>
      {
         if(!this.§+M§)
         {
            this.§;"4§();
            return null;
         }
         return this.§+M§;
      }
      
      public function get §"M§() : Vector.<§=n§>
      {
         if(!this.§,w§)
         {
            this.§;"4§();
            return null;
         }
         return this.§,w§;
      }
      
      public function get slingshots() : Vector.<§=n§>
      {
         if(!this.§#$=§)
         {
            this.§;"4§();
            return null;
         }
         return this.§#$=§;
      }
      
      public function get §&i§() : Vector.<§=n§>
      {
         if(!this.§0"l§)
         {
            this.§;"4§();
            return null;
         }
         return this.§0"l§;
      }
      
      public function get §""8§() : Vector.<§=n§>
      {
         if(!this.§=C§)
         {
            this.§;"4§();
            return null;
         }
         return this.§=C§;
      }
      
      public function §;"4§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§7#e§ || this.§@$,§ || this.§>"P§ || this.§+M§ || this.§,w§ || this.§#$=§ || this.§=C§)
            {
               return;
            }
         }
         this.§7#e§ = true;
         this.§?#H§ = new §!!o§();
         this.§?#H§.addEventListener(Event.COMPLETE,this.§7"P§);
         this.§?#H§.addEventListener(IOErrorEvent.IO_ERROR,this.§-i§);
         this.§?#H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-i§);
         this.§?#H§.addEventListener(§>5§.§@!@§,this.§-i§);
         this.§?#H§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§?#H§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §7"P§(param1:Event) : void
      {
         if(this.§?#H§)
         {
            this.§?#H§.removeEventListener(Event.COMPLETE,this.§7"P§);
            this.§?#H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-i§);
            this.§?#H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-i§);
            this.§?#H§.removeEventListener(§>5§.§@!@§,this.§-i§);
            if(this.§?#H§.data)
            {
               this.§^#Y§(this.§?#H§.data);
               §<!M§.§`"H§.§]n§(this.§?#H§.data);
            }
         }
         this.§?#H§ = null;
         this.§7#e§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §^#Y§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§=n§ = null;
         var _loc7_:Object = null;
         var _loc8_:§=n§ = null;
         var _loc9_:Object = null;
         var _loc10_:§=n§ = null;
         var _loc11_:Object = null;
         var _loc12_:§=n§ = null;
         var _loc13_:Object = null;
         var _loc14_:§=n§ = null;
         var _loc15_:§ $<§ = null;
         var _loc16_:Object = null;
         var _loc17_:§=n§ = null;
         this.§>"P§ = new Vector.<§=n§>();
         this.§@$,§ = new Vector.<§=n§>();
         this.§+M§ = new Vector.<§=n§>();
         this.§,w§ = new Vector.<§=n§>();
         this.§#$=§ = new Vector.<§=n§>();
         this.§0"l§ = new Vector.<§=n§>();
         this.§=C§ = new Vector.<§=n§>();
         this.§+"V§ = new Array();
         var _loc2_:§4!Q§ = §4!Q§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§7z§ = false;
         _loc2_.§7#_§ = false;
         _loc2_.§%#o§ = false;
         _loc2_.§;!u§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§+"V§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §?"f§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§1!F§(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §=n§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§6!g§(_loc5_.prices);
                     this.§>U§(_loc5_);
                     this.§>"P§.push(_loc6_);
                  }
                  break;
               case §7"I§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§,#l§.§`!x§(§,#l§.§,=§) == §,#l§.§<t§)
                     {
                        if(_loc7_.id == §+"d§.§ !T§.§1#7§ || _loc7_.id == §+"d§.§,!$§.§1#7§)
                        {
                           continue;
                        }
                     }
                     this.§1!F§(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §=n§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§>U§(_loc7_);
                     this.§@$,§.push(_loc8_);
                  }
                  break;
               case §%$0§:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§1!F§(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §=n§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§>U§(_loc9_);
                     this.§+M§.push(_loc10_);
                  }
                  break;
               case §%"Z§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§1!F§(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §=n§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§>U§(_loc11_);
                     this.§,w§.push(_loc12_);
                  }
                  break;
               case §'#]§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§1!F§(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §=n§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§>U§(_loc13_);
                     this.§#$=§.push(_loc14_);
                     if(_loc15_ = §0$@§.§"P§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §2=§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§1!F§(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §=n§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§>U§(_loc16_);
                     this.§0"l§.push(_loc17_);
                  }
                  break;
               case §#M§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§=C§.push(new §=n§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.§,"l§();
         }
      }
      
      private function §>U§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = § $?§.§`"H§.§0#s§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(param1["id"]))
            {
               return false;
            }
            §4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.indexOf(_loc4_) == -1)
                  {
                     §4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.push(_loc4_);
                  }
               }
               continue;
               if(§4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.indexOf(_loc5_) == -1)
               {
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.push(_loc5_);
               }
               return true;
            }
         }
         return false;
      }
      
      private function §1!F§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && § $?§.§`"H§.§0#s§(param1) > 0 && !§?##§.§6!2§)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§7#_§ = true;
               }
               else if(§0$@§.§"P§(param1))
               {
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§%#o§ = true;
               }
               else
               {
                  §4!Q§(AngryBirdsBase.singleton.dataModel).§;!u§ = true;
               }
            }
         }
      }
      
      private function §6!g§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §4!Q§(AngryBirdsBase.singleton.dataModel).§7z§ = true;
            }
         }
      }
      
      private function §-i§(param1:Event) : void
      {
         this.§?#H§.removeEventListener(Event.COMPLETE,this.§7"P§);
         this.§?#H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-i§);
         this.§?#H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-i§);
         this.§?#H§.removeEventListener(§>5§.§@!@§,this.§-i§);
         this.§7#e§ = false;
         if(param1.type == §>5§.§@!@§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $@§));
         }
         else
         {
            this.§;%§();
         }
         this.§?#H§ = null;
      }
      
      protected function §;%§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function § #8§(param1:String) : §=n§
      {
         var _loc2_:§=n§ = null;
         for each(_loc2_ in this.§,!d§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8"_§(param1:String) : §=n§
      {
         var _loc2_:§=n§ = null;
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
         return this.§+"V§;
      }
      
      public function §1!$§() : void
      {
         this.§>"P§ = null;
         this.§@$,§ = null;
         this.§+M§ = null;
         this.§,w§ = null;
         this.§#$=§ = null;
         this.§0"l§ = null;
         this.§=C§ = null;
         this.§+"V§ = null;
         this.§?#H§ = null;
      }
   }
}
