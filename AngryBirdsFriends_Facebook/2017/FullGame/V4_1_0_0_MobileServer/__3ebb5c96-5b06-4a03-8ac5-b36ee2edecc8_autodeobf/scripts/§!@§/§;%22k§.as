package §!@§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+!C§.§@!^§;
   import §2F§.§>§;
   import §6"r§.§!#A§;
   import §7",§.§2#i§;
   import §;P§.§super§;
   import §<#m§.§^#o§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §[!E§.§>#`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §;"k§ extends EventDispatcher
   {
      
      public static const §?!f§:String = "POWER_UP";
      
      public static const §3"'§:String = "AVATAR";
      
      public static const §1"J§:String = "SPECIAL";
      
      public static const §<Y§:String = "SLINGSHOT";
      
      public static const §5"h§:String = "VC";
      
      public static const §@!+§:String = "LEVEL";
      
      public static const §'"z§:String = "OFFER";
       
      
      private var §'!s§:§4"v§;
      
      private var §8"z§:Vector.<§2#i§>;
      
      private var §6#w§:Vector.<§2#i§>;
      
      private var §@#'§:Vector.<§2#i§>;
      
      private var §9$%§:Vector.<§2#i§>;
      
      private var §,!F§:Vector.<§2#i§>;
      
      private var §5"D§:Vector.<§2#i§>;
      
      private var §5"2§:Vector.<§2#i§>;
      
      private var §[!P§:Object;
      
      private var §!?§:Array;
      
      private var §["s§:Boolean = false;
      
      public function §;"k§()
      {
         super();
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§["s§;
      }
      
      public function get § #q§() : Vector.<§2#i§>
      {
         if(!this.§8"z§)
         {
            this.§ "O§();
            return null;
         }
         return this.§8"z§;
      }
      
      public function get §'"I§() : Vector.<§2#i§>
      {
         if(!this.§6#w§)
         {
            this.§ "O§();
            return null;
         }
         return this.§6#w§;
      }
      
      public function get §<#+§() : Vector.<§2#i§>
      {
         if(!this.§@#'§)
         {
            this.§ "O§();
            return null;
         }
         return this.§@#'§;
      }
      
      public function get §,#@§() : Vector.<§2#i§>
      {
         if(!this.§9$%§)
         {
            this.§ "O§();
            return null;
         }
         return this.§9$%§;
      }
      
      public function get slingshots() : Vector.<§2#i§>
      {
         if(!this.§,!F§)
         {
            this.§ "O§();
            return null;
         }
         return this.§,!F§;
      }
      
      public function get § #-§() : Vector.<§2#i§>
      {
         if(!this.§5"D§)
         {
            this.§ "O§();
            return null;
         }
         return this.§5"D§;
      }
      
      public function get §9!X§() : Vector.<§2#i§>
      {
         if(!this.§5"2§)
         {
            this.§ "O§();
            return null;
         }
         return this.§5"2§;
      }
      
      public function § "O§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§["s§ || this.§8"z§ || this.§6#w§ || this.§@#'§ || this.§9$%§ || this.§,!F§ || this.§5"2§)
            {
               return;
            }
         }
         this.§["s§ = true;
         this.§'!s§ = new §4"v§();
         this.§'!s§.addEventListener(Event.COMPLETE,this.§1!9§);
         this.§'!s§.addEventListener(IOErrorEvent.IO_ERROR,this.§!#3§);
         this.§'!s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#3§);
         this.§'!s§.addEventListener(§]e§.§5!;§,this.§!#3§);
         this.§'!s§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§'!s§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §1!9§(param1:Event) : void
      {
         if(this.§'!s§)
         {
            this.§'!s§.removeEventListener(Event.COMPLETE,this.§1!9§);
            this.§'!s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#3§);
            this.§'!s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#3§);
            this.§'!s§.removeEventListener(§]e§.§5!;§,this.§!#3§);
            if(this.§'!s§.data)
            {
               this.§ !E§(this.§'!s§.data);
               §>#`§.§ "D§.§7"`§(this.§'!s§.data);
            }
         }
         this.§'!s§ = null;
         this.§["s§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function § !E§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§2#i§ = null;
         var _loc7_:Object = null;
         var _loc8_:§2#i§ = null;
         var _loc9_:Object = null;
         var _loc10_:§2#i§ = null;
         var _loc11_:Object = null;
         var _loc12_:§2#i§ = null;
         var _loc13_:Object = null;
         var _loc14_:§2#i§ = null;
         var _loc15_:§6!u§ = null;
         var _loc16_:Object = null;
         var _loc17_:§2#i§ = null;
         this.§6#w§ = new Vector.<§2#i§>();
         this.§8"z§ = new Vector.<§2#i§>();
         this.§@#'§ = new Vector.<§2#i§>();
         this.§9$%§ = new Vector.<§2#i§>();
         this.§,!F§ = new Vector.<§2#i§>();
         this.§5"D§ = new Vector.<§2#i§>();
         this.§5"2§ = new Vector.<§2#i§>();
         this.§!?§ = new Array();
         var _loc2_:§`]§ = §`]§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§?4§ = false;
         _loc2_.§@!$§ = false;
         _loc2_.§7!Z§ = false;
         _loc2_.§9q§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§!?§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §5"h§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§<$ §(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §2#i§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§1"8§(_loc5_.prices);
                     this.§,!o§(_loc5_);
                     this.§6#w§.push(_loc6_);
                  }
                  break;
               case §?!f§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§>#0§.§5f§(§>#0§.§%,§) == §>#0§.§2!]§)
                     {
                        if(_loc7_.id == §super§.§["0§.§?"9§ || _loc7_.id == §super§.§9!T§.§?"9§)
                        {
                           continue;
                        }
                     }
                     this.§<$ §(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §2#i§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§,!o§(_loc7_);
                     this.§8"z§.push(_loc8_);
                  }
                  break;
               case §3"'§:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§<$ §(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §2#i§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§,!o§(_loc9_);
                     this.§@#'§.push(_loc10_);
                  }
                  break;
               case §1"J§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§<$ §(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §2#i§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§,!o§(_loc11_);
                     this.§9$%§.push(_loc12_);
                  }
                  break;
               case §<Y§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§<$ §(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §2#i§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§,!o§(_loc13_);
                     this.§,!F§.push(_loc14_);
                     if(_loc15_ = §7"G§.§-o§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §@!+§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§<$ §(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §2#i§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§,!o§(_loc16_);
                     this.§5"D§.push(_loc17_);
                  }
                  break;
               case §'"z§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§5"2§.push(new §2#i§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.§`'§();
         }
      }
      
      private function §,!o§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = §4"W§.§ "D§.§04§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(param1["id"]))
            {
               return false;
            }
            §`]§(AngryBirdsBase.singleton.dataModel).§^#h§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§`]§(AngryBirdsBase.singleton.dataModel).§!"z§.indexOf(_loc4_) == -1)
                  {
                     §`]§(AngryBirdsBase.singleton.dataModel).§!"z§.push(_loc4_);
                  }
               }
               continue;
               if(§`]§(AngryBirdsBase.singleton.dataModel).§^#h§.indexOf(_loc5_) == -1)
               {
                  §`]§(AngryBirdsBase.singleton.dataModel).§^#h§.push(_loc5_);
               }
               return true;
            }
         }
         return false;
      }
      
      private function §<$ §(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §4"W§.§ "D§.§04§(param1) > 0 && !§@!^§.§]"K§)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §`]§(AngryBirdsBase.singleton.dataModel).§@!$§ = true;
               }
               else if(§7"G§.§-o§(param1))
               {
                  §`]§(AngryBirdsBase.singleton.dataModel).§7!Z§ = true;
               }
               else
               {
                  §`]§(AngryBirdsBase.singleton.dataModel).§9q§ = true;
               }
            }
         }
      }
      
      private function §1"8§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §`]§(AngryBirdsBase.singleton.dataModel).§?4§ = true;
            }
         }
      }
      
      private function §!#3§(param1:Event) : void
      {
         this.§'!s§.removeEventListener(Event.COMPLETE,this.§1!9§);
         this.§'!s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#3§);
         this.§'!s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#3§);
         this.§'!s§.removeEventListener(§]e§.§5!;§,this.§!#3§);
         this.§["s§ = false;
         if(param1.type == §]e§.§5!;§)
         {
            this.§[#U§(ErrorPopup.§?"V§);
         }
         else
         {
            this.§=!,§();
         }
         this.§'!s§ = null;
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §#X§(param1:String) : §2#i§
      {
         var _loc2_:§2#i§ = null;
         for each(_loc2_ in this.§ #q§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §+#^§(param1:String) : §2#i§
      {
         var _loc2_:§2#i§ = null;
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
         return this.§!?§;
      }
      
      public function §6!f§() : void
      {
         this.§6#w§ = null;
         this.§8"z§ = null;
         this.§@#'§ = null;
         this.§9$%§ = null;
         this.§,!F§ = null;
         this.§5"D§ = null;
         this.§5"2§ = null;
         this.§!?§ = null;
         this.§'!s§ = null;
      }
   }
}
