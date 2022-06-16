package §1"N§
{
   import §&"`§.§"#x§;
   import §&$!§.§%#k§;
   import §&N§.§5#"§;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §;#D§.§3#U§;
   import §=!,§.§1!l§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@0§.§<!v§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §+#`§ extends EventDispatcher
   {
      
      public static const §<$5§:String = "POWER_UP";
      
      public static const §;$ §:String = "AVATAR";
      
      public static const §3"j§:String = "SPECIAL";
      
      public static const §%"G§:String = "SLINGSHOT";
      
      public static const §,R§:String = "VC";
      
      public static const §4j§:String = "LEVEL";
      
      public static const §`#$§:String = "OFFER";
       
      
      private var §`v§:§1"V§;
      
      private var §case §:Vector.<§"#x§>;
      
      private var §,!c§:Vector.<§"#x§>;
      
      private var §8!c§:Vector.<§"#x§>;
      
      private var § $=§:Vector.<§"#x§>;
      
      private var §!!X§:Vector.<§"#x§>;
      
      private var §9;§:Vector.<§"#x§>;
      
      private var §>g§:Vector.<§"#x§>;
      
      private var §9#4§:Object;
      
      private var §#Y§:Array;
      
      private var §"6§:Boolean = false;
      
      public function §+#`§()
      {
         super();
      }
      
      public function get §8R§() : Boolean
      {
         return this.§"6§;
      }
      
      public function get §#!a§() : Vector.<§"#x§>
      {
         if(!this.§case §)
         {
            this.§6"s§();
            return null;
         }
         return this.§case §;
      }
      
      public function get §]'§() : Vector.<§"#x§>
      {
         if(!this.§,!c§)
         {
            this.§6"s§();
            return null;
         }
         return this.§,!c§;
      }
      
      public function get §,#,§() : Vector.<§"#x§>
      {
         if(!this.§8!c§)
         {
            this.§6"s§();
            return null;
         }
         return this.§8!c§;
      }
      
      public function get §]!g§() : Vector.<§"#x§>
      {
         if(!this.§ $=§)
         {
            this.§6"s§();
            return null;
         }
         return this.§ $=§;
      }
      
      public function get slingshots() : Vector.<§"#x§>
      {
         if(!this.§!!X§)
         {
            this.§6"s§();
            return null;
         }
         return this.§!!X§;
      }
      
      public function get §+#G§() : Vector.<§"#x§>
      {
         if(!this.§9;§)
         {
            this.§6"s§();
            return null;
         }
         return this.§9;§;
      }
      
      public function get §="]§() : Vector.<§"#x§>
      {
         if(!this.§>g§)
         {
            this.§6"s§();
            return null;
         }
         return this.§>g§;
      }
      
      public function §6"s§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§"6§ || this.§case § || this.§,!c§ || this.§8!c§ || this.§ $=§ || this.§!!X§ || this.§>g§)
            {
               return;
            }
         }
         this.§"6§ = true;
         this.§`v§ = new §1"V§();
         this.§`v§.addEventListener(Event.COMPLETE,this.§8"B§);
         this.§`v§.addEventListener(IOErrorEvent.IO_ERROR,this.§6e§);
         this.§`v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6e§);
         this.§`v§.addEventListener(§;m§.§!$5§,this.§6e§);
         this.§`v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§`v§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §8"B§(param1:Event) : void
      {
         if(this.§`v§)
         {
            this.§`v§.removeEventListener(Event.COMPLETE,this.§8"B§);
            this.§`v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6e§);
            this.§`v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6e§);
            this.§`v§.removeEventListener(§;m§.§!$5§,this.§6e§);
            if(this.§`v§.data)
            {
               this.§]"Z§(this.§`v§.data);
               §1!l§.§6!§.§;!<§(this.§`v§.data);
            }
         }
         this.§`v§ = null;
         this.§"6§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §]"Z§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§"#x§ = null;
         var _loc7_:Object = null;
         var _loc8_:§"#x§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"#x§ = null;
         var _loc11_:Object = null;
         var _loc12_:§"#x§ = null;
         var _loc13_:Object = null;
         var _loc14_:§"#x§ = null;
         var _loc15_:§'#v§ = null;
         var _loc16_:Object = null;
         var _loc17_:§"#x§ = null;
         this.§,!c§ = new Vector.<§"#x§>();
         this.§case § = new Vector.<§"#x§>();
         this.§8!c§ = new Vector.<§"#x§>();
         this.§ $=§ = new Vector.<§"#x§>();
         this.§!!X§ = new Vector.<§"#x§>();
         this.§9;§ = new Vector.<§"#x§>();
         this.§>g§ = new Vector.<§"#x§>();
         this.§#Y§ = new Array();
         var _loc2_:§#"8§ = §#"8§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§;h§ = false;
         _loc2_.§]2§ = false;
         _loc2_.§ P§ = false;
         _loc2_.§'"k§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§#Y§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §,R§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§8!+§(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §"#x§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§4a§(_loc5_.prices);
                     this.§3R§(_loc5_);
                     this.§,!c§.push(_loc6_);
                  }
                  break;
               case §<$5§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§5#"§.§+6§(§5#"§.§!#$§) == §5#"§.§2"r§)
                     {
                        if(_loc7_.id == §%#k§.§]k§.§5"g§ || _loc7_.id == §%#k§.§@#l§.§5"g§)
                        {
                           continue;
                        }
                     }
                     this.§8!+§(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §"#x§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§3R§(_loc7_);
                     this.§case §.push(_loc8_);
                  }
                  break;
               case §;$ §:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§8!+§(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §"#x§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§3R§(_loc9_);
                     this.§8!c§.push(_loc10_);
                  }
                  break;
               case §3"j§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§8!+§(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §"#x§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§3R§(_loc11_);
                     this.§ $=§.push(_loc12_);
                  }
                  break;
               case §%"G§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§8!+§(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §"#x§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§3R§(_loc13_);
                     this.§!!X§.push(_loc14_);
                     if(_loc15_ = §4"c§.§2;§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §4j§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§8!+§(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §"#x§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§3R§(_loc16_);
                     this.§9;§.push(_loc17_);
                  }
                  break;
               case §`#$§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§>g§.push(new §"#x§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.§+#w§();
         }
      }
      
      private function §3R§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = §-#+§.§6!§.§=b§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(param1["id"]))
            {
               return false;
            }
            §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.indexOf(_loc4_) == -1)
                  {
                     §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.push(_loc4_);
                  }
               }
               continue;
               if(§#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.indexOf(_loc5_) == -1)
               {
                  §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.push(_loc5_);
               }
               return true;
            }
         }
         return false;
      }
      
      private function §8!+§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §-#+§.§6!§.§=b§(param1) > 0 && !§<!v§.§+#o§)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §#"8§(AngryBirdsBase.singleton.dataModel).§]2§ = true;
               }
               else if(§4"c§.§2;§(param1))
               {
                  §#"8§(AngryBirdsBase.singleton.dataModel).§ P§ = true;
               }
               else
               {
                  §#"8§(AngryBirdsBase.singleton.dataModel).§'"k§ = true;
               }
            }
         }
      }
      
      private function §4a§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §#"8§(AngryBirdsBase.singleton.dataModel).§;h§ = true;
            }
         }
      }
      
      private function §6e§(param1:Event) : void
      {
         this.§`v§.removeEventListener(Event.COMPLETE,this.§8"B§);
         this.§`v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6e§);
         this.§`v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6e§);
         this.§`v§.removeEventListener(§;m§.§!$5§,this.§6e§);
         this.§"6§ = false;
         if(param1.type == §;m§.§!$5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§=!%§));
         }
         else
         {
            this.§<#Y§();
         }
         this.§`v§ = null;
      }
      
      protected function §<#Y§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §&B§(param1:String) : §"#x§
      {
         var _loc2_:§"#x§ = null;
         for each(_loc2_ in this.§#!a§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §7#;§(param1:String) : §"#x§
      {
         var _loc2_:§"#x§ = null;
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
         return this.§#Y§;
      }
      
      public function §]"f§() : void
      {
         this.§,!c§ = null;
         this.§case § = null;
         this.§8!c§ = null;
         this.§ $=§ = null;
         this.§!!X§ = null;
         this.§9;§ = null;
         this.§>g§ = null;
         this.§#Y§ = null;
         this.§`v§ = null;
      }
   }
}
