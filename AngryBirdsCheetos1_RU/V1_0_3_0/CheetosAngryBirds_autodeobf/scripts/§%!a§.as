package
{
   public class §%!a§
   {
       
      
      private var §#Q§:Boolean;
      
      private var value;
      
      private var §^!-§:§?!O§;
      
      private var §,^§:§3!S§;
      
      public function §%!a§(param1:String, param2:Boolean)
      {
         super();
         this.§#Q§ = param2;
         this.§^!-§ = new §?!O§(param1,param2);
         this.§'!"§();
         this.value = this.§2M§();
         if(param2 && this.§'!"§() != null)
         {
            this.§^!-§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §'!"§() : §3!S§
      {
         return this.§,^§ = this.§^!-§.final();
      }
      
      private function §;G§() : Array
      {
         var _loc1_:Array = new Array();
         this.§'!"§();
         if(this.§,^§.type == §@C§.§0!b§)
         {
            return _loc1_;
         }
         if(!this.§#Q§ && this.§,^§.type == §@C§.§;e§)
         {
            this.§'!"§();
            if(this.§,^§.type == §@C§.§0!b§)
            {
               return _loc1_;
            }
            this.§^!-§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§,^§.value);
         }
         while(true)
         {
            _loc1_.push(this.§2M§());
            this.§'!"§();
            if(this.§,^§.type == §@C§.§0!b§)
            {
               break;
            }
            if(this.§,^§.type == §@C§.§;e§)
            {
               this.§'!"§();
               if(!this.§#Q§)
               {
                  if(this.§,^§.type == §@C§.§0!b§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§^!-§.parseError("Expecting ] or , but found " + this.§,^§.value);
            }
         }
         return _loc1_;
      }
      
      private function §7P§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§'!"§();
         if(this.§,^§.type == §@C§.§8p§)
         {
            return _loc1_;
         }
         if(!this.§#Q§ && this.§,^§.type == §@C§.§;e§)
         {
            this.§'!"§();
            if(this.§,^§.type == §@C§.§8p§)
            {
               return _loc1_;
            }
            this.§^!-§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§,^§.value);
         }
         while(true)
         {
            if(this.§,^§.type == §@C§.§@!,§)
            {
               _loc2_ = String(this.§,^§.value);
               this.§'!"§();
               if(this.§,^§.type == §@C§.§>!,§)
               {
                  this.§'!"§();
                  _loc1_[_loc2_] = this.§2M§();
                  this.§'!"§();
                  if(this.§,^§.type == §@C§.§8p§)
                  {
                     break;
                  }
                  if(this.§,^§.type == §@C§.§;e§)
                  {
                     this.§'!"§();
                     if(!this.§#Q§)
                     {
                        if(this.§,^§.type == §@C§.§8p§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§^!-§.parseError("Expecting } or , but found " + this.§,^§.value);
                  }
               }
               else
               {
                  this.§^!-§.parseError("Expecting : but found " + this.§,^§.value);
               }
            }
            else
            {
               this.§^!-§.parseError("Expecting string but found " + this.§,^§.value);
            }
         }
         return _loc1_;
      }
      
      private function §2M§() : Object
      {
         if(this.§,^§ == null)
         {
            this.§^!-§.parseError("Unexpected end of input");
         }
         switch(this.§,^§.type)
         {
            case §@C§.§3M§:
               return this.§7P§();
            case §@C§.§8!#§:
               return this.§;G§();
            case §@C§.§@!,§:
            case §@C§.§4!A§:
            case §@C§.TRUE:
            case §@C§.FALSE:
            case §@C§.§%s§:
               return this.§,^§.value;
            case §@C§.§-F§:
               if(!this.§#Q§)
               {
                  return this.§,^§.value;
               }
               this.§^!-§.parseError("Unexpected " + this.§,^§.value);
               break;
         }
         this.§^!-§.parseError("Unexpected " + this.§,^§.value);
         return null;
      }
   }
}
