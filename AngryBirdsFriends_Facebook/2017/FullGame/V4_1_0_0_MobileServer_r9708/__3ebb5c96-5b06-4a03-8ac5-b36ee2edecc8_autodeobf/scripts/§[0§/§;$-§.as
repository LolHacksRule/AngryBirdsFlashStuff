package §[0§
{
   import §&"J§.§?$6§;
   import §&"J§.§`]§;
   import §3#G§.§^#L§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §9"1§.§+!x§;
   import §[G§.§4!0§;
   import §];§.§-!t§;
   import §`!R§.§&"8§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §;$-§ extends EventDispatcher
   {
      
      private static var §%#b§:§;$-§;
      
      private static const §;#_§:String = "Profile";
      
      private static const §&!^§:String = "Standings";
      
      private static const §3"!§:String = "AllUnconcluded";
      
      private static const §!"9§:String = "AllPrevious";
      
      public static const §2#Y§:String = "CachePlayerLeagueStandings";
      
      private static var §<#F§:Boolean = false;
      
      public static var §8#b§:int = 2;
       
      
      private var §]?§:§6![§;
      
      private var §;$+§:Object;
      
      private var §#!b§:Array;
      
      private var §,<§:Object;
      
      private var §#"T§:Object;
      
      private var mPreviousResult:Object;
      
      private var §-!b§:§^#L§;
      
      private var §!!9§:Boolean = false;
      
      private var §]$+§:Object;
      
      private var §="f§:Dictionary;
      
      private var §4a§:Object;
      
      public function §;$-§()
      {
         this.§="f§ = new Dictionary();
         super();
         this.§-!b§ = new §^#L§();
         this.§-!b§.addEventListener(§+!x§.§0!m§,this.§`!7§);
         this.§]$+§ = new Object();
         this.§="f§[§2#Y§] = §-!t§.§<N§;
      }
      
      public static function get § "D§() : §;$-§
      {
         if(§%#b§ == null)
         {
            §%#b§ = new §;$-§();
         }
         return §%#b§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§!!9§ = param1;
      }
      
      protected function §-A§(param1:§+!x§) : void
      {
         this.§#"T§ = param1.data;
         if(param1.data.l || param1.data.t)
         {
            this.mPreviousResult = param1.data;
         }
         dispatchEvent(new §+!x§(§+!x§.§ !Q§));
         this.§-!b§.removeEventListener(§+!x§.§^#u§,this.§-A§);
         this.§'!U§(§3"!§);
      }
      
      protected function §<"&§(param1:§+!x§) : void
      {
         this.§-!b§.removeEventListener(§+!x§.§""k§,this.§<"&§);
         if(!this.§#"T§ || !this.mPreviousResult)
         {
            this.mPreviousResult = param1.data;
         }
         this.§'!U§(§!"9§);
      }
      
      public function §@"C§() : void
      {
         this.§]$+§ = new Object();
         this.§-!b§.addEventListener(§+!x§.§;a§,this.§9"P§);
         this.§]$+§[§;#_§] = false;
         this.§-!b§.§2!5§();
         this.§-!b§.addEventListener(§+!x§.§#!r§,this.§6h§);
         this.§]$+§[§&!^§] = false;
         this.§-!b§.§<"d§();
         if(§-#+§.§7!U§)
         {
            this.§-!b§.addEventListener(§+!x§.§^#u§,this.§-A§);
            this.§]$+§[§3"!§] = false;
            this.§-!b§.§=!S§();
            this.§-!b§.addEventListener(§+!x§.§""k§,this.§<"&§);
            this.§]$+§[§!"9§] = false;
            this.§-!b§.§8!R§();
            §-#+§.§7!U§ = false;
         }
      }
      
      private function §'!U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§]$+§)
         {
            return;
         }
         this.§]$+§[param1] = true;
         for each(_loc2_ in this.§]$+§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §+!x§(§+!x§.§,!Z§));
      }
      
      public function §6!'§() : void
      {
         this.§-!b§.§2"6§();
      }
      
      public function §^=§() : void
      {
         this.§-!b§.§^=§();
      }
      
      public function §&$+§() : void
      {
         this.§;$+§ = null;
         this.§4a§ = null;
         this.§#!b§ = null;
         this.§1"V§();
         this.mPreviousResult = null;
      }
      
      public function §1"V§() : void
      {
         this.§#"T§ = null;
      }
      
      protected function §6h§(param1:§+!x§) : void
      {
         var _loc2_:String = null;
         this.§-!b§.removeEventListener(§+!x§.§#!r§,this.§6h§);
         if(param1.data.li && param1.data.p)
         {
            this.§4a§ = param1.data;
            this.§]?§ = §5#;§.§`$0§(param1.data.li);
            this.§;$+§ = param1.data.p;
            if(!§<#F§ && this.§1"x§() >= §8#b§)
            {
               §<#F§ = true;
               for each(_loc2_ in §-!t§.§ "D§.levelIDs)
               {
                  if(this.§-!b§ && this.§-!b§.§6#X§(_loc2_))
                  {
                     this.§-!b§.§6#X§(_loc2_).§<!j§ = 0;
                  }
               }
            }
            this.§]"e§();
         }
         else
         {
            this.§]?§ = null;
            this.§;$+§ = null;
            this.§#!b§ = null;
            this.§4a§ = null;
         }
         this.§'!U§(§&!^§);
      }
      
      public function §1"x§() : int
      {
         var _loc3_:Object = null;
         if(!this.§;$+§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;$+§.length)
         {
            _loc3_ = this.§;$+§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §9"P§(param1:§+!x§) : void
      {
         this.§-!b§.removeEventListener(§+!x§.§;a§,this.§9"P§);
         this.§,<§ = param1.data;
         this.§'!U§(§;#_§);
      }
      
      protected function §`!7§(param1:§+!x§) : void
      {
         dispatchEvent(new §+!x§(§+!x§.§0!m§,param1.data));
      }
      
      public function §]#T§() : Array
      {
         return this.§#!b§;
      }
      
      public function §=!a§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§?$6§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName;
         }
         if(this.§&,§)
         {
            for each(_loc3_ in this.§#"T§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§=#s§ && this.§=#s§.l)
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
         if(this.§;$+§)
         {
            for each(_loc3_ in this.§;$+§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§#!b§)
         {
            for each(_loc4_ in this.§#!b§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §+!x§(§+!x§.§<!J§));
      }
      
      public function §;m§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§;$+§)
         {
            for each(_loc2_ in this.§;$+§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§]"e§();
                  break;
               }
            }
         }
      }
      
      private function §]"e§() : void
      {
         var _loc2_:Object = null;
         this.§#!b§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§;$+§)
         {
            _loc2_.rank = _loc1_++;
            this.§#!b§.push(§?$6§.§2u§(_loc2_));
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§1"K§,this.§#!b§);
      }
      
      public function §^"Z§() : §6![§
      {
         return this.§]?§;
      }
      
      public function §6!B§() : int
      {
         var _loc1_:§?$6§ = null;
         if(this.§#!b§)
         {
            for each(_loc1_ in this.§#!b§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §#"h§(param1:String, param2:Boolean = false) : §4!0§
      {
         return this.§-!b§.§#"h§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§!!9§;
      }
      
      public function §-!X§() : Boolean
      {
         return this.§-!b§.§"$1§();
      }
      
      public function §]!Z§() : Object
      {
         return this.§4a§;
      }
      
      public function §!#`§() : Object
      {
         var _loc1_:Object = null;
         if(this.§;$+§)
         {
            for each(_loc1_ in this.§;$+§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §!"E§() : Object
      {
         return this.§,<§;
      }
      
      public function get §&,§() : Object
      {
         if(this.§#"T§ && (this.§#"T§.t || this.§#"T§.l && this.§#"T§.l.p))
         {
            return this.§#"T§;
         }
         return null;
      }
      
      public function get §=#s§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §5$,§() : Boolean
      {
         return this.§&,§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§&,§ && this.§&,§.t)
         {
            return this.§&,§.t.bronzeTrophies;
         }
         if(this.§=#s§ && this.§=#s§.t)
         {
            return this.§=#s§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§&,§ && this.§&,§.t)
         {
            return this.§&,§.t.silverTrophies;
         }
         if(this.§=#s§ && this.§=#s§.t)
         {
            return this.§=#s§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§&,§ && this.§&,§.t)
         {
            return this.§&,§.t.goldTrophies;
         }
         if(this.§=#s§ && this.§=#s§.t)
         {
            return this.§=#s§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §<!j§(param1:String) : Number
      {
         return this.§="f§[param1];
      }
      
      public function §6!@§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§="f§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §-!t§.§<N§)
         {
            return true;
         }
         this.§="f§[param1] = _loc2_;
         return false;
      }
   }
}
