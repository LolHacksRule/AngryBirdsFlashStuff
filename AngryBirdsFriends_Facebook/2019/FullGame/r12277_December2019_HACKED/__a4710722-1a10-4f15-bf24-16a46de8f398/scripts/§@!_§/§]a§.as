package §@!_§
{
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import §#Q§.§ l§;
   import §&!A§.§7!8§;
   import §+!n§.§+!p§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §4#l§.§8#E§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §<"I§.§<$B§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §?$#§.§%2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §]a§ extends EventDispatcher
   {
      
      public static const §&l§:String = "POWER_UP";
      
      public static const §3L§:String = "AVATAR";
      
      public static const §6"f§:String = "SPECIAL";
      
      public static const §'#G§:String = "SLINGSHOT";
      
      public static const §^#Y§:String = "VC";
      
      public static const §'g§:String = "LEVEL";
      
      public static const §;#[§:String = "OFFER";
       
      
      private var §!"9§:§5"f§;
      
      private var §>"z§:Vector.<§8#E§>;
      
      private var §8!P§:Vector.<§8#E§>;
      
      private var §1"q§:Vector.<§8#E§>;
      
      private var §@"]§:Vector.<§8#E§>;
      
      private var §8#a§:Vector.<§8#E§>;
      
      private var §?"z§:Vector.<§8#E§>;
      
      private var §'b§:Vector.<§8#E§>;
      
      private var §2#C§:Object;
      
      private var §9#c§:Array;
      
      private var §2m§:Boolean = false;
      
      public function §]a§()
      {
         super();
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§2m§;
      }
      
      public function get §'"6§() : Vector.<§8#E§>
      {
         if(!this.§>"z§)
         {
            this.§!$"§();
            return null;
         }
         return this.§>"z§;
      }
      
      public function get § "[§() : Vector.<§8#E§>
      {
         if(!this.§8!P§)
         {
            this.§!$"§();
            return null;
         }
         return this.§8!P§;
      }
      
      public function get §4"g§() : Vector.<§8#E§>
      {
         if(!this.§1"q§)
         {
            this.§!$"§();
            return null;
         }
         return this.§1"q§;
      }
      
      public function get §3!R§() : Vector.<§8#E§>
      {
         if(!this.§@"]§)
         {
            this.§!$"§();
            return null;
         }
         return this.§@"]§;
      }
      
      public function get slingshots() : Vector.<§8#E§>
      {
         if(!this.§8#a§)
         {
            this.§!$"§();
            return null;
         }
         return this.§8#a§;
      }
      
      public function get §1!?§() : Vector.<§8#E§>
      {
         if(!this.§?"z§)
         {
            this.§!$"§();
            return null;
         }
         return this.§?"z§;
      }
      
      public function get §5"@§() : Vector.<§8#E§>
      {
         if(!this.§'b§)
         {
            this.§!$"§();
            return null;
         }
         return this.§'b§;
      }
      
      public function §!$"§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§2m§ || this.§>"z§ || this.§8!P§ || this.§1"q§ || this.§@"]§ || this.§8#a§ || this.§'b§)
            {
               return;
            }
         }
         this.§2m§ = true;
         this.§!"9§ = new §5"f§();
         this.§!"9§.addEventListener(Event.COMPLETE,this.§2!m§);
         this.§!"9§.addEventListener(IOErrorEvent.IO_ERROR,this.§9#+§);
         this.§!"9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9#+§);
         this.§!"9§.addEventListener(§;" §.§`S§,this.§9#+§);
         this.§!"9§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§!"9§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §2!m§(param1:Event) : void
      {
         if(this.§!"9§)
         {
            this.§!"9§.removeEventListener(Event.COMPLETE,this.§2!m§);
            this.§!"9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9#+§);
            this.§!"9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9#+§);
            this.§!"9§.removeEventListener(§;" §.§`S§,this.§9#+§);
            if(this.§!"9§.data)
            {
               this.§=#j§(this.§!"9§.data);
               § l§.§3"1§.§;"Q§(this.§!"9§.data);
            }
         }
         this.§!"9§ = null;
         this.§2m§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §=#j§(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§8#E§ = null;
         var _loc7_:Object = null;
         var _loc8_:§8#E§ = null;
         var _loc9_:Object = null;
         var _loc10_:§8#E§ = null;
         var _loc11_:Object = null;
         var _loc12_:§8#E§ = null;
         var _loc13_:Object = null;
         var _loc14_:§8#E§ = null;
         var _loc15_:§^#i§ = null;
         var _loc16_:Object = null;
         var _loc17_:§8#E§ = null;
         this.§8!P§ = new Vector.<§8#E§>();
         this.§>"z§ = new Vector.<§8#E§>();
         this.§1"q§ = new Vector.<§8#E§>();
         this.§@"]§ = new Vector.<§8#E§>();
         this.§8#a§ = new Vector.<§8#E§>();
         this.§?"z§ = new Vector.<§8#E§>();
         this.§'b§ = new Vector.<§8#E§>();
         this.§9#c§ = new Array();
         var _loc2_:§,#b§ = §,#b§(AngryBirdsBase.singleton.dataModel);
         _loc2_.§-!u§ = false;
         _loc2_.§1@§ = false;
         _loc2_.§#"J§ = false;
         _loc2_.§9]§ = false;
         for each(_loc3_ in param1.shops)
         {
            _loc4_ = {
               "id":_loc3_.id,
               "name":_loc3_.sn
            };
            this.§9#c§.push(_loc4_);
            switch(_loc3_.id)
            {
               case §^#Y§:
                  for each(_loc5_ in _loc3_.items)
                  {
                     this.§"8§(_loc5_.id,_loc5_.prices,true,false);
                     _loc6_ = new §8#E§(_loc5_.id,_loc5_.prices,false,_loc5_.c,_loc5_.ogo);
                     this.§'!0§(_loc5_.prices);
                     this.§="n§(_loc5_);
                     this.§8!P§.push(_loc6_);
                  }
                  break;
               case §&l§:
                  for each(_loc7_ in _loc3_.items)
                  {
                     if(§7!8§.§1"O§(§7!8§.§&$ §) == §7!8§.§'!N§)
                     {
                        if(_loc7_.id == §<$B§.§`"K§.§=#@§ || _loc7_.id == §<$B§.§!"C§.§=#@§)
                        {
                           continue;
                        }
                     }
                     this.§"8§(_loc7_.id,_loc7_.prices,false,false);
                     _loc8_ = new §8#E§(_loc7_.id,_loc7_.prices,false,_loc7_.c,"");
                     this.§="n§(_loc7_);
                     this.§>"z§.push(_loc8_);
                  }
                  break;
               case §3L§:
                  for each(_loc9_ in _loc3_.items)
                  {
                     this.§"8§(_loc9_.id,_loc9_.prices,false,false);
                     _loc10_ = new §8#E§(_loc9_.id,_loc9_.prices,false,_loc9_.c,"");
                     this.§="n§(_loc9_);
                     this.§1"q§.push(_loc10_);
                  }
                  break;
               case §6"f§:
                  for each(_loc11_ in _loc3_.items)
                  {
                     this.§"8§(_loc11_.id,_loc11_.prices,false,false);
                     _loc12_ = new §8#E§(_loc11_.id,_loc11_.prices,false,_loc11_.c,_loc11_.ogo);
                     this.§="n§(_loc11_);
                     this.§@"]§.push(_loc12_);
                  }
                  break;
               case §'#G§:
                  for each(_loc13_ in _loc3_.items)
                  {
                     this.§"8§(_loc13_.id,_loc13_.prices,false,true);
                     _loc14_ = new §8#E§(_loc13_.id,_loc13_.prices,false,_loc13_.c,_loc13_.ogo);
                     this.§="n§(_loc13_);
                     this.§8#a§.push(_loc14_);
                     if(_loc15_ = §[9§.§%"%§(_loc14_.id))
                     {
                        _loc15_.available = true;
                     }
                  }
                  break;
               case §'g§:
                  for each(_loc16_ in _loc3_.items)
                  {
                     this.§"8§(_loc16_.id,_loc16_.prices,false,true);
                     _loc17_ = new §8#E§(_loc16_.id,_loc16_.prices,false,_loc16_.c,_loc16_.ogo);
                     this.§="n§(_loc16_);
                     this.§?"z§.push(_loc17_);
                  }
                  break;
               case §;#[§:
                  if(_loc3_.items && _loc3_.items[0])
                  {
                     this.§'b§.push(new §8#E§(_loc3_.items[0].id,_loc3_.items[0].prices,false,_loc3_.items[0].c,_loc3_.items[0].ogo));
                  }
                  break;
            }
         }
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.§!p§();
         }
      }
      
      private function §="n§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:int = §!",§.§3"1§.§2![§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(param1["id"]))
            {
               return false;
            }
            §,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(param1["id"] + _loc3_["p"]))
               {
                  _loc4_ = param1["id"] + _loc3_["p"];
                  _loc5_ = param1["id"];
                  if(§,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.indexOf(_loc4_) == -1)
                  {
                     §,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.push(_loc4_);
                  }
                  if(§,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.indexOf(_loc5_) == -1)
                  {
                     §,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.push(_loc5_);
                  }
               }
               continue;
               return true;
            }
         }
         return false;
      }
      
      private function §"8§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §!",§.§3"1§.§2![§(param1) > 0 && !§%2§.§6"v§)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §,#b§(AngryBirdsBase.singleton.dataModel).§1@§ = true;
               }
               else if(§[9§.§%"%§(param1))
               {
                  §,#b§(AngryBirdsBase.singleton.dataModel).§#"J§ = true;
               }
               else
               {
                  §,#b§(AngryBirdsBase.singleton.dataModel).§9]§ = true;
               }
            }
         }
      }
      
      private function §'!0§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §,#b§(AngryBirdsBase.singleton.dataModel).§-!u§ = true;
            }
         }
      }
      
      private function §9#+§(param1:Event) : void
      {
         this.§!"9§.removeEventListener(Event.COMPLETE,this.§2!m§);
         this.§!"9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9#+§);
         this.§!"9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9#+§);
         this.§!"9§.removeEventListener(§;" §.§`S§,this.§9#+§);
         this.§2m§ = false;
         if(param1.type == §;" §.§`S§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§&_§));
         }
         else
         {
            this.§[T§();
         }
         this.§!"9§ = null;
      }
      
      protected function §[T§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §&!g§(param1:String) : §8#E§
      {
         var _loc2_:§8#E§ = null;
         for each(_loc2_ in this.§'"6§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §!s§(param1:String) : §8#E§
      {
         var _loc2_:§8#E§ = null;
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
         return this.§9#c§;
      }
      
      public function §0#K§() : void
      {
         this.§8!P§ = null;
         this.§>"z§ = null;
         this.§1"q§ = null;
         this.§@"]§ = null;
         this.§8#a§ = null;
         this.§?"z§ = null;
         this.§'b§ = null;
         this.§9#c§ = null;
         this.§!"9§ = null;
      }
   }
}
