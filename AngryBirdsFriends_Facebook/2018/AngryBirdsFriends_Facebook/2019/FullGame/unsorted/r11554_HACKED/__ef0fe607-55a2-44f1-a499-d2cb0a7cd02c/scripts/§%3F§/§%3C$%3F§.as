package §?§#2
{
   import §!!?§.§,!K§;
   import §8"b§.§&!b§;
   import §9#o§.§,#t§;
   import §9#o§.§5@§;
   import §=!2§.§%"T§;
   import §>"Q§.§>!d§;
   import §]"'§.§@"%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §<$?§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const §;"I§:String = "UpdateWallet";
      
      public static const § !O§:String = "SaleDataSet";
      
      private static var §#!5§:§<$?§;
       
      
      private var §8-§:Array;
      
      private var §&!>§:String;
      
      private var §,# §:Number;
      
      private var §'<§:Number;
      
      private var §;#_§:§,#t§;
      
      private var §3#^§:Boolean;
      
      public function §<$?§()
      {
         this.§8-§ = [];
         super();
         this.§3#^§ = false;
      }
      
      public static function get §?q§() : §<$?§
      {
         if(§#!5§ == null)
         {
            §#!5§ = new §<$?§();
         }
         return §#!5§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public function §class§(param1:Object) : void
      {
         var _loc2_:§@"%§ = null;
         var _loc3_:* = null;
         var _loc4_:§5@§ = null;
         if(!param1.scet)
         {
            this.§7#g§();
            return;
         }
         if(param1.scst)
         {
            this.§,# § = param1.scst;
            this.§'<§ = 0;
         }
         else
         {
            this.§,# § = 0;
            this.§'<§ = param1.scet;
            this.§8-§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§8-§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §@"%§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§1#j§)
               {
                  this.§8-§.push("Coins");
               }
               if(_loc2_.§=q§)
               {
                  this.§8-§.push("Slingshots");
               }
               if(_loc2_.§&e§)
               {
                  this.§8-§.push("Powerups");
               }
            }
            if(this.§8-§.length == 0)
            {
               this.§7#g§();
               return;
            }
         }
         if(param1.scid && this.§&!>§ != param1.scid)
         {
            this.§&!>§ = param1.scid;
            _loc3_ = §'"a§.§9$;§ + param1.scid + ".swf";
            _loc4_ = new §5@§();
            this.§;#_§ = new §,#t§(true);
            this.§;#_§.init(§>!d§.§5!9§(),"",§'"a§.§!!8§.§@!q§(),_loc4_,null,(§%"T§.§>$<§ as §'"a§).§,![§());
            this.§;#_§.§"a§();
            this.§;#_§.§=!D§(<library swf="{_loc3_}"/>);
            this.§;#_§.§!#c§(this.§>#v§);
         }
         else
         {
            this.§&!>§ = param1.scid;
            this.§3#^§ = true;
            dispatchEvent(new Event(§ !O§));
         }
      }
      
      private function §9"-§(param1:Event = null, param2:Vector.<§,!K§> = null) : void
      {
         dataModel.§,H§.removeEventListener(Event.COMPLETE,this.§9"-§);
      }
      
      public function §7#g§() : void
      {
         this.§&!>§ = "";
         this.§3#^§ = false;
         this.§,# § = 0;
         this.§'<§ = 0;
         this.§8-§ = new Array();
         dispatchEvent(new Event(§ !O§));
         (§%"T§.§>$<§ as §'"a§).§3#H§();
      }
      
      public function §3!=§() : Array
      {
         return this.§8-§;
      }
      
      private function §["#§() : Number
      {
         if(this.§,# § == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§,# § - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§,# § = 0;
         }
         return _loc2_;
      }
      
      private function §&"C§() : Number
      {
         if(this.§'<§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§'<§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§'<§ = 0;
         }
         return _loc2_;
      }
      
      public function §4u§() : Boolean
      {
         return this.§["#§() <= 0 && this.§&"C§() > 0;
      }
      
      public function §["_§() : void
      {
         dispatchEvent(new Event(§;"I§));
         if(this.§3#^§)
         {
            if(this.§["#§() == 0)
            {
               if(this.§&"C§() == 0)
               {
                  this.§3#^§ = false;
                  dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
                  dataModel.§,H§.§"#E§(true);
               }
            }
         }
      }
      
      public function §]"b§() : String
      {
         return §&!b§.§@!n§(this.§&"C§());
      }
      
      public function get §9,§() : String
      {
         if(!this.§&!>§)
         {
            return "";
         }
         return this.§&!>§;
      }
      
      public function get §^G§() : Number
      {
         if(!this.§'<§)
         {
            return 0;
         }
         return this.§'<§;
      }
      
      private function §>#v§() : void
      {
         this.§;#_§.§1"b§();
         this.§;#_§ = null;
         this.§3#^§ = true;
         dispatchEvent(new Event(§ !O§));
      }
   }
}
