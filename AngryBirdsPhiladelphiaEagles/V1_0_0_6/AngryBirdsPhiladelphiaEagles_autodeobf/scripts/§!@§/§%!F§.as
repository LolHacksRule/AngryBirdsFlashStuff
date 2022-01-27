package §!@§
{
   public class §%!F§
   {
       
      
      private var §6"§:Boolean;
      
      private var value;
      
      private var §!v§:§4! §;
      
      private var §!Q§:§`E§;
      
      public function §%!F§(param1:String, param2:Boolean)
      {
         super();
         this.§6"§ = param2;
         this.§!v§ = new §4! §(param1,param2);
         this.§!!3§();
         this.value = this.§7!0§();
         if(param2 && this.§!!3§() != null)
         {
            this.§!v§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!3§() : §`E§
      {
         return this.§!Q§ = this.§!v§.§%[§();
      }
      
      private function §[Q§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!!3§();
         if(this.§!Q§.type == §]!<§.§-D§)
         {
            return _loc1_;
         }
         if(!this.§6"§ && this.§!Q§.type == §]!<§.§;!G§)
         {
            this.§!!3§();
            if(this.§!Q§.type == §]!<§.§-D§)
            {
               return _loc1_;
            }
            this.§!v§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§!Q§.value);
         }
         while(true)
         {
            _loc1_.push(this.§7!0§());
            this.§!!3§();
            if(this.§!Q§.type == §]!<§.§-D§)
            {
               break;
            }
            if(this.§!Q§.type == §]!<§.§;!G§)
            {
               this.§!!3§();
               if(!this.§6"§)
               {
                  if(this.§!Q§.type == §]!<§.§-D§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§!v§.parseError("Expecting ] or , but found " + this.§!Q§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'p§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!!3§();
         if(this.§!Q§.type == §]!<§.§%g§)
         {
            return _loc1_;
         }
         if(!this.§6"§ && this.§!Q§.type == §]!<§.§;!G§)
         {
            this.§!!3§();
            if(this.§!Q§.type == §]!<§.§%g§)
            {
               return _loc1_;
            }
            this.§!v§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§!Q§.value);
         }
         while(true)
         {
            if(this.§!Q§.type == §]!<§.§6!+§)
            {
               _loc2_ = String(this.§!Q§.value);
               this.§!!3§();
               if(this.§!Q§.type == §]!<§.§>N§)
               {
                  this.§!!3§();
                  _loc1_[_loc2_] = this.§7!0§();
                  this.§!!3§();
                  if(this.§!Q§.type == §]!<§.§%g§)
                  {
                     break;
                  }
                  if(this.§!Q§.type == §]!<§.§;!G§)
                  {
                     this.§!!3§();
                     if(!this.§6"§)
                     {
                        if(this.§!Q§.type == §]!<§.§%g§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§!v§.parseError("Expecting } or , but found " + this.§!Q§.value);
                  }
               }
               else
               {
                  this.§!v§.parseError("Expecting : but found " + this.§!Q§.value);
               }
            }
            else
            {
               this.§!v§.parseError("Expecting string but found " + this.§!Q§.value);
            }
         }
         return _loc1_;
      }
      
      private function §7!0§() : Object
      {
         if(this.§!Q§ == null)
         {
            this.§!v§.parseError("Unexpected end of input");
         }
         switch(this.§!Q§.type)
         {
            case §]!<§.§5M§:
               return this.§'p§();
            case §]!<§.§ !8§:
               return this.§[Q§();
            case §]!<§.§6!+§:
            case §]!<§.§1t§:
            case §]!<§.TRUE:
            case §]!<§.FALSE:
            case §]!<§.NULL:
               return this.§!Q§.value;
            case §]!<§.§-Y§:
               if(!this.§6"§)
               {
                  return this.§!Q§.value;
               }
               this.§!v§.parseError("Unexpected " + this.§!Q§.value);
               break;
         }
         this.§!v§.parseError("Unexpected " + this.§!Q§.value);
         return null;
      }
   }
}
