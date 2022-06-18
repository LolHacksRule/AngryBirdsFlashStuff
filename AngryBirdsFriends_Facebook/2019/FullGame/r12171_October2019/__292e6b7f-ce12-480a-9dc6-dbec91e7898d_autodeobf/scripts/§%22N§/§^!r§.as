package §"N§
{
   import §&?§.§!M§;
   import §&?§.§5"f§;
   import §,#,§.§=#o§;
   import §4S§.§<#j§;
   import §?#z§.§]$?§;
   import §`"t§.§7"U§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^!r§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const §>^§:String = "UpdateWallet";
      
      public static const §0!A§:String = "SaleDataSet";
      
      private static var §+#!§:§^!r§;
       
      
      private var §7#U§:Array;
      
      private var §0#m§:String;
      
      private var §8!9§:Number;
      
      private var §5!J§:Number;
      
      private var §8!=§:§5"f§;
      
      private var §@$"§:Boolean;
      
      public function §^!r§()
      {
         this.§7#U§ = [];
         super();
         this.§@$"§ = false;
      }
      
      public static function get §+!,§() : §^!r§
      {
         if(§+#!§ == null)
         {
            §+#!§ = new §^!r§();
         }
         return §+#!§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public function §<#@§(param1:Object) : void
      {
         var _loc2_:§=#o§ = null;
         var _loc3_:* = null;
         var _loc4_:§!M§ = null;
         if(!param1.scet)
         {
            this.§@!K§();
            return;
         }
         if(param1.scst)
         {
            this.§8!9§ = param1.scst;
            this.§5!J§ = 0;
         }
         else
         {
            this.§8!9§ = 0;
            this.§5!J§ = param1.scet;
            this.§7#U§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§7#U§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §=#o§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§^^§)
               {
                  this.§7#U§.push("Coins");
               }
               if(_loc2_.§`![§)
               {
                  this.§7#U§.push("Slingshots");
               }
               if(_loc2_.§[!§)
               {
                  this.§7#U§.push("Powerups");
               }
            }
            if(this.§7#U§.length == 0)
            {
               this.§@!K§();
               return;
            }
         }
         if(param1.scid && this.§0#m§ != param1.scid)
         {
            this.§0#m§ = param1.scid;
            _loc3_ = §@z§.§#9§ + param1.scid + ".swf";
            _loc4_ = new §!M§();
            this.§8!=§ = new §5"f§(true);
            this.§8!=§.init(§<#j§.§<!b§(),"",§@z§.§ !D§.§!X§(),_loc4_,null,(§]$?§.§;u§ as §@z§).§5u§());
            this.§8!=§.§?p§();
            this.§8!=§.§,b§(<library swf="{_loc3_}"/>);
            this.§8!=§.§4H§(this.§7#`§);
         }
         else
         {
            this.§0#m§ = param1.scid;
            this.§@$"§ = true;
            dispatchEvent(new Event(§0!A§));
         }
      }
      
      private function §@$1§(param1:Event = null, param2:Vector.<§2_§> = null) : void
      {
         dataModel.§[h§.removeEventListener(Event.COMPLETE,this.§@$1§);
      }
      
      public function §@!K§() : void
      {
         this.§0#m§ = "";
         this.§@$"§ = false;
         this.§8!9§ = 0;
         this.§5!J§ = 0;
         this.§7#U§ = new Array();
         dispatchEvent(new Event(§0!A§));
         (§]$?§.§;u§ as §@z§).§!"B§();
      }
      
      public function §;G§() : Array
      {
         return this.§7#U§;
      }
      
      private function §3#k§() : Number
      {
         if(this.§8!9§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§8!9§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§8!9§ = 0;
         }
         return _loc2_;
      }
      
      private function §&"%§() : Number
      {
         if(this.§5!J§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§5!J§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§5!J§ = 0;
         }
         return _loc2_;
      }
      
      public function §+'§() : Boolean
      {
         return this.§3#k§() <= 0 && this.§&"%§() > 0;
      }
      
      public function §!S§() : void
      {
         dispatchEvent(new Event(§>^§));
         if(this.§@$"§)
         {
            if(this.§3#k§() == 0)
            {
               if(this.§&"%§() == 0)
               {
                  this.§@$"§ = false;
                  dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
                  dataModel.§[h§.§#"N§(true);
               }
            }
         }
      }
      
      public function §^#J§() : String
      {
         return §7"U§.§0!G§(this.§&"%§());
      }
      
      public function get §7S§() : String
      {
         if(!this.§0#m§)
         {
            return "";
         }
         return this.§0#m§;
      }
      
      public function get §?#m§() : Number
      {
         if(!this.§5!J§)
         {
            return 0;
         }
         return this.§5!J§;
      }
      
      private function §7#`§() : void
      {
         this.§8!=§.§=#F§();
         this.§8!=§ = null;
         this.§@$"§ = true;
         dispatchEvent(new Event(§0!A§));
      }
   }
}
