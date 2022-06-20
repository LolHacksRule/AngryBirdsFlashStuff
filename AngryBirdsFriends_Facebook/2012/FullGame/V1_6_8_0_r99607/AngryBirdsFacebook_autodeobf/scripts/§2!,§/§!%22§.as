package §2!,§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §!"§
   {
      
      private static var §#!O§:§!"§;
       
      
      private var §!q§:Array;
      
      private var §-"#§:Dictionary;
      
      private var §#7§:Dictionary;
      
      public function §!"§()
      {
         this.§!q§ = [];
         this.§-"#§ = new Dictionary();
         this.§#7§ = new Dictionary();
         super();
         if(§#!O§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §#!O§ = this;
      }
      
      public static function get §8c§() : §!"§
      {
         if(!§#!O§)
         {
            §#!O§ = new §!"§();
         }
         return §#!O§;
      }
      
      public static function §]!§(param1:Array, param2:Array) : Array
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
      
      public function §1!0§(param1:String) : void
      {
         if(this.§-"#§[param1] == null)
         {
            this.§-"#§[param1] = param1;
         }
      }
      
      public function §[3§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§!q§.indexOf(param1) == -1)
         {
            this.§!q§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§ W§.§"!u§(),§ W§.§;q§);
               _loc3_.data.excludedChallenges = this.§!q§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §5!j§(param1:String) : Boolean
      {
         return this.§-"#§[param1] == null && this.§#7§[param1] == null;
      }
      
      public function §["§(param1:String) : Boolean
      {
         return this.§!q§.indexOf(param1) == -1 && this.§#7§[param1] == null;
      }
      
      public function §#3§(param1:String) : Boolean
      {
         return this.§#7§[param1] == null;
      }
      
      public function §`U§(param1:String) : Boolean
      {
         return this.§#7§[param1] == null;
      }
      
      public function §]n§() : Array
      {
         return this.§!q§;
      }
      
      public function §-!U§() : Dictionary
      {
         return this.§-"#§;
      }
      
      public function §]S§() : Dictionary
      {
         return this.§#7§;
      }
      
      public function §7!,§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§ W§.§"!u§(),§ W§.§;q§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§[3§(_loc3_,true);
         }
      }
      
      public function §6'§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§1!0§(_loc2_);
         }
      }
      
      public function §9i§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§#7§[_loc2_] == null)
            {
               this.§#7§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
