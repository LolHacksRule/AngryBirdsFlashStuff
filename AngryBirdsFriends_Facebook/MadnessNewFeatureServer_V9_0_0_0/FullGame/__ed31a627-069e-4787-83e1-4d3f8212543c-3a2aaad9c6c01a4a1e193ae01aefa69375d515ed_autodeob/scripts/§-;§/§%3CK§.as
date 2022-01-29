package §-;§
{
   import §&!_§.§[!j§;
   import §,"v§.§^!b§;
   
   public class §<K§
   {
       
      
      private var §]"d§:String;
      
      private var §!#w§:Boolean;
      
      private var §;!Z§:String;
      
      private var §9!q§:String;
      
      private var §`"+§:String;
      
      private var §+5§:Array;
      
      private var §9!d§:String;
      
      private var §9$D§:String;
      
      private var §[x§:§[!j§;
      
      private var §;#^§:§[!j§;
      
      public function §<K§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true)
      {
         super();
         this.§;!Z§ = param1;
         this.§!#w§ = param8;
         this.§]"d§ = param2;
         this.§9!q§ = param3;
         this.§`"+§ = param4;
         this.§+5§ = param5;
         this.§9!d§ = param6;
         this.§9$D§ = param7;
      }
      
      public function get § #=§() : String
      {
         return this.§]"d§;
      }
      
      public function get §16§() : Boolean
      {
         return this.§!#w§;
      }
      
      public function get §1#7§() : String
      {
         return this.§;!Z§;
      }
      
      public function get buttonName() : String
      {
         return this.§9!q§;
      }
      
      public function get eventName() : String
      {
         return this.§`"+§;
      }
      
      public function get §`$5§() : Array
      {
         if(this.§+5§ != null)
         {
            return this.§+5§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§9!d§;
      }
      
      public function get §]Y§() : String
      {
         return this.§9$D§;
      }
      
      public function §;V§(param1:String) : Object
      {
         if(this.§[x§)
         {
            return this.§[x§[param1];
         }
         return null;
      }
      
      public function §'"5§(param1:XML) : void
      {
         if(!this.§[x§)
         {
            this.§[x§ = new §[!j§();
         }
         this.§[x§[param1.@id] = this.§0!u§(param1);
      }
      
      public function §`9§(param1:String) : Object
      {
         if(this.§;#^§)
         {
            return this.§;#^§[param1];
         }
         return null;
      }
      
      public function §=$§(param1:XML) : void
      {
         if(!this.§;#^§)
         {
            this.§;#^§ = new §[!j§();
         }
         this.§;#^§[param1.@id] = this.§0!u§(param1);
      }
      
      private function §0!u§(param1:XML) : Object
      {
         var _loc3_:XML = null;
         var _loc2_:Object = new Object();
         for each(_loc3_ in param1.attributes())
         {
            if(_loc3_.name() != "id")
            {
               if(_loc3_.name() == "piglette")
               {
                  _loc2_["MATERIAL_PIG_BASIC_SMALL"] = _loc3_.valueOf();
                  _loc2_["MATERIAL_PIG_BASIC_MEDIUM"] = _loc3_.valueOf();
                  _loc2_["MATERIAL_PIG_BASIC_BIG"] = _loc3_.valueOf();
                  _loc2_["MATERIAL_PIG_BASIC_KING"] = _loc3_.valueOf();
                  _loc2_["MATERIAL_PIG_BASIC_MUSTACHE"] = _loc3_.valueOf();
                  _loc2_["MATERIAL_PIG_BASIC_HELMET"] = _loc3_.valueOf();
               }
               else
               {
                  _loc2_[§^!b§.§2X§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
   }
}
