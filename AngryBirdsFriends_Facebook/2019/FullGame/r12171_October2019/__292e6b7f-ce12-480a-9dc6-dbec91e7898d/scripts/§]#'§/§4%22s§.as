package §]#'§
{
   import §!L§.§`#u§;
   import §'n§.§+"g§;
   import §,#,§.§3!R§;
   import §,#,§.§=#o§;
   import §-$'§.§6!w§;
   import §2!Y§.§4!h§;
   import §?#z§.§]$?§;
   import §^"G§.§2+§;
   import §`,§.§7!$§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §4"s§ extends EventDispatcher
   {
      
      private static var §+#!§:§4"s§;
      
      private static const § "X§:String = "Profile";
      
      private static const §#a§:String = "Standings";
      
      private static const §8#§:String = "AllUnconcluded";
      
      private static const §6$?§:String = "AllPrevious";
      
      public static const §'!,§:String = "CachePlayerLeagueStandings";
      
      private static var §]!q§:Boolean = false;
      
      public static var §9#P§:int = 2;
       
      
      private var §'@§:§3$-§;
      
      private var §^!#§:Object;
      
      private var §3#,§:Array;
      
      private var §>_§:Object;
      
      private var §1!S§:Object;
      
      private var mPreviousResult:Object;
      
      private var §1n§:§6!w§;
      
      private var §'-§:Boolean = false;
      
      private var §#+§:Object;
      
      private var §;"%§:Dictionary;
      
      private var §7;§:Object;
      
      public function §4"s§()
      {
         this.§;"%§ = new Dictionary();
         super();
         this.§1n§ = new §6!w§();
         this.§1n§.addEventListener(§+"g§.§0$1§,this.§["&§);
         this.§#+§ = new Object();
         this.§;"%§[§'!,§] = §7!$§.§1#7§;
      }
      
      public static function get §+!,§() : §4"s§
      {
         if(§+#!§ == null)
         {
            §+#!§ = new §4"s§();
         }
         return §+#!§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§'-§ = param1;
      }
      
      protected function §1p§(param1:§+"g§) : void
      {
         this.§1!S§ = param1.data;
         this.§1n§.addEventListener(§+"g§.§0=§,this.§0"s§);
         this.§1n§.§-!U§();
         dispatchEvent(new §+"g§(§+"g§.§1!5§));
         this.§1n§.removeEventListener(§+"g§.§-#o§,this.§1p§);
         this.§="U§(§8#§);
      }
      
      protected function §0"s§(param1:§+"g§) : void
      {
         this.§1n§.removeEventListener(§+"g§.§0=§,this.§0"s§);
         this.mPreviousResult = param1.data;
         this.§="U§(§6$?§);
      }
      
      public function §08§(param1:int) : void
      {
         this.§#+§ = new Object();
         this.§1n§.addEventListener(§+"g§.§,^§,this.§]V§);
         this.§#+§[§ "X§] = false;
         this.§1n§.§>"u§(param1);
         this.§1n§.addEventListener(§+"g§.§=!?§,this.§8u§);
         this.§#+§[§#a§] = false;
         this.§1n§.§^!R§(param1);
         if(§@z§.§ P§)
         {
            this.§1n§.addEventListener(§+"g§.§-#o§,this.§1p§);
            this.§#+§[§8#§] = false;
            this.§1n§.§="1§(param1);
            this.§#+§[§6$?§] = false;
            §@z§.§ P§ = false;
         }
      }
      
      private function §="U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§#+§)
         {
            return;
         }
         this.§#+§[param1] = true;
         for each(_loc2_ in this.§#+§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §+"g§(§+"g§.§7#i§));
      }
      
      public function §#!+§(param1:int) : void
      {
         this.§1n§.§"!^§(param1);
      }
      
      public function §27§() : void
      {
         this.§1n§.§27§();
      }
      
      public function §;#"§() : void
      {
         this.§^!#§ = null;
         this.§7;§ = null;
         this.§3#,§ = null;
         this.§;#I§();
         this.mPreviousResult = null;
         this.§1n§.§]"?§();
         this.§1n§.§-#5§();
      }
      
      public function §;#I§() : void
      {
         this.§1!S§ = null;
      }
      
      protected function §8u§(param1:§+"g§) : void
      {
         var _loc2_:String = null;
         this.§1n§.removeEventListener(§+"g§.§=!?§,this.§8u§);
         if(param1.data.li && param1.data.p)
         {
            this.§7;§ = param1.data;
            this.§'@§ = §6#P§.§5!L§(param1.data.li);
            this.§^!#§ = param1.data.p;
            if(!§]!q§ && this.§@!c§() >= §9#P§)
            {
               §]!q§ = true;
               for each(_loc2_ in §7!$§.§+!,§.levelIDs)
               {
                  if(this.§1n§ && this.§1n§.§%#B§(_loc2_))
                  {
                     this.§1n§.§%#B§(_loc2_).§,"_§ = 0;
                  }
               }
            }
            this.§##s§();
         }
         else
         {
            this.§'@§ = null;
            this.§^!#§ = null;
            this.§3#,§ = null;
            this.§7;§ = null;
         }
         this.§="U§(§#a§);
      }
      
      public function §@!c§() : int
      {
         var _loc3_:Object = null;
         if(!this.§^!#§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!#§.length)
         {
            _loc3_ = this.§^!#§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §]V§(param1:§+"g§) : void
      {
         this.§1n§.removeEventListener(§+"g§.§,^§,this.§]V§);
         this.§>_§ = param1.data;
         this.§="U§(§ "X§);
      }
      
      protected function §["&§(param1:§+"g§) : void
      {
         dispatchEvent(new §+"g§(§+"g§.§0$1§,param1.data));
      }
      
      public function §5!6§() : Array
      {
         return this.§3#,§;
      }
      
      public function §%u§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§3!R§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName;
         }
         if(this.§]$ § && this.§]$ §.l)
         {
            for each(_loc3_ in this.§]$ §.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§=!j§ && this.§=!j§.l)
         {
            for each(_loc3_ in this.mPreviousResult.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
               }
            }
         }
         if(this.§^!#§)
         {
            for each(_loc3_ in this.§^!#§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§3#,§)
         {
            for each(_loc4_ in this.§3#,§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §+"g§(§+"g§.§[$8§));
      }
      
      public function §8#;§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§^!#§)
         {
            for each(_loc2_ in this.§^!#§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§##s§();
                  break;
               }
            }
         }
      }
      
      private function §##s§() : void
      {
         var _loc2_:Object = null;
         this.§3#,§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§^!#§)
         {
            _loc2_.rank = _loc1_++;
            this.§3#,§.push(§3!R§.§"!U§(_loc2_));
         }
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§@#&§,this.§3#,§);
      }
      
      public function currentLeague() : §3$-§
      {
         return this.§'@§;
      }
      
      public function §5"M§() : int
      {
         var _loc1_:§3!R§ = null;
         if(this.§3#,§)
         {
            for each(_loc1_ in this.§3#,§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §&#@§(param1:String, param2:Boolean = false) : §4!h§
      {
         return this.§1n§.§&#@§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§'-§;
      }
      
      public function §4!B§() : Boolean
      {
         return this.§1n§.§9$$§();
      }
      
      public function §,#p§() : Object
      {
         return this.§7;§;
      }
      
      public function §>!7§() : Object
      {
         var _loc1_:Object = null;
         if(this.§^!#§)
         {
            for each(_loc1_ in this.§^!#§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §+S§() : Object
      {
         return this.§>_§;
      }
      
      public function get §]$ §() : Object
      {
         if(this.§1!S§ && (this.§1!S§.t || this.§1!S§.l && this.§1!S§.l.p))
         {
            return this.§1!S§;
         }
         return null;
      }
      
      public function §]"g§() : Boolean
      {
         if(this.§1!S§.hasOwnProperty("rewardClaimed"))
         {
            return this.§1!S§.rewardClaimed;
         }
         return true;
      }
      
      public function get §=!j§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §-#M§() : Boolean
      {
         return this.§]$ §;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§]$ § && this.§]$ §.t)
         {
            return this.§]$ §.t.bronzeTrophies;
         }
         if(this.§=!j§ && this.§=!j§.t)
         {
            return this.§=!j§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§]$ § && this.§]$ §.t)
         {
            return this.§]$ §.t.silverTrophies;
         }
         if(this.§=!j§ && this.§=!j§.t)
         {
            return this.§=!j§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§]$ § && this.§]$ §.t)
         {
            return this.§]$ §.t.goldTrophies;
         }
         if(this.§=!j§ && this.§=!j§.t)
         {
            return this.§=!j§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §,"_§(param1:String) : Number
      {
         return this.§;"%§[param1];
      }
      
      public function §]"§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§;"%§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §7!$§.§1#7§)
         {
            return true;
         }
         this.§;"%§[param1] = _loc2_;
         return false;
      }
   }
}
