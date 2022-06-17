package §^#?§
{
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §0"M§.§8-§;
   import §1!1§.§<#M§;
   import §3#t§.§51§;
   import §4#$§.§5"L§;
   import §>#Y§.§,#b§;
   import §>#Y§.§3"Q§;
   import §?_§.§9! §;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §?#,§ extends EventDispatcher
   {
      
      private static var §!#m§:§?#,§;
      
      private static const §,!z§:String = "Profile";
      
      private static const §=$'§:String = "Standings";
      
      private static const §+i§:String = "AllUnconcluded";
      
      private static const §"U§:String = "AllPrevious";
      
      public static const §?"Z§:String = "CachePlayerLeagueStandings";
      
      private static var §+1§:Boolean = false;
      
      public static var §3#`§:int = 2;
       
      
      private var §+X§:§2R§;
      
      private var §@j§:Object;
      
      private var §9$6§:Array;
      
      private var §5#a§:Object;
      
      private var §+"^§:Object;
      
      private var mPreviousResult:Object;
      
      private var §["M§:§8-§;
      
      private var §&f§:Boolean = false;
      
      private var §3#H§:Object;
      
      private var §]u§:Dictionary;
      
      private var §;!3§:Object;
      
      public function §?#,§()
      {
         this.§]u§ = new Dictionary();
         super();
         this.§["M§ = new §8-§();
         this.§["M§.addEventListener(§<#M§.§2$A§,this.§="&§);
         this.§3#H§ = new Object();
         this.§]u§[§?"Z§] = §5"L§.§4"z§;
      }
      
      public static function get §3"1§() : §?#,§
      {
         if(§!#m§ == null)
         {
            §!#m§ = new §?#,§();
         }
         return §!#m§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§&f§ = param1;
      }
      
      protected function §>'§(param1:§<#M§) : void
      {
         this.§+"^§ = param1.data;
         this.§["M§.addEventListener(§<#M§.§;a§,this.§ $E§);
         this.§["M§.§?!p§();
         dispatchEvent(new §<#M§(§<#M§.§-"%§));
         this.§["M§.removeEventListener(§<#M§.§7#x§,this.§>'§);
         this.§`+§(§+i§);
      }
      
      protected function § $E§(param1:§<#M§) : void
      {
         this.§["M§.removeEventListener(§<#M§.§;a§,this.§ $E§);
         this.mPreviousResult = param1.data;
         this.§`+§(§"U§);
      }
      
      public function §9"G§(param1:int) : void
      {
         this.§3#H§ = new Object();
         this.§["M§.addEventListener(§<#M§.§<b§,this.§6!;§);
         this.§3#H§[§,!z§] = false;
         this.§["M§.§!"b§(param1);
         this.§["M§.addEventListener(§<#M§.§"!n§,this.§ "k§);
         this.§3#H§[§=$'§] = false;
         this.§["M§.§0W§(param1);
         if(§^"a§.§,W§)
         {
            this.§["M§.addEventListener(§<#M§.§7#x§,this.§>'§);
            this.§3#H§[§+i§] = false;
            this.§["M§.§^"0§(param1);
            this.§3#H§[§"U§] = false;
            §^"a§.§,W§ = false;
         }
      }
      
      private function §`+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§3#H§)
         {
            return;
         }
         this.§3#H§[param1] = true;
         for each(_loc2_ in this.§3#H§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §<#M§(§<#M§.§ "2§));
      }
      
      public function §,"y§(param1:int) : void
      {
         this.§["M§.§=!`§(param1);
      }
      
      public function §2!V§() : void
      {
         this.§["M§.§2!V§();
      }
      
      public function §5!i§() : void
      {
         this.§@j§ = null;
         this.§;!3§ = null;
         this.§9$6§ = null;
         this.§]"m§();
         this.mPreviousResult = null;
         this.§["M§.§3H§();
         this.§["M§.§]r§();
      }
      
      public function §]"m§() : void
      {
         this.§+"^§ = null;
      }
      
      protected function § "k§(param1:§<#M§) : void
      {
         var _loc2_:String = null;
         this.§["M§.removeEventListener(§<#M§.§"!n§,this.§ "k§);
         if(param1.data.li && param1.data.p)
         {
            this.§;!3§ = param1.data;
            this.§+X§ = §#!T§.§4!c§(param1.data.li);
            this.§@j§ = param1.data.p;
            if(!§+1§ && this.§2M§() >= §3#`§)
            {
               §+1§ = true;
               for each(_loc2_ in §5"L§.§3"1§.levelIDs)
               {
                  if(this.§["M§ && this.§["M§.§<w§(_loc2_))
                  {
                     this.§["M§.§<w§(_loc2_).§7H§ = 0;
                  }
               }
            }
            this.§<!w§();
         }
         else
         {
            this.§+X§ = null;
            this.§@j§ = null;
            this.§9$6§ = null;
            this.§;!3§ = null;
         }
         this.§`+§(§=$'§);
      }
      
      public function §2M§() : int
      {
         var _loc3_:Object = null;
         if(!this.§@j§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@j§.length)
         {
            _loc3_ = this.§@j§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §6!;§(param1:§<#M§) : void
      {
         this.§["M§.removeEventListener(§<#M§.§<b§,this.§6!;§);
         this.§5#a§ = param1.data;
         this.§`+§(§,!z§);
      }
      
      protected function §="&§(param1:§<#M§) : void
      {
         dispatchEvent(new §<#M§(§<#M§.§2$A§,param1.data));
      }
      
      public function §9Z§() : Array
      {
         return this.§9$6§;
      }
      
      public function §!"r§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§3"Q§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName;
         }
         if(this.§7$?§ && this.§7$?§.l)
         {
            for each(_loc3_ in this.§7$?§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§4"a§ && this.§4"a§.l)
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
         if(this.§@j§)
         {
            for each(_loc3_ in this.§@j§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§9$6§)
         {
            for each(_loc4_ in this.§9$6§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §<#M§(§<#M§.§-#4§));
      }
      
      public function §;#b§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§@j§)
         {
            for each(_loc2_ in this.§@j§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§<!w§();
                  break;
               }
            }
         }
      }
      
      private function §<!w§() : void
      {
         var _loc2_:Object = null;
         this.§9$6§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§@j§)
         {
            _loc2_.rank = _loc1_++;
            this.§9$6§.push(§3"Q§.§5!I§(_loc2_));
         }
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§`"x§,this.§9$6§);
      }
      
      public function currentLeague() : §2R§
      {
         return this.§+X§;
      }
      
      public function § d§() : int
      {
         var _loc1_:§3"Q§ = null;
         if(this.§9$6§)
         {
            for each(_loc1_ in this.§9$6§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §?"x§(param1:String, param2:Boolean = false) : §51§
      {
         return this.§["M§.§?"x§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§&f§;
      }
      
      public function § "=§() : Boolean
      {
         return this.§["M§.§#!?§();
      }
      
      public function §8#O§() : Object
      {
         return this.§;!3§;
      }
      
      public function §-#x§() : Object
      {
         var _loc1_:Object = null;
         if(this.§@j§)
         {
            for each(_loc1_ in this.§@j§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §4"4§() : Object
      {
         return this.§5#a§;
      }
      
      public function get §7$?§() : Object
      {
         if(this.§+"^§ && (this.§+"^§.t || this.§+"^§.l && this.§+"^§.l.p))
         {
            return this.§+"^§;
         }
         return null;
      }
      
      public function §9"m§() : Boolean
      {
         if(this.§+"^§.hasOwnProperty("rewardClaimed"))
         {
            return this.§+"^§.rewardClaimed;
         }
         return true;
      }
      
      public function get §4"a§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §]$?§() : Boolean
      {
         return this.§7$?§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§7$?§ && this.§7$?§.t)
         {
            return this.§7$?§.t.bronzeTrophies;
         }
         if(this.§4"a§ && this.§4"a§.t)
         {
            return this.§4"a§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§7$?§ && this.§7$?§.t)
         {
            return this.§7$?§.t.silverTrophies;
         }
         if(this.§4"a§ && this.§4"a§.t)
         {
            return this.§4"a§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§7$?§ && this.§7$?§.t)
         {
            return this.§7$?§.t.goldTrophies;
         }
         if(this.§4"a§ && this.§4"a§.t)
         {
            return this.§4"a§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §7H§(param1:String) : Number
      {
         return this.§]u§[param1];
      }
      
      public function §7!e§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§]u§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §5"L§.§4"z§)
         {
            return true;
         }
         this.§]u§[param1] = _loc2_;
         return false;
      }
   }
}
