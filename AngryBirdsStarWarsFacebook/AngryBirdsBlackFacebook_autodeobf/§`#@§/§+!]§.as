package §`#@§
{
   public class §+!]§
   {
       
      
      private var §<"@§:Boolean;
      
      private var value;
      
      private var §?"H§:§2"j§;
      
      private var §^"l§:§+"9§;
      
      public function §+!]§(param1:String, param2:Boolean)
      {
         super();
         this.§<"@§ = param2;
         this.§?"H§ = new §2"j§(param1,param2);
         this.§]!>§();
         this.value = this.§'!6§();
         if(param2 && this.§]!>§() != null)
         {
            this.§?"H§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §]!>§() : §+"9§
      {
         return this.§^"l§ = this.§?"H§.§9f§();
      }
      
      private function §9!B§() : Array
      {
         var _loc1_:Array = new Array();
         this.§]!>§();
         if(this.§^"l§.type == §6#^§.§?$§)
         {
            return _loc1_;
         }
         if(!this.§<"@§ && this.§^"l§.type == §6#^§.§>"J§)
         {
            this.§]!>§();
            if(this.§^"l§.type == §6#^§.§?$§)
            {
               return _loc1_;
            }
            this.§?"H§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§^"l§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'!6§());
            this.§]!>§();
            if(this.§^"l§.type == §6#^§.§?$§)
            {
               break;
            }
            if(this.§^"l§.type == §6#^§.§>"J§)
            {
               this.§]!>§();
               if(!this.§<"@§)
               {
                  if(this.§^"l§.type == §6#^§.§?$§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§?"H§.parseError("Expecting ] or , but found " + this.§^"l§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5#V§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§]!>§();
         if(this.§^"l§.type == §6#^§.§85§)
         {
            return _loc1_;
         }
         if(!this.§<"@§ && this.§^"l§.type == §6#^§.§>"J§)
         {
            this.§]!>§();
            if(this.§^"l§.type == §6#^§.§85§)
            {
               return _loc1_;
            }
            this.§?"H§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§^"l§.value);
         }
         while(true)
         {
            if(this.§^"l§.type == §6#^§.§`"y§)
            {
               _loc2_ = String(this.§^"l§.value);
               this.§]!>§();
               if(this.§^"l§.type == §6#^§.§@#2§)
               {
                  this.§]!>§();
                  _loc1_[_loc2_] = this.§'!6§();
                  this.§]!>§();
                  if(this.§^"l§.type == §6#^§.§85§)
                  {
                     break;
                  }
                  if(this.§^"l§.type == §6#^§.§>"J§)
                  {
                     this.§]!>§();
                     if(!this.§<"@§)
                     {
                        if(this.§^"l§.type == §6#^§.§85§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§?"H§.parseError("Expecting } or , but found " + this.§^"l§.value);
                  }
               }
               else
               {
                  this.§?"H§.parseError("Expecting : but found " + this.§^"l§.value);
               }
            }
            else
            {
               this.§?"H§.parseError("Expecting string but found " + this.§^"l§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'!6§() : Object
      {
         if(this.§^"l§ == null)
         {
            this.§?"H§.parseError("Unexpected end of input");
         }
         switch(this.§^"l§.type)
         {
            case §6#^§.§>9§:
               return this.§5#V§();
            case §6#^§.§1!j§:
               return this.§9!B§();
            case §6#^§.§`"y§:
            case §6#^§.§>+§:
            case §6#^§.TRUE:
            case §6#^§.FALSE:
            case §6#^§.NULL:
               return this.§^"l§.value;
            case §6#^§.§8"I§:
               if(!this.§<"@§)
               {
                  return this.§^"l§.value;
               }
               this.§?"H§.parseError("Unexpected " + this.§^"l§.value);
               break;
         }
         this.§?"H§.parseError("Unexpected " + this.§^"l§.value);
         return null;
      }
   }
}
