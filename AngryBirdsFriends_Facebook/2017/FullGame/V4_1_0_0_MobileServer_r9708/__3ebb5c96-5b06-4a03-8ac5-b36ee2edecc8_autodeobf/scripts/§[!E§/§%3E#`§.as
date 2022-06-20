package §[!E§
{
   import § $%§.§ $7§;
   import §&"J§.§`]§;
   import §6"r§.§!#A§;
   import §7",§.§2#i§;
   import §>!I§.§%#'§;
   import §>!I§.§@!q§;
   import §^#]§.§@!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>#`§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const §,"U§:String = "UpdateWallet";
      
      public static const §0!D§:String = "SaleDataSet";
      
      private static var §%#b§:§>#`§;
       
      
      private var §[#5§:Array;
      
      private var §!!§:String;
      
      private var §^!B§:Number;
      
      private var §<W§:Number;
      
      private var §'! §:§@!q§;
      
      private var §]#[§:Boolean;
      
      public function §>#`§()
      {
         this.§[#5§ = [];
         super();
         this.§]#[§ = false;
      }
      
      public static function get § "D§() : §>#`§
      {
         if(§%#b§ == null)
         {
            §%#b§ = new §>#`§();
         }
         return §%#b§;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      public function §7"`§(param1:Object) : void
      {
         var _loc2_:§`]§ = null;
         var _loc3_:* = null;
         var _loc4_:§%#'§ = null;
         if(!param1.scet)
         {
            this.§[!]§();
            return;
         }
         if(param1.scst)
         {
            this.§^!B§ = param1.scst;
            this.§<W§ = 0;
         }
         else
         {
            this.§^!B§ = 0;
            this.§<W§ = param1.scet;
            this.§[#5§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§[#5§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §`]§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§@!$§)
               {
                  this.§[#5§.push("Coins");
               }
               if(_loc2_.§7!Z§)
               {
                  this.§[#5§.push("Slingshots");
               }
               if(_loc2_.§9q§)
               {
                  this.§[#5§.push("Powerups");
               }
            }
            if(this.§[#5§.length == 0)
            {
               this.§[!]§();
               return;
            }
         }
         if(param1.scid && this.§!!§ != param1.scid)
         {
            this.§!!§ = param1.scid;
            _loc3_ = §-#+§.§8I§ + param1.scid + ".swf";
            _loc4_ = new §%#'§();
            this.§'! § = new §@!q§(true);
            this.§'! §.init(§ $7§.§<J§(),"",§-#+§.§;!$§.§>"[§(),_loc4_,null,(§!#A§.§>q§ as §-#+§).§5<§());
            this.§'! §.§8#N§();
            this.§'! §.§'"g§(<library swf="{_loc3_}"/>);
            this.§'! §.§?!+§(this.§@!?§);
         }
         else
         {
            this.§!!§ = param1.scid;
            this.§]#[§ = true;
            dispatchEvent(new Event(§0!D§));
         }
      }
      
      private function §&q§(param1:Event = null, param2:Vector.<§2#i§> = null) : void
      {
         dataModel.§#"r§.removeEventListener(Event.COMPLETE,this.§&q§);
      }
      
      public function §[!]§() : void
      {
         this.§!!§ = "";
         this.§]#[§ = false;
         this.§^!B§ = 0;
         this.§<W§ = 0;
         this.§[#5§ = new Array();
         dispatchEvent(new Event(§0!D§));
         (§!#A§.§>q§ as §-#+§).§4"T§();
      }
      
      public function § $=§() : Array
      {
         return this.§[#5§;
      }
      
      private function §["#§() : Number
      {
         if(this.§^!B§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§^!B§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§^!B§ = 0;
         }
         return _loc2_;
      }
      
      private function §]!]§() : Number
      {
         if(this.§<W§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§<W§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§<W§ = 0;
         }
         return _loc2_;
      }
      
      public function §+"]§() : Boolean
      {
         return this.§["#§() <= 0 && this.§]!]§() > 0;
      }
      
      public function §2#v§() : void
      {
         dispatchEvent(new Event(§,"U§));
         if(this.§]#[§)
         {
            if(this.§["#§() == 0)
            {
               if(this.§]!]§() == 0)
               {
                  this.§]#[§ = false;
                  dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
                  dataModel.§#"r§.§ "O§(true);
               }
            }
         }
      }
      
      public function § Q§() : String
      {
         return §@!g§.§else §(this.§]!]§());
      }
      
      public function get §&"A§() : String
      {
         if(!this.§!!§)
         {
            return "";
         }
         return this.§!!§;
      }
      
      public function get §'!#§() : Number
      {
         if(!this.§<W§)
         {
            return 0;
         }
         return this.§<W§;
      }
      
      private function §@!?§() : void
      {
         this.§'! §.§<!z§();
         this.§'! § = null;
         this.§]#[§ = true;
         dispatchEvent(new Event(§0!D§));
      }
   }
}
