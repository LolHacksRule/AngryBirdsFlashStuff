package §%#w§
{
   import §"!!§.§+"0§;
   import §"$!§.§7#U§;
   import §-!S§.§##>§;
   import §2G§.§#"8§;
   import §2G§.§9!m§;
   import §3r§.§]!4§;
   import §4#a§.§<#F§;
   import §8#!§.§5`§;
   import §;#D§.§3#U§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §2#s§ extends EventDispatcher
   {
      
      private static var §!c§:§2#s§;
      
      private static const §]s§:String = "Profile";
      
      private static const §'#e§:String = "Standings";
      
      private static const §3"a§:String = "AllUnconcluded";
      
      private static const §%$3§:String = "AllPrevious";
      
      public static const §%l§:String = "CachePlayerLeagueStandings";
      
      private static var §@"O§:Boolean = false;
      
      public static var §+#I§:int = 2;
       
      
      private var §;n§:§4$'§;
      
      private var §0O§:Object;
      
      private var §]"y§:Array;
      
      private var §&"j§:Object;
      
      private var §%"X§:Object;
      
      private var mPreviousResult:Object;
      
      private var §#"e§:§<#F§;
      
      private var §=!1§:Boolean = false;
      
      private var §!z§:Object;
      
      private var §0"9§:Dictionary;
      
      private var §#R§:Object;
      
      public function §2#s§()
      {
         this.§0"9§ = new Dictionary();
         super();
         this.§#"e§ = new §<#F§();
         this.§#"e§.addEventListener(§7#U§.§^i§,this.§#a§);
         this.§!z§ = new Object();
         this.§0"9§[§%l§] = §5`§.§9"I§;
      }
      
      public static function get §6!§() : §2#s§
      {
         if(§!c§ == null)
         {
            §!c§ = new §2#s§();
         }
         return §!c§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§=!1§ = param1;
      }
      
      protected function §0W§(param1:§7#U§) : void
      {
         this.§%"X§ = param1.data;
         if(param1.data.l || param1.data.t)
         {
            this.mPreviousResult = param1.data;
         }
         dispatchEvent(new §7#U§(§7#U§.§#!b§));
         this.§#"e§.removeEventListener(§7#U§.§,!e§,this.§0W§);
         this.§1#9§(§3"a§);
      }
      
      protected function §?!e§(param1:§7#U§) : void
      {
         this.§#"e§.removeEventListener(§7#U§.§9u§,this.§?!e§);
         if(!this.§%"X§ || !this.mPreviousResult)
         {
            this.mPreviousResult = param1.data;
         }
         this.§1#9§(§%$3§);
      }
      
      public function §9E§() : void
      {
         this.§!z§ = new Object();
         this.§#"e§.addEventListener(§7#U§.§[l§,this.§%^§);
         this.§!z§[§]s§] = false;
         this.§#"e§.§-%§();
         this.§#"e§.addEventListener(§7#U§.§^G§,this.§;#q§);
         this.§!z§[§'#e§] = false;
         this.§#"e§.§ !>§();
         if(§,A§.§1"@§)
         {
            this.§#"e§.addEventListener(§7#U§.§,!e§,this.§0W§);
            this.§!z§[§3"a§] = false;
            this.§#"e§.§6">§();
            this.§#"e§.addEventListener(§7#U§.§9u§,this.§?!e§);
            this.§!z§[§%$3§] = false;
            this.§#"e§.§###§();
            §,A§.§1"@§ = false;
         }
      }
      
      private function §1#9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§!z§)
         {
            return;
         }
         this.§!z§[param1] = true;
         for each(_loc2_ in this.§!z§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §7#U§(§7#U§.§`$4§));
      }
      
      public function §4#Q§() : void
      {
         this.§#"e§.§">§();
      }
      
      public function §2"d§() : void
      {
         this.§#"e§.§2"d§();
      }
      
      public function §>!J§() : void
      {
         this.§0O§ = null;
         this.§#R§ = null;
         this.§]"y§ = null;
         this.§<!J§();
         this.mPreviousResult = null;
      }
      
      public function §<!J§() : void
      {
         this.§%"X§ = null;
      }
      
      protected function §;#q§(param1:§7#U§) : void
      {
         var _loc2_:String = null;
         this.§#"e§.removeEventListener(§7#U§.§^G§,this.§;#q§);
         if(param1.data.li && param1.data.p)
         {
            this.§#R§ = param1.data;
            this.§;n§ = §?"z§.§&$+§(param1.data.li);
            this.§0O§ = param1.data.p;
            if(!§@"O§ && this.§&!A§() >= §+#I§)
            {
               §@"O§ = true;
               for each(_loc2_ in §5`§.§6!§.levelIDs)
               {
                  if(this.§#"e§ && this.§#"e§.§?"+§(_loc2_))
                  {
                     this.§#"e§.§?"+§(_loc2_).§""§ = 0;
                  }
               }
            }
            this.§<J§();
         }
         else
         {
            this.§;n§ = null;
            this.§0O§ = null;
            this.§]"y§ = null;
            this.§#R§ = null;
         }
         this.§1#9§(§'#e§);
      }
      
      public function §&!A§() : int
      {
         var _loc3_:Object = null;
         if(!this.§0O§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0O§.length)
         {
            _loc3_ = this.§0O§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §%^§(param1:§7#U§) : void
      {
         this.§#"e§.removeEventListener(§7#U§.§[l§,this.§%^§);
         this.§&"j§ = param1.data;
         this.§1#9§(§]s§);
      }
      
      protected function §#a§(param1:§7#U§) : void
      {
         dispatchEvent(new §7#U§(§7#U§.§^i§,param1.data));
      }
      
      public function §;!Z§() : Array
      {
         return this.§]"y§;
      }
      
      public function §0$§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9!m§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName;
         }
         if(this.§6m§)
         {
            for each(_loc3_ in this.§%"X§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§[#V§ && this.§[#V§.l)
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
         if(this.§0O§)
         {
            for each(_loc3_ in this.§0O§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§]"y§)
         {
            for each(_loc4_ in this.§]"y§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §7#U§(§7#U§.§5$+§));
      }
      
      public function §;>§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§0O§)
         {
            for each(_loc2_ in this.§0O§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§<J§();
                  break;
               }
            }
         }
      }
      
      private function §<J§() : void
      {
         var _loc2_:Object = null;
         this.§]"y§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§0O§)
         {
            _loc2_.rank = _loc1_++;
            this.§]"y§.push(§9!m§.§+!@§(_loc2_));
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§&#W§,this.§]"y§);
      }
      
      public function currentLeague() : §4$'§
      {
         return this.§;n§;
      }
      
      public function §^H§() : int
      {
         var _loc1_:§9!m§ = null;
         if(this.§]"y§)
         {
            for each(_loc1_ in this.§]"y§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §?@§(param1:String, param2:Boolean = false) : §+"0§
      {
         return this.§#"e§.§?@§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§=!1§;
      }
      
      public function §2$§() : Boolean
      {
         return this.§#"e§.§8R§();
      }
      
      public function §%"6§() : Object
      {
         return this.§#R§;
      }
      
      public function §]e§() : Object
      {
         var _loc1_:Object = null;
         if(this.§0O§)
         {
            for each(_loc1_ in this.§0O§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §5"Y§() : Object
      {
         return this.§&"j§;
      }
      
      public function get §6m§() : Object
      {
         if(this.§%"X§ && (this.§%"X§.t || this.§%"X§.l && this.§%"X§.l.p))
         {
            return this.§%"X§;
         }
         return null;
      }
      
      public function get §[#V§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §^A§() : Boolean
      {
         return this.§6m§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§6m§ && this.§6m§.t)
         {
            return this.§6m§.t.bronzeTrophies;
         }
         if(this.§[#V§ && this.§[#V§.t)
         {
            return this.§[#V§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§6m§ && this.§6m§.t)
         {
            return this.§6m§.t.silverTrophies;
         }
         if(this.§[#V§ && this.§[#V§.t)
         {
            return this.§[#V§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§6m§ && this.§6m§.t)
         {
            return this.§6m§.t.goldTrophies;
         }
         if(this.§[#V§ && this.§[#V§.t)
         {
            return this.§[#V§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §""§(param1:String) : Number
      {
         return this.§0"9§[param1];
      }
      
      public function §["O§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§0"9§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §5`§.§9"I§)
         {
            return true;
         }
         this.§0"9§[param1] = _loc2_;
         return false;
      }
   }
}
