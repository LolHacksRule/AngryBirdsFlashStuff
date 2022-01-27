package §=^§
{
   public class §"!=§
   {
       
      
      private var §^#§:Boolean;
      
      private var value;
      
      private var §9s§:§?!M§;
      
      private var §;h§:§7>§;
      
      public function §"!=§(param1:String, param2:Boolean)
      {
         super();
         this.§^#§ = param2;
         this.§9s§ = new §?!M§(param1,param2);
         this.§@§();
         this.value = this.§5C§();
         if(param2 && this.§@§() != null)
         {
            this.§9s§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §@§() : §7>§
      {
         return this.§;h§ = this.§9s§.§`^§();
      }
      
      private function §,!D§() : Array
      {
         var _loc1_:Array = new Array();
         this.§@§();
         if(this.§;h§.type == §,4§.§ use§)
         {
            return _loc1_;
         }
         if(!this.§^#§ && this.§;h§.type == §,4§.§ null§)
         {
            this.§@§();
            if(this.§;h§.type == §,4§.§ use§)
            {
               return _loc1_;
            }
            this.§9s§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§;h§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5C§());
            this.§@§();
            if(this.§;h§.type == §,4§.§ use§)
            {
               break;
            }
            if(this.§;h§.type == §,4§.§ null§)
            {
               this.§@§();
               if(!this.§^#§)
               {
                  if(this.§;h§.type == §,4§.§ use§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§9s§.parseError("Expecting ] or , but found " + this.§;h§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1!D§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§@§();
         if(this.§;h§.type == §,4§.§[!5§)
         {
            return _loc1_;
         }
         if(!this.§^#§ && this.§;h§.type == §,4§.§ null§)
         {
            this.§@§();
            if(this.§;h§.type == §,4§.§[!5§)
            {
               return _loc1_;
            }
            this.§9s§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§;h§.value);
         }
         while(true)
         {
            if(this.§;h§.type == §,4§.§[<§)
            {
               _loc2_ = String(this.§;h§.value);
               this.§@§();
               if(this.§;h§.type == §,4§.§^!9§)
               {
                  this.§@§();
                  _loc1_[_loc2_] = this.§5C§();
                  this.§@§();
                  if(this.§;h§.type == §,4§.§[!5§)
                  {
                     break;
                  }
                  if(this.§;h§.type == §,4§.§ null§)
                  {
                     this.§@§();
                     if(!this.§^#§)
                     {
                        if(this.§;h§.type == §,4§.§[!5§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§9s§.parseError("Expecting } or , but found " + this.§;h§.value);
                  }
               }
               else
               {
                  this.§9s§.parseError("Expecting : but found " + this.§;h§.value);
               }
            }
            else
            {
               this.§9s§.parseError("Expecting string but found " + this.§;h§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5C§() : Object
      {
         if(this.§;h§ == null)
         {
            this.§9s§.parseError("Unexpected end of input");
         }
         switch(this.§;h§.type)
         {
            case §,4§.§3!3§:
               return this.§1!D§();
            case §,4§.§3!0§:
               return this.§,!D§();
            case §,4§.§[<§:
            case §,4§.§catch§:
            case §,4§.TRUE:
            case §,4§.FALSE:
            case §,4§.NULL:
               return this.§;h§.value;
            case §,4§.§9!?§:
               if(!this.§^#§)
               {
                  return this.§;h§.value;
               }
               this.§9s§.parseError("Unexpected " + this.§;h§.value);
               break;
         }
         this.§9s§.parseError("Unexpected " + this.§;h§.value);
         return null;
      }
   }
}
