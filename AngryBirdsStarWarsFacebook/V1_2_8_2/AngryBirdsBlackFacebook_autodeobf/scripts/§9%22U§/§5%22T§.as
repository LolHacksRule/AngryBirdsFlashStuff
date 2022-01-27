package §9"U§
{
   import flash.utils.Dictionary;
   
   public class §5"T§
   {
       
      
      private var §'!3§:Dictionary;
      
      private var §8O§:Dictionary;
      
      private var §4"Q§:Dictionary;
      
      private var §9!"§:Dictionary;
      
      private var §-"n§:Dictionary;
      
      private var §?"h§:String;
      
      public function §5"T§(param1:String)
      {
         this.§'!3§ = new Dictionary();
         this.§8O§ = new Dictionary();
         this.§4"Q§ = new Dictionary();
         this.§9!"§ = new Dictionary();
         this.§-"n§ = new Dictionary();
         super();
         this.§?"h§ = param1;
      }
      
      public static function §&&§(param1:Array, param2:Array) : Array
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
      
      public function §2!P§(param1:String) : void
      {
         this.§4"Q§[param1] = param1;
      }
      
      public function §<"j§(param1:String) : void
      {
         this.§8O§[param1] = new Date().time;
      }
      
      public function §["R§(param1:String) : void
      {
         this.§-"n§[param1] = param1;
      }
      
      public function §3"D§(param1:String) : void
      {
         this.§'!3§[param1] = param1;
      }
      
      public function §?0§(param1:String) : Boolean
      {
         if(this.§9!"§[param1])
         {
            return false;
         }
         if(!this.§8O§[param1])
         {
            return true;
         }
         if(new Date().time - this.§8O§[param1] > 1000 * 60 * 60)
         {
            return true;
         }
         return false;
      }
      
      public function §6"3§(param1:String) : Boolean
      {
         return this.§'!3§[param1] == null && this.§9!"§[param1] == null;
      }
      
      public function §="a§(param1:String) : Boolean
      {
         return this.§9!"§[param1] == null && this.§4"Q§[param1] == null;
      }
      
      public function §9'§(param1:String) : Boolean
      {
         return this.§9!"§[param1] == null;
      }
      
      public function §0#7§(param1:String) : Boolean
      {
         return this.§-"n§[param1] == null;
      }
      
      public function §]"?§() : Dictionary
      {
         return this.§8O§;
      }
      
      public function §#"b§() : Dictionary
      {
         return this.§9!"§;
      }
      
      public function §&""§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§<"j§(_loc2_);
         }
      }
      
      public function § !N§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§9!"§[_loc2_] == null)
            {
               this.§9!"§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
