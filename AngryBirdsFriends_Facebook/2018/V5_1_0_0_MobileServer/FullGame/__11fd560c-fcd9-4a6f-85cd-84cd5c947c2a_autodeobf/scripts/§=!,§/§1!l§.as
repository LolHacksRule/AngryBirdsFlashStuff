package §=!,§
{
   import §&"`§.§"#x§;
   import §2G§.§#"8§;
   import §;#D§.§3#U§;
   import §>#G§.§%6§;
   import §>#G§.§-!,§;
   import §@V§.§0X§;
   import §[#[§.§=#Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1!l§ extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const § "[§:String = "UpdateWallet";
      
      public static const §>#,§:String = "SaleDataSet";
      
      private static var §!c§:§1!l§;
       
      
      private var §!!#§:Array;
      
      private var §]#g§:String;
      
      private var §7"`§:Number;
      
      private var §&!g§:Number;
      
      private var §5Z§:§-!,§;
      
      private var §@!I§:Boolean;
      
      public function §1!l§()
      {
         this.§!!#§ = [];
         super();
         this.§@!I§ = false;
      }
      
      public static function get §6!§() : §1!l§
      {
         if(§!c§ == null)
         {
            §!c§ = new §1!l§();
         }
         return §!c§;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      public function §;!<§(param1:Object) : void
      {
         var _loc2_:§#"8§ = null;
         var _loc3_:* = null;
         var _loc4_:§%6§ = null;
         if(!param1.scet)
         {
            this.§?!5§();
            return;
         }
         if(param1.scst)
         {
            this.§7"`§ = param1.scst;
            this.§&!g§ = 0;
         }
         else
         {
            this.§7"`§ = 0;
            this.§&!g§ = param1.scet;
            this.§!!#§ = new Array();
            if(param1.scid == NON_SPENDER_AUTO_SALE)
            {
               this.§!!#§.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               _loc2_ = §#"8§(AngryBirdsBase.singleton.dataModel);
               if(_loc2_.§]2§)
               {
                  this.§!!#§.push("Coins");
               }
               if(_loc2_.§ P§)
               {
                  this.§!!#§.push("Slingshots");
               }
               if(_loc2_.§'"k§)
               {
                  this.§!!#§.push("Powerups");
               }
            }
            if(this.§!!#§.length == 0)
            {
               this.§?!5§();
               return;
            }
         }
         if(param1.scid && this.§]#g§ != param1.scid)
         {
            this.§]#g§ = param1.scid;
            _loc3_ = §,A§.§4"+§ + param1.scid + ".swf";
            _loc4_ = new §%6§();
            this.§5Z§ = new §-!,§(true);
            this.§5Z§.init(§0X§.§+!D§(),"",§,A§.§2#O§.§&#e§(),_loc4_,null,(§3#U§.§9#^§ as §,A§).§-"f§());
            this.§5Z§.§7"0§();
            this.§5Z§.§?2§(<library swf="{_loc3_}"/>);
            this.§5Z§.§&",§(this.§5@§);
         }
         else
         {
            this.§]#g§ = param1.scid;
            this.§@!I§ = true;
            dispatchEvent(new Event(§>#,§));
         }
      }
      
      private function §52§(param1:Event = null, param2:Vector.<§"#x§> = null) : void
      {
         dataModel.§-!h§.removeEventListener(Event.COMPLETE,this.§52§);
      }
      
      public function §?!5§() : void
      {
         this.§]#g§ = "";
         this.§@!I§ = false;
         this.§7"`§ = 0;
         this.§&!g§ = 0;
         this.§!!#§ = new Array();
         dispatchEvent(new Event(§>#,§));
         (§3#U§.§9#^§ as §,A§).§"#v§();
      }
      
      public function §0$7§() : Array
      {
         return this.§!!#§;
      }
      
      private function §for§() : Number
      {
         if(this.§7"`§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§7"`§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§7"`§ = 0;
         }
         return _loc2_;
      }
      
      private function §]#M§() : Number
      {
         if(this.§&!g§ == 0)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§&!g§ - _loc1_) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ == 0)
         {
            this.§&!g§ = 0;
         }
         return _loc2_;
      }
      
      public function §-<§() : Boolean
      {
         return this.§for§() <= 0 && this.§]#M§() > 0;
      }
      
      public function §-x§() : void
      {
         dispatchEvent(new Event(§ "[§));
         if(this.§@!I§)
         {
            if(this.§for§() == 0)
            {
               if(this.§]#M§() == 0)
               {
                  this.§@!I§ = false;
                  dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
                  dataModel.§-!h§.§6"s§(true);
               }
            }
         }
      }
      
      public function § d§() : String
      {
         return §=#Q§.§-#D§(this.§]#M§());
      }
      
      public function get §3$!§() : String
      {
         if(!this.§]#g§)
         {
            return "";
         }
         return this.§]#g§;
      }
      
      public function get §?!#§() : Number
      {
         if(!this.§&!g§)
         {
            return 0;
         }
         return this.§&!g§;
      }
      
      private function §5@§() : void
      {
         this.§5Z§.§^#2§();
         this.§5Z§ = null;
         this.§@!I§ = true;
         dispatchEvent(new Event(§>#,§));
      }
   }
}
