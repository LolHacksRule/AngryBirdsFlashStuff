package §#Q§
{
   import §!!H§.§ $4§;
   import §%#^§.§""P§;
   import §%#^§.§;!g§;
   import §+!n§.§+!p§;
   import §4#l§.§8#E§;
   import §7"1§.§[#U§;
   import §>#Y§.§,#b§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class § l§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const §%,§:String = "UpdateWallet";
      
      public static const §-"i§:String = "SaleDataSet";
      
      private static var §!#m§:§ l§;
       
      
      private var §5!Q§:Array;
      
      private var §1$%§:String;
      
      private var §`!o§:Number;
      
      private var §#0§:Number;
      
      private var §["f§:§;!g§;
      
      private var §3!N§:Boolean;
      
      public function § l§()
      {
         this.§5!Q§ = [];
         super();
         this.§3!N§ = false;
      }
      
      public static function get §3"1§() : § l§
      {
         if(§!#m§ == null)
         {
            §!#m§ = new § l§();
         }
         return §!#m§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public function §;"Q§(param1:Object) : void
      {
         var _loc2_:§,#b§ = null;
         var _loc3_:* = null;
         var _loc4_:§""P§ = null;
         if(!param1.scet)
         {
            this.§8#G§();
            return;
         }
         if(param1.scst)
         {
            this.§`!o§ = param1.scst;
            this.§#0§ = 0;
         }
         else
         {
            this.§`!o§ = 0;
            this.§#0§ = param1.scet;
            this.§5!Q§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§5!Q§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §,#b§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§1@§)
               {
                  this.§5!Q§.push("Coins");
               }
               if(_loc2_.§#"J§)
               {
                  this.§5!Q§.push("Slingshots");
               }
               if(_loc2_.§9]§)
               {
                  this.§5!Q§.push("Powerups");
               }
            }
            if(this.§5!Q§.length == 0)
            {
               this.§8#G§();
               return;
            }
         }
         if(param1.scid && this.§1$%§ != param1.scid)
         {
            this.§1$%§ = param1.scid;
            _loc3_ = §^"a§.§""§ + param1.scid + ".swf";
            _loc4_ = new §""P§();
            this.§["f§ = new §;!g§(true);
            this.§["f§.init(§[#U§.§ 5§(),"",§^"a§.§9!h§.§4[§(),_loc4_,null,(§+!p§.§;"-§ as §^"a§).§#!1§());
            this.§["f§.§'!X§();
            this.§["f§.§?#Q§(<library swf="{_loc3_}"/>);
            this.§["f§.§`#y§(this.§6"T§);
         }
         else
         {
            this.§1$%§ = param1.scid;
            this.§3!N§ = true;
            dispatchEvent(new Event(§-"i§));
         }
      }
      
      private function §"W§(param1:Event = null, param2:Vector.<§8#E§> = null) : void
      {
         dataModel.§+!J§.removeEventListener(Event.COMPLETE,this.§"W§);
      }
      
      public function §8#G§() : void
      {
         this.§1$%§ = "";
         this.§3!N§ = false;
         this.§`!o§ = 0;
         this.§#0§ = 0;
         this.§5!Q§ = new Array();
         dispatchEvent(new Event(§-"i§));
         (§+!p§.§;"-§ as §^"a§).§,#@§();
      }
      
      public function §4!7§() : Array
      {
         return this.§5!Q§;
      }
      
      private function §2#m§() : Number
      {
         if(this.§`!o§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§`!o§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§`!o§ = 0;
         }
         return _loc2_;
      }
      
      private function §@!-§() : Number
      {
         if(this.§#0§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§#0§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§#0§ = 0;
         }
         return _loc2_;
      }
      
      public function §7"O§() : Boolean
      {
         return this.§2#m§() <= 0 && this.§@!-§() > 0;
      }
      
      public function §@$#§() : void
      {
         dispatchEvent(new Event(§%,§));
         if(this.§3!N§)
         {
            if(this.§2#m§() == 0)
            {
               if(this.§@!-§() == 0)
               {
                  this.§3!N§ = false;
                  dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
                  dataModel.§+!J§.§!$"§(true);
               }
            }
         }
      }
      
      public function §&!§() : String
      {
         return § $4§.§]#"§(this.§@!-§());
      }
      
      public function get §>!`§() : String
      {
         if(!this.§1$%§)
         {
            return "";
         }
         return this.§1$%§;
      }
      
      public function get §!"u§() : Number
      {
         if(!this.§#0§)
         {
            return 0;
         }
         return this.§#0§;
      }
      
      private function §6"T§() : void
      {
         this.§["f§.§4"y§();
         this.§["f§ = null;
         this.§3!N§ = true;
         dispatchEvent(new Event(§-"i§));
      }
   }
}
