package §9T§
{
   import §#"4§.§&r§;
   import §7#$§.§["5§;
   
   public class §!#;§
   {
       
      
      private var §2!F§:String;
      
      private var §7!A§:Boolean;
      
      private var §%$#§:String;
      
      private var §`"l§:String;
      
      private var §>#x§:String;
      
      private var §%$7§:Array;
      
      private var §&"K§:String;
      
      private var §'#[§:String;
      
      private var §>!a§:§&r§;
      
      private var §<z§:§&r§;
      
      private var §&"m§:Boolean;
      
      public function §!#;§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true, param9:Boolean = true)
      {
         super();
         this.§%$#§ = param1;
         this.§7!A§ = param8;
         this.§2!F§ = param2;
         this.§`"l§ = param3;
         this.§>#x§ = param4;
         this.§%$7§ = param5;
         this.§&"K§ = param6;
         this.§'#[§ = param7;
         this.§&"m§ = param9;
      }
      
      public function get §"l§() : String
      {
         return this.§2!F§;
      }
      
      public function get §3!w§() : Boolean
      {
         return this.§7!A§;
      }
      
      public function get §8t§() : String
      {
         return this.§%$#§;
      }
      
      public function get buttonName() : String
      {
         return this.§`"l§;
      }
      
      public function get eventName() : String
      {
         return this.§>#x§;
      }
      
      public function get §<!x§() : Array
      {
         if(this.§%$7§ != null)
         {
            return this.§%$7§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§&"K§;
      }
      
      public function get §7!6§() : String
      {
         return this.§'#[§;
      }
      
      public function §&3§(param1:String) : Object
      {
         if(this.§>!a§)
         {
            return this.§>!a§[param1];
         }
         return null;
      }
      
      public function §]!]§(param1:XML) : void
      {
         if(!this.§>!a§)
         {
            this.§>!a§ = new §&r§();
         }
         this.§>!a§[param1.@id] = this.§[!v§(param1);
      }
      
      public function §%`§(param1:String) : Object
      {
         if(this.§<z§)
         {
            return this.§<z§[param1];
         }
         return null;
      }
      
      public function §-$4§(param1:XML) : void
      {
         if(!this.§<z§)
         {
            this.§<z§ = new §&r§();
         }
         this.§<z§[param1.@id] = this.§[!v§(param1);
      }
      
      private function §[!v§(param1:XML) : Object
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
                  _loc2_[§["5§.§2$;§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]!^§() : Boolean
      {
         return this.§&"m§;
      }
   }
}
