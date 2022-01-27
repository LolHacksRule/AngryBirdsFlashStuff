package §6!J§
{
   public class §3!B§
   {
       
      
      private var §0!x§:Boolean;
      
      private var value;
      
      private var §5"?§:§7o§;
      
      private var §-!S§:§]!'§;
      
      public function §3!B§(param1:String, param2:Boolean)
      {
         super();
         this.§0!x§ = param2;
         this.§5"?§ = new §7o§(param1,param2);
         this.§0>§();
         this.value = this.§;!y§();
         if(param2 && this.§0>§() != null)
         {
            this.§5"?§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §0>§() : §]!'§
      {
         return this.§-!S§ = this.§5"?§.§`"+§();
      }
      
      private function §>S§() : Array
      {
         var _loc1_:Array = new Array();
         this.§0>§();
         if(this.§-!S§.type == §@!X§.§7!p§)
         {
            return _loc1_;
         }
         if(!this.§0!x§ && this.§-!S§.type == §@!X§.§'!b§)
         {
            this.§0>§();
            if(this.§-!S§.type == §@!X§.§7!p§)
            {
               return _loc1_;
            }
            this.§5"?§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§-!S§.value);
         }
         while(true)
         {
            _loc1_.push(this.§;!y§());
            this.§0>§();
            if(this.§-!S§.type == §@!X§.§7!p§)
            {
               break;
            }
            if(this.§-!S§.type == §@!X§.§'!b§)
            {
               this.§0>§();
               if(!this.§0!x§)
               {
                  if(this.§-!S§.type == §@!X§.§7!p§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§5"?§.parseError("Expecting ] or , but found " + this.§-!S§.value);
            }
         }
         return _loc1_;
      }
      
      private function §!!V§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§0>§();
         if(this.§-!S§.type == §@!X§.§!"+§)
         {
            return _loc1_;
         }
         if(!this.§0!x§ && this.§-!S§.type == §@!X§.§'!b§)
         {
            this.§0>§();
            if(this.§-!S§.type == §@!X§.§!"+§)
            {
               return _loc1_;
            }
            this.§5"?§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§-!S§.value);
         }
         while(true)
         {
            if(this.§-!S§.type == §@!X§.§9"2§)
            {
               _loc2_ = String(this.§-!S§.value);
               this.§0>§();
               if(this.§-!S§.type == §@!X§.§?!$§)
               {
                  this.§0>§();
                  _loc1_[_loc2_] = this.§;!y§();
                  this.§0>§();
                  if(this.§-!S§.type == §@!X§.§!"+§)
                  {
                     break;
                  }
                  if(this.§-!S§.type == §@!X§.§'!b§)
                  {
                     this.§0>§();
                     if(!this.§0!x§)
                     {
                        if(this.§-!S§.type == §@!X§.§!"+§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§5"?§.parseError("Expecting } or , but found " + this.§-!S§.value);
                  }
               }
               else
               {
                  this.§5"?§.parseError("Expecting : but found " + this.§-!S§.value);
               }
            }
            else
            {
               this.§5"?§.parseError("Expecting string but found " + this.§-!S§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;!y§() : Object
      {
         if(this.§-!S§ == null)
         {
            this.§5"?§.parseError("Unexpected end of input");
         }
         switch(this.§-!S§.type)
         {
            case §@!X§.§3"&§:
               return this.§!!V§();
            case §@!X§.§3x§:
               return this.§>S§();
            case §@!X§.§9"2§:
            case §@!X§.§ !@§:
            case §@!X§.TRUE:
            case §@!X§.FALSE:
            case §@!X§.NULL:
               return this.§-!S§.value;
            case §@!X§.§"!Z§:
               if(!this.§0!x§)
               {
                  return this.§-!S§.value;
               }
               this.§5"?§.parseError("Unexpected " + this.§-!S§.value);
               break;
         }
         this.§5"?§.parseError("Unexpected " + this.§-!S§.value);
         return null;
      }
   }
}
