package §;!H§
{
   import §"!U§.§=#V§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §+!d§.§&b§;
   import §+!d§.§3§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §8#_§ extends EventDispatcher
   {
      
      public static const §5#5§:String = "POWER_UP";
      
      public static const §2P§:String = "AVATAR";
      
      public static const §#l§:String = "SPECIAL";
      
      public static const §-#T§:String = "SLINGSHOT";
      
      public static const §`#"§:String = "VC";
      
      public static const §6#r§:String = "LEVEL";
       
      
      private var §80§:§5$!§;
      
      private var §[#m§:Vector.<§=#V§>;
      
      private var §1"d§:Vector.<§=#V§>;
      
      private var §0! §:Vector.<§=#V§>;
      
      private var §<#@§:Vector.<§=#V§>;
      
      private var §'d§:Vector.<§=#V§>;
      
      private var §5!e§:Vector.<§=#V§>;
      
      private var §1n§:Object;
      
      private var §'!m§:Array;
      
      private var §#!R§:Boolean = false;
      
      public function §8#_§()
      {
         super();
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§#!R§;
      }
      
      public function get §!!,§() : Vector.<§=#V§>
      {
         if(!this.§[#m§)
         {
            this.§?#v§();
            return null;
         }
         return this.§[#m§;
      }
      
      public function get §>m§() : Vector.<§=#V§>
      {
         if(!this.§1"d§)
         {
            this.§?#v§();
            return null;
         }
         return this.§1"d§;
      }
      
      public function get §[!T§() : Vector.<§=#V§>
      {
         if(!this.§0! §)
         {
            this.§?#v§();
            return null;
         }
         return this.§0! §;
      }
      
      public function get §!L§() : Vector.<§=#V§>
      {
         if(!this.§<#@§)
         {
            this.§?#v§();
            return null;
         }
         return this.§<#@§;
      }
      
      public function get slingshots() : Vector.<§=#V§>
      {
         if(!this.§'d§)
         {
            this.§?#v§();
            return null;
         }
         return this.§'d§;
      }
      
      public function get §"#K§() : Vector.<§=#V§>
      {
         if(!this.§5!e§)
         {
            this.§?#v§();
            return null;
         }
         return this.§5!e§;
      }
      
      public function §?#v§(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(this.§#!R§ || this.§[#m§ || this.§1"d§ || this.§0! § || this.§<#@§ || this.§'d§)
            {
               return;
            }
         }
         this.§#!R§ = true;
         this.§80§ = new §5$!§();
         this.§80§.addEventListener(Event.COMPLETE,this.§<L§);
         this.§80§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!'§);
         this.§80§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!'§);
         this.§80§.addEventListener(§>#J§.§-$%§,this.§&!'§);
         this.§80§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§80§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function §<L§(param1:Event) : void
      {
         if(this.§80§)
         {
            this.§80§.removeEventListener(Event.COMPLETE,this.§<L§);
            this.§80§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!'§);
            this.§80§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!'§);
            this.§80§.removeEventListener(§>#J§.§-$%§,this.§&!'§);
            if(this.§80§.data)
            {
               this.§]$4§(this.§80§.data);
            }
         }
         this.§80§ = null;
         this.§#!R§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §]$4§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§=#V§ = null;
         var _loc6_:Object = null;
         var _loc7_:§=#V§ = null;
         var _loc8_:Object = null;
         var _loc9_:§=#V§ = null;
         var _loc10_:Object = null;
         var _loc11_:§=#V§ = null;
         var _loc12_:Object = null;
         var _loc13_:§=#V§ = null;
         var _loc14_:§&b§ = null;
         var _loc15_:Object = null;
         var _loc16_:§=#V§ = null;
         this.§1"d§ = new Vector.<§=#V§>();
         this.§[#m§ = new Vector.<§=#V§>();
         this.§0! § = new Vector.<§=#V§>();
         this.§<#@§ = new Vector.<§=#V§>();
         this.§'d§ = new Vector.<§=#V§>();
         this.§5!e§ = new Vector.<§=#V§>();
         this.§'!m§ = new Array();
         §+3§(AngryBirdsBase.singleton.dataModel).§7"J§ = false;
         for each(_loc2_ in param1.shops)
         {
            _loc3_ = {
               "id":_loc2_.id,
               "name":_loc2_.sn
            };
            this.§'!m§.push(_loc3_);
            switch(_loc2_.id)
            {
               case §`#"§:
                  for each(_loc4_ in _loc2_.items)
                  {
                     this.§^"z§(_loc4_.id,_loc4_.prices,true,false);
                     _loc5_ = new §=#V§(_loc4_.id,_loc4_.prices,false,_loc4_.c,_loc4_.ogo);
                     this.§`x§(_loc4_.prices);
                     this.§%#>§(_loc4_);
                     this.§1"d§.push(_loc5_);
                  }
                  break;
               case §5#5§:
                  for each(_loc6_ in _loc2_.items)
                  {
                     this.§^"z§(_loc6_.id,_loc6_.prices,false,false);
                     _loc7_ = new §=#V§(_loc6_.id,_loc6_.prices,false,_loc6_.c,"");
                     this.§%#>§(_loc6_);
                     this.§[#m§.push(_loc7_);
                  }
                  break;
               case §2P§:
                  for each(_loc8_ in _loc2_.items)
                  {
                     this.§^"z§(_loc8_.id,_loc8_.prices,false,false);
                     _loc9_ = new §=#V§(_loc8_.id,_loc8_.prices,false,_loc8_.c,"");
                     this.§%#>§(_loc8_);
                     this.§0! §.push(_loc9_);
                  }
                  break;
               case §#l§:
                  for each(_loc10_ in _loc2_.items)
                  {
                     this.§^"z§(_loc10_.id,_loc10_.prices,false,false);
                     _loc11_ = new §=#V§(_loc10_.id,_loc10_.prices,false,_loc10_.c,_loc10_.ogo);
                     this.§%#>§(_loc10_);
                     this.§<#@§.push(_loc11_);
                  }
                  break;
               case §-#T§:
                  for each(_loc12_ in _loc2_.items)
                  {
                     this.§^"z§(_loc12_.id,_loc12_.prices,false,true);
                     _loc13_ = new §=#V§(_loc12_.id,_loc12_.prices,false,_loc12_.c,_loc12_.ogo);
                     this.§%#>§(_loc12_);
                     this.§'d§.push(_loc13_);
                     if(_loc14_ = §3#8§.§6#o§(_loc13_.id))
                     {
                        _loc14_.available = true;
                     }
                  }
                  break;
               case §6#r§:
                  for each(_loc15_ in _loc2_.items)
                  {
                     this.§^"z§(_loc15_.id,_loc15_.prices,false,true);
                     _loc16_ = new §=#V§(_loc15_.id,_loc15_.prices,false,_loc15_.c,_loc15_.ogo);
                     this.§%#>§(_loc15_);
                     this.§5!e§.push(_loc16_);
                  }
                  break;
            }
         }
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.§+"1§();
         }
      }
      
      private function §%#>§(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc2_:int = §%h§.§3!]§.§7#S§(param1.id);
         if(param1["as"] && _loc2_ <= 0)
         {
            if(§+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§0!f§(param1["id"]))
            {
               return false;
            }
            §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.push(param1["id"]);
            return true;
         }
         for each(_loc3_ in param1.prices)
         {
            if(_loc3_["as"])
            {
               if(!§+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§0!f§(param1["id"] + _loc3_["p"]))
               {
                  §+3§(AngryBirdsBase.singleton.dataModel).§5`§.push(param1["id"] + _loc3_["p"]);
                  §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.push(param1["id"]);
                  return true;
               }
               continue;
            }
         }
         return false;
      }
      
      private function §^"z§(param1:String, param2:Array, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         if(param4 && §%h§.§3!]§.§7#S§(param1) > 0)
         {
            return;
         }
         for each(_loc5_ in param2)
         {
            if(_loc5_.cp && Number(_loc5_.cp) > 0)
            {
               if(param3)
               {
                  §+3§(AngryBirdsBase.singleton.dataModel).§`#B§ = true;
               }
               else
               {
                  §+3§(AngryBirdsBase.singleton.dataModel).§2"t§ = true;
               }
            }
         }
      }
      
      private function §`x§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.so)
            {
               §+3§(AngryBirdsBase.singleton.dataModel).§7"J§ = true;
            }
         }
      }
      
      private function §&!'§(param1:Event) : void
      {
         this.§80§.removeEventListener(Event.COMPLETE,this.§<L§);
         this.§80§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!'§);
         this.§80§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!'§);
         this.§80§.removeEventListener(§>#J§.§-$%§,this.§&!'§);
         this.§#!R§ = false;
         if(param1.type == §>#J§.§-$%§)
         {
            this.§@!w§(ErrorPopup.§`"4§);
         }
         else
         {
            this.§=#r§();
         }
         this.§80§ = null;
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=#r§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §#!@§(param1:String) : §=#V§
      {
         var _loc2_:§=#V§ = null;
         for each(_loc2_ in this.§!!,§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §6!,§(param1:String) : §=#V§
      {
         var _loc2_:§=#V§ = null;
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
         return this.§'!m§;
      }
      
      public function §]!U§() : void
      {
         this.§1"d§ = null;
         this.§[#m§ = null;
         this.§0! § = null;
         this.§<#@§ = null;
         this.§'d§ = null;
         this.§5!e§ = null;
         this.§'!m§ = null;
         this.§80§ = null;
      }
   }
}
