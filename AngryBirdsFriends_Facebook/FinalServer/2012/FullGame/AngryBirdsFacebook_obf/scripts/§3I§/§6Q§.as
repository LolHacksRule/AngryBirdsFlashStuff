package §3I§
{
   public class §6Q§
   {
       
      
      private var §`!o§:Boolean;
      
      private var value;
      
      private var §,!-§:§1!-§;
      
      private var §=!F§:§#X§;
      
      public function §6Q§(param1:String, param2:Boolean)
      {
         super();
         this.§`!o§ = param2;
         this.§,!-§ = new §1!-§(param1,param2);
         this.§2!k§();
         this.value = this.§1!h§();
         if(param2 && this.§2!k§() != null)
         {
            this.§,!-§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §2!k§() : §#X§
      {
         return this.§=!F§ = this.§,!-§.§!"5§();
      }
      
      private function §3j§() : Array
      {
         var _loc1_:Array = new Array();
         this.§2!k§();
         if(this.§=!F§.type == §!p§.§%7§)
         {
            return _loc1_;
         }
         if(!this.§`!o§ && this.§=!F§.type == §!p§.§[Z§)
         {
            this.§2!k§();
            if(this.§=!F§.type == §!p§.§%7§)
            {
               return _loc1_;
            }
            this.§,!-§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§=!F§.value);
         }
         while(true)
         {
            _loc1_.push(this.§1!h§());
            this.§2!k§();
            if(this.§=!F§.type == §!p§.§%7§)
            {
               break;
            }
            if(this.§=!F§.type == §!p§.§[Z§)
            {
               this.§2!k§();
               if(!this.§`!o§)
               {
                  if(this.§=!F§.type == §!p§.§%7§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,!-§.parseError("Expecting ] or , but found " + this.§=!F§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3!<§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§2!k§();
         if(this.§=!F§.type == §!p§.§%<§)
         {
            return _loc1_;
         }
         if(!this.§`!o§ && this.§=!F§.type == §!p§.§[Z§)
         {
            this.§2!k§();
            if(this.§=!F§.type == §!p§.§%<§)
            {
               return _loc1_;
            }
            this.§,!-§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§=!F§.value);
         }
         while(true)
         {
            if(this.§=!F§.type == §!p§.§=!j§)
            {
               _loc2_ = String(this.§=!F§.value);
               this.§2!k§();
               if(this.§=!F§.type == §!p§.§,"C§)
               {
                  this.§2!k§();
                  _loc1_[_loc2_] = this.§1!h§();
                  this.§2!k§();
                  if(this.§=!F§.type == §!p§.§%<§)
                  {
                     break;
                  }
                  if(this.§=!F§.type == §!p§.§[Z§)
                  {
                     this.§2!k§();
                     if(!this.§`!o§)
                     {
                        if(this.§=!F§.type == §!p§.§%<§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,!-§.parseError("Expecting } or , but found " + this.§=!F§.value);
                  }
               }
               else
               {
                  this.§,!-§.parseError("Expecting : but found " + this.§=!F§.value);
               }
            }
            else
            {
               this.§,!-§.parseError("Expecting string but found " + this.§=!F§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1!h§() : Object
      {
         if(this.§=!F§ == null)
         {
            this.§,!-§.parseError("Unexpected end of input");
         }
         switch(this.§=!F§.type)
         {
            case §!p§.§@""§:
               return this.§3!<§();
            case §!p§.§93§:
               return this.§3j§();
            case §!p§.§=!j§:
            case §!p§.§,!R§:
            case §!p§.TRUE:
            case §!p§.FALSE:
            case §!p§.NULL:
               return this.§=!F§.value;
            case §!p§.§3!,§:
               if(!this.§`!o§)
               {
                  return this.§=!F§.value;
               }
               this.§,!-§.parseError("Unexpected " + this.§=!F§.value);
               break;
         }
         this.§,!-§.parseError("Unexpected " + this.§=!F§.value);
         return null;
      }
   }
}
