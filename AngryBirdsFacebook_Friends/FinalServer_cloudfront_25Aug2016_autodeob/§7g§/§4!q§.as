package §7g§
{
   import §%$!§.§%!2§;
   import §%$!§.§+3§;
   import §0#d§.§<#u§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §;4§.§2!]§;
   import §<!g§.§&$1§;
   import §?§.§>"$§;
   import §`3§.§1"^§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §4!q§ extends EventDispatcher
   {
      
      private static var §,!m§:§4!q§;
      
      private static const §`!+§:String = "Profile";
      
      private static const §9e§:String = "Standings";
      
      private static const §6#v§:String = "AllUnconcluded";
      
      private static const §!"z§:String = "AllPrevious";
      
      public static const §%"Z§:String = "CachePlayerLeagueStandings";
      
      private static var §,$<§:Boolean = false;
      
      public static var §8#<§:int = 2;
       
      
      private var § "j§:§2N§;
      
      private var § h§:Object;
      
      private var §4!Y§:Array;
      
      private var §5#O§:Object;
      
      private var §9"u§:Object;
      
      private var mPreviousResult:Object;
      
      private var §1"U§:§1"^§;
      
      private var §5!U§:Boolean = false;
      
      private var §&=§:Object;
      
      private var §!!o§:Dictionary;
      
      private var §1!B§:Object;
      
      public function §4!q§()
      {
         this.§!!o§ = new Dictionary();
         super();
         this.§1"U§ = new §1"^§();
         this.§1"U§.addEventListener(§&$1§.§>#t§,this.§4"S§);
         this.§&=§ = new Object();
         this.§!!o§[§%"Z§] = §]!m§.§break§;
      }
      
      public static function get §3!]§() : §4!q§
      {
         if(§,!m§ == null)
         {
            §,!m§ = new §4!q§();
         }
         return §,!m§;
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§5!U§ = param1;
      }
      
      protected function §!#i§(param1:§&$1§) : void
      {
         this.§9"u§ = param1.data;
         if(param1.data.l && param1.data.t)
         {
            this.mPreviousResult = param1.data;
         }
         dispatchEvent(new §&$1§(§&$1§.§6!Q§));
         this.§1"U§.removeEventListener(§&$1§.§^"2§,this.§!#i§);
         this.§[$!§(§6#v§);
      }
      
      protected function §!"T§(param1:§&$1§) : void
      {
         this.§1"U§.removeEventListener(§&$1§.§4!9§,this.§!"T§);
         if(!this.§9"u§ || !this.mPreviousResult)
         {
            this.mPreviousResult = param1.data;
         }
         dispatchEvent(new §&$1§(§&$1§.§4!9§,this.mPreviousResult));
         this.§[$!§(§!"z§);
      }
      
      public function §8#d§() : void
      {
         this.§&=§ = new Object();
         this.§1"U§.addEventListener(§&$1§.§;"H§,this.§`!6§);
         this.§&=§[§`!+§] = false;
         this.§1"U§.§"#b§();
         this.§1"U§.addEventListener(§&$1§.§]!n§,this.§<!o§);
         this.§&=§[§9e§] = false;
         this.§1"U§.§^"M§();
         if(§8G§.§;"0§)
         {
            this.§1"U§.addEventListener(§&$1§.§^"2§,this.§!#i§);
            this.§&=§[§6#v§] = false;
            this.§1"U§.§=!<§();
            this.§1"U§.addEventListener(§&$1§.§4!9§,this.§!"T§);
            this.§&=§[§!"z§] = false;
            this.§1"U§.§^"T§();
            §8G§.§;"0§ = false;
         }
      }
      
      private function §[$!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§&=§)
         {
            return;
         }
         this.§&=§[param1] = true;
         for each(_loc2_ in this.§&=§)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         dispatchEvent(new §&$1§(§&$1§.§=e§));
      }
      
      public function §[c§() : void
      {
         this.§1"U§.§4#@§();
      }
      
      public function §,#p§() : void
      {
         this.§1"U§.§,#p§();
      }
      
      public function §6"?§() : void
      {
         this.§ h§ = null;
         this.§1!B§ = null;
         this.§4!Y§ = null;
         this.§-!"§();
         this.mPreviousResult = null;
      }
      
      public function §-!"§() : void
      {
         this.§9"u§ = null;
      }
      
      protected function §<!o§(param1:§&$1§) : void
      {
         var _loc2_:String = null;
         this.§1"U§.removeEventListener(§&$1§.§]!n§,this.§<!o§);
         if(param1.data.li && param1.data.p)
         {
            this.§1!B§ = param1.data;
            this.§ "j§ = §`!b§.§%9§(param1.data.li);
            this.§ h§ = param1.data.p;
            if(!§,$<§ && this.§9c§() >= §8#<§)
            {
               §,$<§ = true;
               for each(_loc2_ in §]!m§.§3!]§.levelIDs)
               {
                  if(this.§1"U§ && this.§1"U§.§-"=§(_loc2_))
                  {
                     this.§1"U§.§-"=§(_loc2_).§2"O§ = 0;
                  }
               }
            }
            this.§3#f§();
         }
         else
         {
            this.§ "j§ = null;
            this.§ h§ = null;
            this.§4!Y§ = null;
            this.§1!B§ = null;
         }
         this.§[$!§(§9e§);
      }
      
      public function §9c§() : int
      {
         var _loc3_:Object = null;
         if(!this.§ h§)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ h§.length)
         {
            _loc3_ = this.§ h§[_loc2_];
            if(_loc3_.ts > 0 && _loc3_.u && _loc3_.n)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      protected function §`!6§(param1:§&$1§) : void
      {
         this.§1"U§.removeEventListener(§&$1§.§;"H§,this.§`!6§);
         this.§5#O§ = param1.data;
         this.§[$!§(§`!+§);
      }
      
      protected function §4"S§(param1:§&$1§) : void
      {
         dispatchEvent(new §&$1§(§&$1§.§>#t§,param1.data));
      }
      
      public function §?"y§() : Array
      {
         return this.§4!Y§;
      }
      
      public function §>!V§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%!2§ = null;
         if(!param1 || param1 == "")
         {
            param1 = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName;
         }
         if(this.§=$#§)
         {
            for each(_loc3_ in this.§9"u§.l.p)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§;"c§ && this.§;"c§.l)
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
         if(this.§ h§)
         {
            for each(_loc3_ in this.§ h§)
            {
               if(_loc3_.me)
               {
                  _loc3_.ni = param1;
                  _loc3_.ir = param2;
                  break;
               }
            }
         }
         if(this.§4!Y§)
         {
            for each(_loc4_ in this.§4!Y§)
            {
               if(_loc4_.isMe)
               {
                  _loc4_.nickName = param1;
                  _loc4_.profilePicture = param2;
               }
            }
         }
         dispatchEvent(new §&$1§(§&$1§.§@K§));
      }
      
      public function §9s§(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(this.§ h§)
         {
            for each(_loc2_ in this.§ h§)
            {
               if(_loc2_.me)
               {
                  _loc2_.ts += param1;
                  this.§3#f§();
                  break;
               }
            }
         }
      }
      
      private function §3#f§() : void
      {
         var _loc2_:Object = null;
         this.§4!Y§ = new Array();
         var _loc1_:int = 1;
         for each(_loc2_ in this.§ h§)
         {
            _loc2_.rank = _loc1_++;
            this.§4!Y§.push(§%!2§.§>!§(_loc2_));
         }
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§3"A§,this.§4!Y§);
      }
      
      public function §+"s§() : §2N§
      {
         return this.§ "j§;
      }
      
      public function §&$0§() : int
      {
         var _loc1_:§%!2§ = null;
         if(this.§4!Y§)
         {
            for each(_loc1_ in this.§4!Y§)
            {
               if(_loc1_.isMe)
               {
                  return _loc1_.rank;
               }
            }
         }
         return -1;
      }
      
      public function §&"r§(param1:String, param2:Boolean = false) : §2!]§
      {
         return this.§1"U§.§&"r§(param1,param2);
      }
      
      public function get active() : Boolean
      {
         return this.§5!U§;
      }
      
      public function §'#5§() : Boolean
      {
         return this.§1"U§.§-#!§();
      }
      
      public function §5"D§() : Object
      {
         return this.§1!B§;
      }
      
      public function §2!N§() : Object
      {
         var _loc1_:Object = null;
         if(this.§ h§)
         {
            for each(_loc1_ in this.§ h§)
            {
               if(_loc1_.me)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function §5"9§() : Object
      {
         return this.§5#O§;
      }
      
      public function get §=$#§() : Object
      {
         if(this.§9"u§ && (this.§9"u§.t || this.§9"u§.l && this.§9"u§.l.p))
         {
            return this.§9"u§;
         }
         return null;
      }
      
      public function get §;"c§() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get §6!k§() : Boolean
      {
         return this.§=$#§;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§=$#§ && this.§=$#§.t)
         {
            return this.§=$#§.t.bronzeTrophies;
         }
         if(this.§;"c§ && this.§;"c§.t)
         {
            return this.§;"c§.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§=$#§ && this.§=$#§.t)
         {
            return this.§=$#§.t.silverTrophies;
         }
         if(this.§;"c§ && this.§;"c§.t)
         {
            return this.§;"c§.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§=$#§ && this.§=$#§.t)
         {
            return this.§=$#§.t.goldTrophies;
         }
         if(this.§;"c§ && this.§;"c§.t)
         {
            return this.§;"c§.t.goldTrophies;
         }
         return 0;
      }
      
      public function §2"O§(param1:String) : Number
      {
         return this.§!!o§[param1];
      }
      
      public function §4!P§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§!!o§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §]!m§.§break§)
         {
            return true;
         }
         this.§!!o§[param1] = _loc2_;
         return false;
      }
   }
}
