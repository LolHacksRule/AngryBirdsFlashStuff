package §#-§
{
   public class §]!4§
   {
       
      
      private var §7j§:Boolean;
      
      private var value;
      
      private var §,!R§:§`X§;
      
      private var §;!>§:§[!5§;
      
      public function §]!4§(param1:String, param2:Boolean)
      {
         super();
         this.§7j§ = param2;
         this.§,!R§ = new §`X§(param1,param2);
         this.§[k§();
         this.value = this.§#!+§();
         if(param2 && this.§[k§() != null)
         {
            this.§,!R§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §[k§() : §[!5§
      {
         return this.§;!>§ = this.§,!R§.§-!I§();
      }
      
      private function §1n§() : Array
      {
         var _loc1_:Array = new Array();
         this.§[k§();
         if(this.§;!>§.type == §5c§.§@w§)
         {
            return _loc1_;
         }
         if(!this.§7j§ && this.§;!>§.type == §5c§.§]u§)
         {
            this.§[k§();
            if(this.§;!>§.type == §5c§.§@w§)
            {
               return _loc1_;
            }
            this.§,!R§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§;!>§.value);
         }
         while(true)
         {
            _loc1_.push(this.§#!+§());
            this.§[k§();
            if(this.§;!>§.type == §5c§.§@w§)
            {
               break;
            }
            if(this.§;!>§.type == §5c§.§]u§)
            {
               this.§[k§();
               if(!this.§7j§)
               {
                  if(this.§;!>§.type == §5c§.§@w§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,!R§.parseError("Expecting ] or , but found " + this.§;!>§.value);
            }
         }
         return _loc1_;
      }
      
      private function §&+§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§[k§();
         if(this.§;!>§.type == §5c§.§2@§)
         {
            return _loc1_;
         }
         if(!this.§7j§ && this.§;!>§.type == §5c§.§]u§)
         {
            this.§[k§();
            if(this.§;!>§.type == §5c§.§2@§)
            {
               return _loc1_;
            }
            this.§,!R§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§;!>§.value);
         }
         while(true)
         {
            if(this.§;!>§.type == §5c§.§'h§)
            {
               _loc2_ = String(this.§;!>§.value);
               this.§[k§();
               if(this.§;!>§.type == §5c§.§0!X§)
               {
                  this.§[k§();
                  _loc1_[_loc2_] = this.§#!+§();
                  this.§[k§();
                  if(this.§;!>§.type == §5c§.§2@§)
                  {
                     break;
                  }
                  if(this.§;!>§.type == §5c§.§]u§)
                  {
                     this.§[k§();
                     if(!this.§7j§)
                     {
                        if(this.§;!>§.type == §5c§.§2@§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,!R§.parseError("Expecting } or , but found " + this.§;!>§.value);
                  }
               }
               else
               {
                  this.§,!R§.parseError("Expecting : but found " + this.§;!>§.value);
               }
            }
            else
            {
               this.§,!R§.parseError("Expecting string but found " + this.§;!>§.value);
            }
         }
         return _loc1_;
      }
      
      private function §#!+§() : Object
      {
         if(this.§;!>§ == null)
         {
            this.§,!R§.parseError("Unexpected end of input");
         }
         switch(this.§;!>§.type)
         {
            case §5c§.§5!`§:
               return this.§&+§();
            case §5c§.§ !O§:
               return this.§1n§();
            case §5c§.§'h§:
            case §5c§.§;w§:
            case §5c§.TRUE:
            case §5c§.FALSE:
            case §5c§.§;!0§:
               return this.§;!>§.value;
            case §5c§.§,!7§:
               if(!this.§7j§)
               {
                  return this.§;!>§.value;
               }
               this.§,!R§.parseError("Unexpected " + this.§;!>§.value);
               break;
         }
         this.§,!R§.parseError("Unexpected " + this.§;!>§.value);
         return null;
      }
   }
}
