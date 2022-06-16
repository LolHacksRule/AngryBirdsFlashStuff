package §&$!§
{
   import §;$3§.§-!'§;
   import §`7§.§0t§;
   
   public class §##a§
   {
       
      
      private var §=<§:String;
      
      private var §2"&§:Boolean;
      
      private var §-"v§:String;
      
      private var §>"G§:String;
      
      private var §,"G§:String;
      
      private var §5!,§:Array;
      
      private var §9#'§:String;
      
      private var §>!S§:String;
      
      private var §#$6§:§0t§;
      
      private var § !Z§:§0t§;
      
      public function §##a§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true)
      {
         super();
         this.§-"v§ = param1;
         this.§2"&§ = param8;
         this.§=<§ = param2;
         this.§>"G§ = param3;
         this.§,"G§ = param4;
         this.§5!,§ = param5;
         this.§9#'§ = param6;
         this.§>!S§ = param7;
      }
      
      public function get §9§() : String
      {
         return this.§=<§;
      }
      
      public function get §0!7§() : Boolean
      {
         return this.§2"&§;
      }
      
      public function get §5"g§() : String
      {
         return this.§-"v§;
      }
      
      public function get buttonName() : String
      {
         return this.§>"G§;
      }
      
      public function get eventName() : String
      {
         return this.§,"G§;
      }
      
      public function get §6!d§() : Array
      {
         if(this.§5!,§ != null)
         {
            return this.§5!,§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§9#'§;
      }
      
      public function get §5#z§() : String
      {
         return this.§>!S§;
      }
      
      public function §&$9§(param1:String) : Object
      {
         if(this.§#$6§)
         {
            return this.§#$6§[param1];
         }
         return null;
      }
      
      public function §`Z§(param1:XML) : void
      {
         if(!this.§#$6§)
         {
            this.§#$6§ = new §0t§();
         }
         this.§#$6§[param1.@id] = this.§'!C§(param1);
      }
      
      public function §<!]§(param1:String) : Object
      {
         if(this.§ !Z§)
         {
            return this.§ !Z§[param1];
         }
         return null;
      }
      
      public function §1!>§(param1:XML) : void
      {
         if(!this.§ !Z§)
         {
            this.§ !Z§ = new §0t§();
         }
         this.§ !Z§[param1.@id] = this.§'!C§(param1);
      }
      
      private function §'!C§(param1:XML) : Object
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
                  _loc2_[§-!'§.§,K§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
   }
}
