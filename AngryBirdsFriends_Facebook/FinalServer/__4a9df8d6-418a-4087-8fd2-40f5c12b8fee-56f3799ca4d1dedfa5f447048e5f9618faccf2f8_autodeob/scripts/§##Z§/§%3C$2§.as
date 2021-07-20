package §##Z§
{
   import §!#C§.§4!Q§;
   import §!#C§.§[§;
   import §"",§.§4#Q§;
   import §0"B§.§##G§;
   import §1"l§.§`""§;
   import §7"G§.§7N§;
   import §7R§.§ #`§;
   import §<!r§.§'##§;
   import §`#@§.§7n§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §<$2§ extends EventDispatcher
   {
      
      private static var §1$8§:§<$2§;
      
      private static const §""=§:String = "Profile";
      
      private static const §8§:String = "Standings";
      
      private static const §="+§:String = "AllUnconcluded";
      
      private static const §5!Y§:String = "AllPrevious";
      
      public static const §7f§:String = "CachePlayerLeagueStandings";
      
      private static var §,!o§:Boolean = false;
      
      public static var §+#^§:int = 2;
       
      
      private var §[#E§:§"#Q§;
      
      private var §-!R§:Object;
      
      private var §<"§:Array;
      
      private var §>"N§:Object;
      
      private var §8$&§:Object;
      
      private var mPreviousResult:Object;
      
      private var § !b§:§7N§;
      
      private var §;o§:Boolean = false;
      
      private var §@x§:Object;
      
      private var §5"g§:Dictionary;
      
      private var §6!J§:Object;
      
      public function §<$2§()
      {
         this.§5"g§ = new Dictionary();
         super();
         this.§ !b§ = new §7N§();
         this.§ !b§.addEventListener(§4#Q§.§"#0§,this.§;!o§);
         this.§@x§ = new Object();
         this.§5"g§[§7f§] = §'##§.§7#%§;
      }
      
      public static function get §`"H§() : §<$2§
      {
         if(§1$8§ == null)
         {
            §1$8§ = new §<$2§();
         }
         return §1$8§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§;o§ = param1;
      }
      
      protected function §?#B§(param1:§4#Q§) : void
      {
         this.§8$&§ = param1.data;
         this.§ !b§.addEventListener(§4#Q§.§]#T§,this.§]#O§);
         this.§ !b§.§-#3§();
         dispatchEvent(new §4#Q§(§4#Q§.§+"R§));
         this.§ !b§.removeEventListener(§4#Q§.§"R§,this.§?#B§);
         this.§1#2§(§="+§);
      }
      
      protected function §]#O§(param1:§4#Q§) : void
      {
         this.§ !b§.removeEventListener(§4#Q§.§]#T§,this.§]#O§);
         this.mPreviousResult = param1.data;
         this.§1#2§(§5!Y§);
      }
      
      public function § $%§(param1:int) : void
      {
         this.§@x§ = new Object();
         this.§ !b§.addEventListener(§4#Q§.§+3§,this.§;$"§);
         this.§@x§[§""=§] = false;
         this.§ !b§.§]%§(param1);
         this.§ !b§.addEventListener(§4#Q§.§#"Z§,this.§=!w§);
         this.§@x§[§8§] = false;
         this.§ !b§.§ W§(param1);
         if(§ #v§.§%"W§)
         {
            this.§ !b§.addEventListener(§4#Q§.§"R§,this.§?#B§);
            this.§@x§[§="+§] = false;
            this.§ !b§.§5#§(param1);
            this.§@x§[§5!Y§] = false;
            § #v§.§%"W§ = false;
         }
      }
      
      private function §1#2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§@x§)
         {
            return;
         }
         this.§@x§[param1] = true;
         for each(_loc2_ in this.§@x§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §4#Q§(§4#Q§.§4f§));
      }
      
      public function §<6§(param1:int) : void
      {
         this.§ !b§.§'O§(param1);
      }
      
      public function §1"q§() : void
      {
         this.§ !b§.§1"q§();
      }
      
      public function §"g§() : void
      {
         this.§-!R§ = null;
         this.§6!J§ = null;
         this.§<"§ = null;
         this.§4"]§();
         this.mPreviousResult = null;
         this.§ !b§.§-"K§();
         this.§ !b§.§4#A§();
      }
      
      public function §4"]§() : void
      {
         this.§8$&§ = null;
      }
      
      protected function §=!w§(param1:§4#Q§) : void
      {
         var _loc2_:String = null;
         this.§ !b§.removeEventListener(§4#Q§.§#"Z§,this.§=!w§);
         if(param1.data.li && param1.data.p)
         {
            this.§6!J§ = param1.data;
            this.§[#E§ = §'#N§.§<W§(param1.data.li);
            this.§-!R§ = param1.data.p;
            if(!§,!o§ && this.§?"E§() >= §+#^§)
            {
               §,!o§ = true;
               for each(_loc2_ in §'##§.§`"H§.levelIDs)
               {
                  if(this.§ !b§ && this.§ !b§.§`!c§(_loc2_))
                  {
                     this.§ !b§.§`!c§(_loc2_).§%$&§ = 0;
                  }
               }
            }
            this.§&!@§();
         }
         else
         {
            this.§[#E§ = null;
            this.§-!R§ = null;
            this.§<"§ = null;
            this.§6!J§ = null;
         }
         this.§1#2§(§8§);
      }
      
      public function §?"E§() : int
      {
         var _loc3_:Object = null;
         if(!this.§-!R§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!R§.length)
         {
            _loc3_ = this.§-!R§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §;$"§(param1:§4#Q§) : void
      {
         this.§ !b§.removeEventListener(§4#Q§.§+3§,this.§;$"§);
         this.§>"N§ = param1.data;
         this.§1#2§(§""=§);
      }
      
      protected function §;!o§(param1:§4#Q§) : void
      {
         dispatchEvent(new §4#Q§(§4#Q§.§"#0§,param1.data));
      }
      
      public function §@$9§() : Array
      {
         return this.§<"§;
      }
      
      public function §!!c§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§[#8§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName;
         }
         if(this.§>!L§ && this.§>!L§.l)
         {
            for each(_loc3_ in this.§>!L§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§&$B§ && this.§&$B§.l)
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
         if(this.§-!R§)
         {
            for each(_loc3_ in this.§-!R§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§<"§)
         {
            for each(_loc4_ in this.§<"§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §4#Q§(§4#Q§.§>#n§));
      }
      
      public function §>" §(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§-!R§)
         {
            for each(_loc2_ in this.§-!R§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§&!@§();
                  break;
               }
            }
         }
      }
      
      private function §&!@§() : void
      {
         var _loc2_:Object = null;
         this.§<"§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§-!R§)
         {
            _loc2_.rank = _loc1_++;
            this.§<"§.push(§[#8§.§5+§(_loc2_));
         }
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§`!S§,this.§<"§);
      }
      
      public function currentLeague() : §"#Q§
      {
         return this.§[#E§;
      }
      
      public function §3"U§() : int
      {
         var _loc1_:§[#8§ = null;
         if(this.§<"§)
         {
            for each(_loc1_ in this.§<"§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §3"Z§(param1:String, param2:Boolean = false) : §##G§
      {
         return this.§ !b§.§3"Z§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§;o§;
      }
      
      public function §"!5§() : Boolean
      {
         return this.§ !b§.§6#J§();
      }
      
      public function §3$#§() : Object
      {
         return this.§6!J§;
      }
      
      public function §6#+§() : Object
      {
         var _loc1_:Object = null;
         if(this.§-!R§)
         {
            for each(_loc1_ in this.§-!R§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §1>§() : Object
      {
         return this.§>"N§;
      }
      
      public function get §>!L§() : Object
      {
         if(this.§8$&§ && (this.§8$&§.t || this.§8$&§.l && this.§8$&§.l.p))
         {
            return this.§8$&§;
         }
         return null;
      }
      
      public function §-"y§() : Boolean
      {
         if(this.§8$&§.hasOwnProperty("rewardClaimed"))
         {
            return this.§8$&§.rewardClaimed;
         }
         return true;
      }
      
      public function get §&$B§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §%"I§() : Boolean
      {
         return this.§>!L§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§>!L§ && this.§>!L§.t)
         {
            return this.§>!L§.t.bronzeTrophies;
         }
         if(this.§&$B§ && this.§&$B§.t)
         {
            return this.§&$B§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§>!L§ && this.§>!L§.t)
         {
            return this.§>!L§.t.silverTrophies;
         }
         if(this.§&$B§ && this.§&$B§.t)
         {
            return this.§&$B§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§>!L§ && this.§>!L§.t)
         {
            return this.§>!L§.t.goldTrophies;
         }
         if(this.§&$B§ && this.§&$B§.t)
         {
            return this.§&$B§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §%$&§(param1:String) : Number
      {
         return this.§5"g§[param1];
      }
      
      public function §<!8§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§5"g§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §'##§.§7#%§)
         {
            return true;
         }
         this.§5"g§[param1] = _loc2_;
         return false;
      }
   }
}
