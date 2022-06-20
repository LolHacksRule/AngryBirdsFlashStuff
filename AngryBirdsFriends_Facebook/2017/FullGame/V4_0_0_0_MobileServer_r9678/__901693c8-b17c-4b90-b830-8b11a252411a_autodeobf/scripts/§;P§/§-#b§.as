package §;P§
{
   import §6V§.§&"g§;
   import §@#§.§7!O§;
   
   public class §-#b§
   {
       
      
      private var §'#R§:String;
      
      private var §1"=§:Boolean;
      
      private var §6"&§:String;
      
      private var §-#f§:String;
      
      private var §0$"§:String;
      
      private var §5"V§:Array;
      
      private var §1"O§:String;
      
      private var §'#1§:String;
      
      private var §+"m§:§&"g§;
      
      private var §+"@§:§&"g§;
      
      public function §-#b§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true)
      {
         super();
         this.§6"&§ = param1;
         this.§1"=§ = param8;
         this.§'#R§ = param2;
         this.§-#f§ = param3;
         this.§0$"§ = param4;
         this.§5"V§ = param5;
         this.§1"O§ = param6;
         this.§'#1§ = param7;
      }
      
      public function get §,!&§() : String
      {
         return this.§'#R§;
      }
      
      public function get §,!b§() : Boolean
      {
         return this.§1"=§;
      }
      
      public function get §?"9§() : String
      {
         return this.§6"&§;
      }
      
      public function get buttonName() : String
      {
         return this.§-#f§;
      }
      
      public function get eventName() : String
      {
         return this.§0$"§;
      }
      
      public function get §5![§() : Array
      {
         if(this.§5"V§ != null)
         {
            return this.§5"V§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§1"O§;
      }
      
      public function get §@"m§() : String
      {
         return this.§'#1§;
      }
      
      public function §;$$§(param1:String) : Object
      {
         if(this.§+"m§)
         {
            return this.§+"m§[param1];
         }
         return null;
      }
      
      public function §^6§(param1:XML) : void
      {
         if(!this.§+"m§)
         {
            this.§+"m§ = new §&"g§();
         }
         this.§+"m§[param1.@id] = this.§@!`§(param1);
      }
      
      public function §&!b§(param1:String) : Object
      {
         if(this.§+"@§)
         {
            return this.§+"@§[param1];
         }
         return null;
      }
      
      public function §-S§(param1:XML) : void
      {
         if(!this.§+"@§)
         {
            this.§+"@§ = new §&"g§();
         }
         this.§+"@§[param1.@id] = this.§@!`§(param1);
      }
      
      private function §@!`§(param1:XML) : Object
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
                  _loc2_[§7!O§.§ f§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
   }
}
