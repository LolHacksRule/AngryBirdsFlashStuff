package §]"'§
{
   import §?!N§.ErrorPopup;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §-!#§
   {
      
      private static var §#!5§:§-!#§;
       
      
      private var §;!4§:Array;
      
      private var §+#q§:Dictionary;
      
      private var §`r§:Dictionary;
      
      public function §-!#§()
      {
         this.§;!4§ = [];
         this.§+#q§ = new Dictionary();
         this.§`r§ = new Dictionary();
         super();
         if(§#!5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t create more than one instance of ExceptionUserIDsManager."));
         }
         §#!5§ = this;
      }
      
      public static function get §?q§() : §-!#§
      {
         if(!§#!5§)
         {
            §#!5§ = new §-!#§();
         }
         return §#!5§;
      }
      
      public static function §@!!§(param1:Array, param2:Array) : Array
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
      
      public function §!"1§(param1:String) : void
      {
         if(this.§+#q§[param1] == null)
         {
            this.§+#q§[param1] = param1;
         }
      }
      
      public function §1">§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§;!4§.indexOf(param1) == -1)
         {
            this.§;!4§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§'"a§.§6"`§(),§'"a§.§"h§);
               _loc3_.data.excludedChallenges = this.§;!4§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §?!u§(param1:String) : Boolean
      {
         return this.§+#q§[param1] == null && this.§`r§[param1] == null;
      }
      
      public function §8p§(param1:String) : Boolean
      {
         return this.§;!4§.indexOf(param1) == -1 && this.§`r§[param1] == null;
      }
      
      public function §=!#§(param1:String) : Boolean
      {
         return this.§`r§[param1] == null;
      }
      
      public function §6"B§(param1:String) : Boolean
      {
         return this.§`r§[param1] == null;
      }
      
      public function §4]§() : Array
      {
         return this.§;!4§;
      }
      
      public function §`"f§() : Dictionary
      {
         return this.§+#q§;
      }
      
      public function §]#0§() : Dictionary
      {
         return this.§`r§;
      }
      
      public function §1"C§() : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = this.§`r§;
         if(!(§§hasnext(_loc3_,_loc2_)))
         {
            return true;
         }
      }
      
      public function §8"&§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§'"a§.§6"`§(),§'"a§.§"h§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§1">§(_loc3_,true);
         }
      }
      
      public function §0#1§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§!"1§(_loc2_);
         }
      }
      
      public function §>0§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§`r§[_loc2_] == null)
            {
               this.§`r§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
