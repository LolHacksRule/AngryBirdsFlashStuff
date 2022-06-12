package §!#C§
{
   import §>z§.ErrorPopup;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §1%§
   {
      
      private static var §1$8§:§1%§;
       
      
      private var §9!<§:Array;
      
      private var §+"%§:Dictionary;
      
      private var §9#z§:Dictionary;
      
      public function §1%§()
      {
         this.§9!<§ = [];
         this.§+"%§ = new Dictionary();
         this.§9#z§ = new Dictionary();
         super();
         if(§1$8§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t create more than one instance of ExceptionUserIDsManager."));
         }
         §1$8§ = this;
      }
      
      public static function get §`"H§() : §1%§
      {
         if(!§1$8§)
         {
            §1$8§ = new §1%§();
         }
         return §1$8§;
      }
      
      public static function §!#X§(param1:Array, param2:Array) : Array
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
      
      public function § #x§(param1:String) : void
      {
         if(this.§+"%§[param1] == null)
         {
            this.§+"%§[param1] = param1;
         }
      }
      
      public function §=#S§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§9!<§.indexOf(param1) == -1)
         {
            this.§9!<§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§ #v§.§return§(),§ #v§.§'# §);
               _loc3_.data.excludedChallenges = this.§9!<§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §&B§(param1:String) : Boolean
      {
         return this.§+"%§[param1] == null && this.§9#z§[param1] == null;
      }
      
      public function §2!7§(param1:String) : Boolean
      {
         return this.§9!<§.indexOf(param1) == -1 && this.§9#z§[param1] == null;
      }
      
      public function §4!s§(param1:String) : Boolean
      {
         return this.§9#z§[param1] == null;
      }
      
      public function §["l§(param1:String) : Boolean
      {
         return this.§9#z§[param1] == null;
      }
      
      public function §8#2§() : Array
      {
         return this.§9!<§;
      }
      
      public function §0"=§() : Dictionary
      {
         return this.§+"%§;
      }
      
      public function §+!V§() : Dictionary
      {
         return this.§9#z§;
      }
      
      public function §9#_§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§9#z§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §'#&§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§ #v§.§return§(),§ #v§.§'# §)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§=#S§(_loc3_,true);
         }
      }
      
      public function §<,§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§ #x§(_loc2_);
         }
      }
      
      public function §&$7§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§9#z§[_loc2_] == null)
            {
               this.§9#z§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
