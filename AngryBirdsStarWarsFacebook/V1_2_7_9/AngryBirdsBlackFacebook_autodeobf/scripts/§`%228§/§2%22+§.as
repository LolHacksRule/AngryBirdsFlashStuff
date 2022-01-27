package §`"8§
{
   import flash.utils.Dictionary;
   
   public class §2"+§
   {
       
      
      private var §"v§:Dictionary;
      
      private var §2"t§:Dictionary;
      
      private var §6!R§:Dictionary;
      
      private var §3#,§:Dictionary;
      
      private var §-!#§:Dictionary;
      
      private var §<"`§:String;
      
      public function §2"+§(param1:String)
      {
         this.§"v§ = new Dictionary();
         this.§2"t§ = new Dictionary();
         this.§6!R§ = new Dictionary();
         this.§3#,§ = new Dictionary();
         this.§-!#§ = new Dictionary();
         super();
         this.§<"`§ = param1;
      }
      
      public static function §get §(param1:Array, param2:Array) : Array
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
      
      public function §4"§(param1:String) : void
      {
         this.§6!R§[param1] = param1;
      }
      
      public function §2!Y§(param1:String) : void
      {
         this.§2"t§[param1] = new Date().time;
      }
      
      public function §<!L§(param1:String) : void
      {
         this.§-!#§[param1] = param1;
      }
      
      public function §^!<§(param1:String) : void
      {
         this.§"v§[param1] = param1;
      }
      
      public function §1!I§(param1:String) : Boolean
      {
         if(this.§3#,§[param1])
         {
            return false;
         }
         if(!this.§2"t§[param1])
         {
            return true;
         }
         if(new Date().time - this.§2"t§[param1] > 1000 * 60 * 60)
         {
            return true;
         }
         return false;
      }
      
      public function §^"D§(param1:String) : Boolean
      {
         return this.§"v§[param1] == null && this.§3#,§[param1] == null;
      }
      
      public function §%"4§(param1:String) : Boolean
      {
         return this.§3#,§[param1] == null && this.§6!R§[param1] == null;
      }
      
      public function §8"4§(param1:String) : Boolean
      {
         return this.§3#,§[param1] == null;
      }
      
      public function §'!3§(param1:String) : Boolean
      {
         return this.§-!#§[param1] == null;
      }
      
      public function §>y§() : Dictionary
      {
         return this.§2"t§;
      }
      
      public function §&"S§() : Dictionary
      {
         return this.§3#,§;
      }
      
      public function §>"t§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§2!Y§(_loc2_);
         }
      }
      
      public function §+#7§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§3#,§[_loc2_] == null)
            {
               this.§3#,§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
