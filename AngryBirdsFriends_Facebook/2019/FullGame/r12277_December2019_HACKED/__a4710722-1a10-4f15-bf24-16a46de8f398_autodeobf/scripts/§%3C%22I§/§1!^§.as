package §<"I§
{
   import §2E§.§&#a§;
   import §?o§.§#!P§;
   
   public class §1!^§
   {
       
      
      private var §'!e§:String;
      
      private var §^"S§:Boolean;
      
      private var §?"j§:String;
      
      private var §9#m§:String;
      
      private var §^$3§:String;
      
      private var §2!0§:Array;
      
      private var §>"V§:String;
      
      private var §<"E§:String;
      
      private var §<!p§:§&#a§;
      
      private var §@$2§:§&#a§;
      
      private var §6"=§:Boolean;
      
      public function §1!^§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true, param9:Boolean = true)
      {
         super();
         this.§?"j§ = param1;
         this.§^"S§ = param8;
         this.§'!e§ = param2;
         this.§9#m§ = param3;
         this.§^$3§ = param4;
         this.§2!0§ = param5;
         this.§>"V§ = param6;
         this.§<"E§ = param7;
         this.§6"=§ = param9;
      }
      
      public function get §[E§() : String
      {
         return this.§'!e§;
      }
      
      public function get §&!m§() : Boolean
      {
         return this.§^"S§;
      }
      
      public function get §=#@§() : String
      {
         return this.§?"j§;
      }
      
      public function get buttonName() : String
      {
         return this.§9#m§;
      }
      
      public function get eventName() : String
      {
         return this.§^$3§;
      }
      
      public function get §const§() : Array
      {
         if(this.§2!0§ != null)
         {
            return this.§2!0§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§>"V§;
      }
      
      public function get §3!C§() : String
      {
         return this.§<"E§;
      }
      
      public function §<#X§(param1:String) : Object
      {
         if(this.§<!p§)
         {
            return this.§<!p§[param1];
         }
         return null;
      }
      
      public function §5"3§(param1:XML) : void
      {
         if(!this.§<!p§)
         {
            this.§<!p§ = new §&#a§();
         }
         this.§<!p§[param1.@id] = this.§?!@§(param1);
      }
      
      public function §5#i§(param1:String) : Object
      {
         if(this.§@$2§)
         {
            return this.§@$2§[param1];
         }
         return null;
      }
      
      public function §&"F§(param1:XML) : void
      {
         if(!this.§@$2§)
         {
            this.§@$2§ = new §&#a§();
         }
         this.§@$2§[param1.@id] = this.§?!@§(param1);
      }
      
      private function §?!@§(param1:XML) : Object
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
                  _loc2_[§#!P§.§<"h§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
      
      public function get §[#;§() : Boolean
      {
         return this.§6"=§;
      }
   }
}
