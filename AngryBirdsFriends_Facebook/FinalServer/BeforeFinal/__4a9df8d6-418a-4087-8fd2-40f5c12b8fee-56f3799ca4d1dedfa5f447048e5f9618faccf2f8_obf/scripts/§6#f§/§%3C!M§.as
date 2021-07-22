package §6#f§
{
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §-u§.§&#+§;
   import §-u§.§0"E§;
   import §1L§.§;u§;
   import §5" §.§=n§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §<!M§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const §'#Y§:String = "UpdateWallet";
      
      public static const §"! §:String = "SaleDataSet";
      
      private static var §1$8§:§<!M§;
       
      
      private var §18§:Array;
      
      private var §0!q§:String;
      
      private var §6#p§:Number;
      
      private var §8">§:Number;
      
      private var §5"x§:§&#+§;
      
      private var §5'§:Boolean;
      
      public function §<!M§()
      {
         this.§18§ = [];
         super();
         this.§5'§ = false;
      }
      
      public static function get §`"H§() : §<!M§
      {
         if(§1$8§ == null)
         {
            §1$8§ = new §<!M§();
         }
         return §1$8§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public function §]n§(param1:Object) : void
      {
         var _loc2_:§4!Q§ = null;
         var _loc3_:* = null;
         var _loc4_:§0"E§ = null;
         if(!param1.scet)
         {
            this.§,$;§();
            return;
         }
         if(param1.scst)
         {
            this.§6#p§ = param1.scst;
            this.§8">§ = 0;
         }
         else
         {
            this.§6#p§ = 0;
            this.§8">§ = param1.scet;
            this.§18§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§18§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §4!Q§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§7#_§)
               {
                  this.§18§.push("Coins");
               }
               if(_loc2_.§%#o§)
               {
                  this.§18§.push("Slingshots");
               }
               if(_loc2_.§;!u§)
               {
                  this.§18§.push("Powerups");
               }
            }
            if(this.§18§.length == 0)
            {
               this.§,$;§();
               return;
            }
         }
         if(param1.scid && this.§0!q§ != param1.scid)
         {
            this.§0!q§ = param1.scid;
            _loc3_ = § #v§.§"#h§ + param1.scid + ".swf";
            _loc4_ = new §0"E§();
            this.§5"x§ = new §&#+§(true);
            this.§5"x§.init(§;u§.§2!,§(),"",§ #v§.§1!!§.§^!X§(),_loc4_,null,(§7n§.§-$<§ as § #v§).§]"v§());
            this.§5"x§.§[$6§();
            this.§5"x§.§?"'§(<library swf="{_loc3_}"/>);
            this.§5"x§.§ #!§(this.§1#A§);
         }
         else
         {
            this.§0!q§ = param1.scid;
            this.§5'§ = true;
            dispatchEvent(new Event(§"! §));
         }
      }
      
      private function §-A§(param1:Event = null, param2:Vector.<§=n§> = null) : void
      {
         dataModel.§="N§.removeEventListener(Event.COMPLETE,this.§-A§);
      }
      
      public function §,$;§() : void
      {
         this.§0!q§ = "";
         this.§5'§ = false;
         this.§6#p§ = 0;
         this.§8">§ = 0;
         this.§18§ = new Array();
         dispatchEvent(new Event(§"! §));
         (§7n§.§-$<§ as § #v§).§!#-§();
      }
      
      public function §@"i§() : Array
      {
         return this.§18§;
      }
      
      private function § #R§() : Number
      {
         if(this.§6#p§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§6#p§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§6#p§ = 0;
         }
         return _loc2_;
      }
      
      private function §'"^§() : Number
      {
         if(this.§8">§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§8">§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§8">§ = 0;
         }
         return _loc2_;
      }
      
      public function §!!>§() : Boolean
      {
         return this.§ #R§() <= 0 && this.§'"^§() > 0;
      }
      
      public function §8!@§() : void
      {
         dispatchEvent(new Event(§'#Y§));
         if(this.§5'§)
         {
            if(this.§ #R§() == 0)
            {
               if(this.§'"^§() == 0)
               {
                  this.§5'§ = false;
                  dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
                  dataModel.§="N§.§;"4§(true);
               }
            }
         }
      }
      
      public function §=#7§() : String
      {
         return §;"x§.§'I§(this.§'"^§());
      }
      
      public function get §"#^§() : String
      {
         if(!this.§0!q§)
         {
            return "";
         }
         return this.§0!q§;
      }
      
      public function get §9s§() : Number
      {
         if(!this.§8">§)
         {
            return 0;
         }
         return this.§8">§;
      }
      
      private function §1#A§() : void
      {
         this.§5"x§.§5!y§();
         this.§5"x§ = null;
         this.§5'§ = true;
         dispatchEvent(new Event(§"! §));
      }
   }
}
