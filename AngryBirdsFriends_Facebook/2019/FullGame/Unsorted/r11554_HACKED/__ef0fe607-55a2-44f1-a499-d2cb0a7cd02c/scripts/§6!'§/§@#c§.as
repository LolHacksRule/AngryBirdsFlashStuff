package §6!'§
{
   import § "g§.§5"D§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §+"u§.§^"C§;
   import §9&§.§[#>§;
   import §=!2§.§%"T§;
   import §>"h§.§?>§;
   import §]"'§.§@"%§;
   import §]"'§.§^"X§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §@#c§ extends EventDispatcher
   {
      
      private static var §#!5§:§@#c§;
      
      private static const §2!W§:String = "Profile";
      
      private static const § "§:String = "Standings";
      
      private static const §,"v§:String = "AllUnconcluded";
      
      private static const §?!p§:String = "AllPrevious";
      
      public static const §0S§:String = "CachePlayerLeagueStandings";
      
      private static var §,#1§:Boolean = false;
      
      public static var §2!<§:int = 2;
       
      
      private var §]$5§:§]o§;
      
      private var §%"^§:Object;
      
      private var §3"I§:Array;
      
      private var §>%§:Object;
      
      private var §0>§:Object;
      
      private var mPreviousResult:Object;
      
      private var § K§:§[#>§;
      
      private var §;#c§:Boolean = false;
      
      private var §>"!§:Object;
      
      private var §2!d§:Dictionary;
      
      private var §`"^§:Object;
      
      public function §@#c§()
      {
         this.§2!d§ = new Dictionary();
         super();
         this.§ K§ = new §[#>§();
         this.§ K§.addEventListener(§?>§.§ ![§,this.§^y§);
         this.§>"!§ = new Object();
         this.§2!d§[§0S§] = §^"C§.§,";§;
      }
      
      public static function get §?q§() : §@#c§
      {
         if(§#!5§ == null)
         {
            §#!5§ = new §@#c§();
         }
         return §#!5§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§;#c§ = param1;
      }
      
      protected function §@"C§(param1:§?>§) : void
      {
         this.§0>§ = param1.data;
         this.§ K§.addEventListener(§?>§.§!"P§,this.§;L§);
         this.§ K§.§[#'§();
         dispatchEvent(new §?>§(§?>§.§["X§));
         this.§ K§.removeEventListener(§?>§.§"#&§,this.§@"C§);
         this.§]!`§(§,"v§);
      }
      
      protected function §;L§(param1:§?>§) : void
      {
         this.§ K§.removeEventListener(§?>§.§!"P§,this.§;L§);
         this.mPreviousResult = param1.data;
         this.§]!`§(§?!p§);
      }
      
      public function §!$C§(param1:int) : void
      {
         this.§>"!§ = new Object();
         this.§ K§.addEventListener(§?>§.§7!D§,this.§0#t§);
         this.§>"!§[§2!W§] = false;
         this.§ K§.§6"K§(param1);
         this.§ K§.addEventListener(§?>§.§ "M§,this.§&-§);
         this.§>"!§[§ "§] = false;
         this.§ K§.§[n§(param1);
         if(§'"a§.§;$2§)
         {
            this.§ K§.addEventListener(§?>§.§"#&§,this.§@"C§);
            this.§>"!§[§,"v§] = false;
            this.§ K§.§[$,§(param1);
            this.§>"!§[§?!p§] = false;
            §'"a§.§;$2§ = false;
         }
      }
      
      private function §]!`§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§>"!§)
         {
            return;
         }
         this.§>"!§[param1] = true;
         for each(_loc2_ in this.§>"!§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §?>§(§?>§.§]#s§));
      }
      
      public function §#$E§(param1:int) : void
      {
         this.§ K§.§>#%§(param1);
      }
      
      public function §#!e§() : void
      {
         this.§ K§.§#!e§();
      }
      
      public function §6$#§() : void
      {
         this.§%"^§ = null;
         this.§`"^§ = null;
         this.§3"I§ = null;
         this.§%"E§();
         this.mPreviousResult = null;
         this.§ K§.§0$0§();
         this.§ K§.§6#u§();
      }
      
      public function §%"E§() : void
      {
         this.§0>§ = null;
      }
      
      protected function §&-§(param1:§?>§) : void
      {
         var _loc2_:String = null;
         this.§ K§.removeEventListener(§?>§.§ "M§,this.§&-§);
         if(param1.data.li && param1.data.p)
         {
            this.§`"^§ = param1.data;
            this.§]$5§ = §[!k§.§="m§(param1.data.li);
            this.§%"^§ = param1.data.p;
            if(!§,#1§ && this.§3#V§() >= §2!<§)
            {
               §,#1§ = true;
               for each(_loc2_ in §^"C§.§?q§.levelIDs)
               {
                  if(this.§ K§ && this.§ K§.§<#Y§(_loc2_))
                  {
                     this.§ K§.§<#Y§(_loc2_).§1#y§ = 0;
                  }
               }
            }
            this.§;#Y§();
         }
         else
         {
            this.§]$5§ = null;
            this.§%"^§ = null;
            this.§3"I§ = null;
            this.§`"^§ = null;
         }
         this.§]!`§(§ "§);
      }
      
      public function §3#V§() : int
      {
         var _loc3_:Object = null;
         if(!this.§%"^§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"^§.length)
         {
            _loc3_ = this.§%"^§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §0#t§(param1:§?>§) : void
      {
         this.§ K§.removeEventListener(§?>§.§7!D§,this.§0#t§);
         this.§>%§ = param1.data;
         this.§]!`§(§2!W§);
      }
      
      protected function §^y§(param1:§?>§) : void
      {
         dispatchEvent(new §?>§(§?>§.§ ![§,param1.data));
      }
      
      public function §&"p§() : Array
      {
         return this.§3"I§;
      }
      
      public function §8!W§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§^"X§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName;
         }
         if(this.§5#1§)
         {
            for each(_loc3_ in this.§0>§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§1!S§ && this.§1!S§.l)
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
         if(this.§%"^§)
         {
            for each(_loc3_ in this.§%"^§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§3"I§)
         {
            for each(_loc4_ in this.§3"I§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §?>§(§?>§.§[^§));
      }
      
      public function §7""§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§%"^§)
         {
            for each(_loc2_ in this.§%"^§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§;#Y§();
                  break;
               }
            }
         }
      }
      
      private function §;#Y§() : void
      {
         var _loc2_:Object = null;
         this.§3"I§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§%"^§)
         {
            _loc2_.rank = _loc1_++;
            this.§3"I§.push(§^"X§.§]"B§(_loc2_));
         }
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§1# §,this.§3"I§);
      }
      
      public function currentLeague() : §]o§
      {
         return this.§]$5§;
      }
      
      public function §%$=§() : int
      {
         var _loc1_:§^"X§ = null;
         if(this.§3"I§)
         {
            for each(_loc1_ in this.§3"I§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §1"'§(param1:String, param2:Boolean = false) : §5"D§
      {
         return this.§ K§.§1"'§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§;#c§;
      }
      
      public function §0I§() : Boolean
      {
         return this.§ K§.§0"§();
      }
      
      public function §%$2§() : Object
      {
         return this.§`"^§;
      }
      
      public function §+$"§() : Object
      {
         var _loc1_:Object = null;
         if(this.§%"^§)
         {
            for each(_loc1_ in this.§%"^§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §5k§() : Object
      {
         return this.§>%§;
      }
      
      public function get §5#1§() : Object
      {
         if(this.§0>§ && (this.§0>§.t || this.§0>§.l && this.§0>§.l.p))
         {
            return this.§0>§;
         }
         return null;
      }
      
      public function get §1!S§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §=!f§() : Boolean
      {
         return this.§5#1§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§5#1§ && this.§5#1§.t)
         {
            return this.§5#1§.t.bronzeTrophies;
         }
         if(this.§1!S§ && this.§1!S§.t)
         {
            return this.§1!S§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§5#1§ && this.§5#1§.t)
         {
            return this.§5#1§.t.silverTrophies;
         }
         if(this.§1!S§ && this.§1!S§.t)
         {
            return this.§1!S§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§5#1§ && this.§5#1§.t)
         {
            return this.§5#1§.t.goldTrophies;
         }
         if(this.§1!S§ && this.§1!S§.t)
         {
            return this.§1!S§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §1#y§(param1:String) : Number
      {
         return this.§2!d§[param1];
      }
      
      public function §,N§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§2!d§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §^"C§.§,";§)
         {
            return true;
         }
         this.§2!d§[param1] = _loc2_;
         return false;
      }
   }
}
