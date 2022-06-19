package §;!]§
{
   public class §0k§
   {
       
      
      private var §<!Q§:Boolean;
      
      private var value;
      
      private var §=!5§:§8a§;
      
      private var § !;§:§&![§;
      
      public function §0k§(param1:String, param2:Boolean)
      {
         super();
         this.§<!Q§ = param2;
         this.§=!5§ = new §8a§(param1,param2);
         this.§[!c§();
         this.value = this.§@!B§();
         if(param2 && this.§[!c§() != null)
         {
            this.§=!5§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §[!c§() : §&![§
      {
         return this.§ !;§ = this.§=!5§.§!W§();
      }
      
      private function §6e§() : Array
      {
         var _loc1_:Array = new Array();
         this.§[!c§();
         if(this.§ !;§.type == §]I§.§3V§)
         {
            return _loc1_;
         }
         if(!this.§<!Q§ && this.§ !;§.type == §]I§.§?k§)
         {
            this.§[!c§();
            if(this.§ !;§.type == §]I§.§3V§)
            {
               return _loc1_;
            }
            this.§=!5§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ !;§.value);
         }
         while(true)
         {
            _loc1_.push(this.§@!B§());
            this.§[!c§();
            if(this.§ !;§.type == §]I§.§3V§)
            {
               break;
            }
            if(this.§ !;§.type == §]I§.§?k§)
            {
               this.§[!c§();
               if(!this.§<!Q§)
               {
                  if(this.§ !;§.type == §]I§.§3V§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§=!5§.parseError("Expecting ] or , but found " + this.§ !;§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<>§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§[!c§();
         if(this.§ !;§.type == §]I§.§]s§)
         {
            return _loc1_;
         }
         if(!this.§<!Q§ && this.§ !;§.type == §]I§.§?k§)
         {
            this.§[!c§();
            if(this.§ !;§.type == §]I§.§]s§)
            {
               return _loc1_;
            }
            this.§=!5§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ !;§.value);
         }
         while(true)
         {
            if(this.§ !;§.type == §]I§.§9!U§)
            {
               _loc2_ = String(this.§ !;§.value);
               this.§[!c§();
               if(this.§ !;§.type == §]I§.§4<§)
               {
                  this.§[!c§();
                  _loc1_[_loc2_] = this.§@!B§();
                  this.§[!c§();
                  if(this.§ !;§.type == §]I§.§]s§)
                  {
                     break;
                  }
                  if(this.§ !;§.type == §]I§.§?k§)
                  {
                     this.§[!c§();
                     if(!this.§<!Q§)
                     {
                        if(this.§ !;§.type == §]I§.§]s§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§=!5§.parseError("Expecting } or , but found " + this.§ !;§.value);
                  }
               }
               else
               {
                  this.§=!5§.parseError("Expecting : but found " + this.§ !;§.value);
               }
            }
            else
            {
               this.§=!5§.parseError("Expecting string but found " + this.§ !;§.value);
            }
         }
         return _loc1_;
      }
      
      private function §@!B§() : Object
      {
         if(this.§ !;§ == null)
         {
            this.§=!5§.parseError("Unexpected end of input");
         }
         switch(this.§ !;§.type)
         {
            case §]I§.§^![§:
               return this.§<>§();
            case §]I§.§?p§:
               return this.§6e§();
            case §]I§.§9!U§:
            case §]I§.§,c§:
            case §]I§.TRUE:
            case §]I§.FALSE:
            case §]I§.§2!=§:
               return this.§ !;§.value;
            case §]I§.§`!7§:
               if(!this.§<!Q§)
               {
                  return this.§ !;§.value;
               }
               this.§=!5§.parseError("Unexpected " + this.§ !;§.value);
               break;
         }
         this.§=!5§.parseError("Unexpected " + this.§ !;§.value);
         return null;
      }
   }
}
