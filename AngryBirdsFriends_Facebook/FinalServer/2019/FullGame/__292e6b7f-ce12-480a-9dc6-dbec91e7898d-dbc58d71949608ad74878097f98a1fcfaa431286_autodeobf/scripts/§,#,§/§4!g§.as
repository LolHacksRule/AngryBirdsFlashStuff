package §,#,§
{
   import §?Q§.ErrorPopup;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §4!g§
   {
      
      private static var §+#!§:§4!g§;
       
      
      private var §+!l§:Array;
      
      private var §5"5§:Dictionary;
      
      private var §?L§:Dictionary;
      
      public function §4!g§()
      {
         this.§+!l§ = [];
         this.§5"5§ = new Dictionary();
         this.§?L§ = new Dictionary();
         super();
         if(§+#!§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t create more than one instance of ExceptionUserIDsManager."));
         }
         §+#!§ = this;
      }
      
      public static function get §+!,§() : §4!g§
      {
         if(!§+#!§)
         {
            §+#!§ = new §4!g§();
         }
         return §+#!§;
      }
      
      public static function §6`§(param1:Array, param2:Array) : Array
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
      
      public function §?" §(param1:String) : void
      {
         if(this.§5"5§[param1] == null)
         {
            this.§5"5§[param1] = param1;
         }
      }
      
      public function §@%§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§+!l§.indexOf(param1) == -1)
         {
            this.§+!l§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§@z§.§0"=§(),§@z§.§7!P§);
               _loc3_.data.excludedChallenges = this.§+!l§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §8$§(param1:String) : Boolean
      {
         return this.§5"5§[param1] == null && this.§?L§[param1] == null;
      }
      
      public function §^!D§(param1:String) : Boolean
      {
         return this.§+!l§.indexOf(param1) == -1 && this.§?L§[param1] == null;
      }
      
      public function §1!b§(param1:String) : Boolean
      {
         return this.§?L§[param1] == null;
      }
      
      public function §'!Y§(param1:String) : Boolean
      {
         return this.§?L§[param1] == null;
      }
      
      public function §&!x§() : Array
      {
         return this.§+!l§;
      }
      
      public function §'!J§() : Dictionary
      {
         return this.§5"5§;
      }
      
      public function §;"q§() : Dictionary
      {
         return this.§?L§;
      }
      
      public function §,"x§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§?L§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §!<§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§@z§.§0"=§(),§@z§.§7!P§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§@%§(_loc3_,true);
         }
      }
      
      public function §?$C§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§?" §(_loc2_);
         }
      }
      
      public function §]"@§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§?L§[_loc2_] == null)
            {
               this.§?L§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
