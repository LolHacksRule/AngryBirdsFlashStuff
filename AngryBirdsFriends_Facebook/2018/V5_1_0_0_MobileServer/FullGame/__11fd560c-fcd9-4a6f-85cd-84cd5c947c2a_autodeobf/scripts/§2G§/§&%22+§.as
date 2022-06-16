package §2G§
{
   import §?P§.ErrorPopup;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §&"+§
   {
      
      private static var §!c§:§&"+§;
       
      
      private var §4!u§:Array;
      
      private var dynamic:Dictionary;
      
      private var §""U§:Dictionary;
      
      public function §&"+§()
      {
         this.§4!u§ = [];
         this.dynamic = new Dictionary();
         this.§""U§ = new Dictionary();
         super();
         if(§!c§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t create more than one instance of ExceptionUserIDsManager."));
         }
         §!c§ = this;
      }
      
      public static function get §6!§() : §&"+§
      {
         if(!§!c§)
         {
            §!c§ = new §&"+§();
         }
         return §!c§;
      }
      
      public static function §-!O§(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §5#D§(param1:String) : void
      {
         if(this.dynamic[param1] == null)
         {
            this.dynamic[param1] = param1;
         }
      }
      
      public function §1#$§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§4!u§.indexOf(param1) == -1)
         {
            this.§4!u§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§,A§.§3a§(),§,A§.§-d§);
               _loc3_.data.excludedChallenges = this.§4!u§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §^#n§(param1:String) : Boolean
      {
         return this.dynamic[param1] == null && this.§""U§[param1] == null;
      }
      
      public function §'$@§(param1:String) : Boolean
      {
         return this.§4!u§.indexOf(param1) == -1 && this.§""U§[param1] == null;
      }
      
      public function §6l§(param1:String) : Boolean
      {
         return this.§""U§[param1] == null;
      }
      
      public function §40§(param1:String) : Boolean
      {
         return this.§""U§[param1] == null;
      }
      
      public function §?"N§() : Array
      {
         return this.§4!u§;
      }
      
      public function §6!C§() : Dictionary
      {
         return this.dynamic;
      }
      
      public function §>?§() : Dictionary
      {
         return this.§""U§;
      }
      
      public function §,#U§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§""U§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §4"b§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§,A§.§3a§(),§,A§.§-d§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§1#$§(_loc3_,true);
         }
      }
      
      public function §6$4§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§5#D§(_loc2_);
         }
      }
      
      public function §+"z§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§""U§[_loc2_] == null)
            {
               this.§""U§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
