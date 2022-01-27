package §,"N§
{
   import flash.utils.Dictionary;
   
   public class §=!1§
   {
       
      
      private var §@"D§:Dictionary;
      
      private var §=""§:Dictionary;
      
      private var §<!3§:Dictionary;
      
      private var §+#!§:Dictionary;
      
      private var §#@§:Dictionary;
      
      private var §?!S§:String;
      
      public function §=!1§(param1:String)
      {
         this.§@"D§ = new Dictionary();
         this.§=""§ = new Dictionary();
         this.§<!3§ = new Dictionary();
         this.§+#!§ = new Dictionary();
         this.§#@§ = new Dictionary();
         super();
         this.§?!S§ = param1;
      }
      
      public static function §2#T§(param1:Array, param2:Array) : Array
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
      
      public function §^#K§(param1:String) : void
      {
         this.§<!3§[param1] = param1;
      }
      
      public function §!7§(param1:String) : void
      {
         this.§=""§[param1] = new Date().time;
      }
      
      public function §3!8§(param1:String) : void
      {
         this.§#@§[param1] = param1;
      }
      
      public function §4T§(param1:String) : void
      {
         this.§@"D§[param1] = param1;
      }
      
      public function §%#-§(param1:String) : Boolean
      {
         if(this.§+#!§[param1])
         {
            return false;
         }
         if(!this.§=""§[param1])
         {
            return true;
         }
         if(new Date().time - this.§=""§[param1] > 1000 * 60 * 60)
         {
            return true;
         }
         return false;
      }
      
      public function §'!H§(param1:String) : Boolean
      {
         return this.§@"D§[param1] == null && this.§+#!§[param1] == null;
      }
      
      public function §]"[§(param1:String) : Boolean
      {
         return this.§+#!§[param1] == null && this.§<!3§[param1] == null;
      }
      
      public function §[!D§(param1:String) : Boolean
      {
         return this.§+#!§[param1] == null;
      }
      
      public function §@"%§(param1:String) : Boolean
      {
         return this.§#@§[param1] == null;
      }
      
      public function §##$§() : Dictionary
      {
         return this.§=""§;
      }
      
      public function §^!6§() : Dictionary
      {
         return this.§+#!§;
      }
      
      public function §2"x§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§!7§(_loc2_);
         }
      }
      
      public function §>E§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§+#!§[_loc2_] == null)
            {
               this.§+#!§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
