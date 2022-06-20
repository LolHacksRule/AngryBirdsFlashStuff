package §-#R§
{
   import §"$=§.§>"?§;
   import §+#B§.§4"[§;
   
   public class §4"p§
   {
       
      
      private var §2#=§:String;
      
      private var §8i§:Boolean;
      
      private var §8#y§:String;
      
      private var §[1§:String;
      
      private var §="I§:String;
      
      private var §#!$§:Array;
      
      private var §<#Q§:String;
      
      private var §1"7§:String;
      
      private var §4o§:§4"[§;
      
      private var §="p§:§4"[§;
      
      public function §4"p§(param1:String, param2:String, param3:String, param4:String, param5:Array = null, param6:String = "", param7:String = "", param8:Boolean = true)
      {
         super();
         this.§8#y§ = param1;
         this.§8i§ = param8;
         this.§2#=§ = param2;
         this.§[1§ = param3;
         this.§="I§ = param4;
         this.§#!$§ = param5;
         this.§<#Q§ = param6;
         this.§1"7§ = param7;
      }
      
      public function get §[L§() : String
      {
         return this.§2#=§;
      }
      
      public function get §2L§() : Boolean
      {
         return this.§8i§;
      }
      
      public function get §]'§() : String
      {
         return this.§8#y§;
      }
      
      public function get buttonName() : String
      {
         return this.§[1§;
      }
      
      public function get eventName() : String
      {
         return this.§="I§;
      }
      
      public function get §=#o§() : Array
      {
         if(this.§#!$§ != null)
         {
            return this.§#!$§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§<#Q§;
      }
      
      public function get §7!;§() : String
      {
         return this.§1"7§;
      }
      
      public function §0#-§(param1:String) : Object
      {
         if(this.§4o§)
         {
            return this.§4o§[param1];
         }
         return null;
      }
      
      public function §2#h§(param1:XML) : void
      {
         if(!this.§4o§)
         {
            this.§4o§ = new §4"[§();
         }
         this.§4o§[param1.@id] = this.§1"!§(param1);
      }
      
      public function §+#p§(param1:String) : Object
      {
         if(this.§="p§)
         {
            return this.§="p§[param1];
         }
         return null;
      }
      
      public function §?!g§(param1:XML) : void
      {
         if(!this.§="p§)
         {
            this.§="p§ = new §4"[§();
         }
         this.§="p§[param1.@id] = this.§1"!§(param1);
      }
      
      private function §1"!§(param1:XML) : Object
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
                  _loc2_[§>"?§.§;!"§(_loc3_.name())] = _loc3_.valueOf();
               }
            }
         }
         return _loc2_;
      }
   }
}
