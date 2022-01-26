package §^!5§
{
   public class §8!;§
   {
       
      
      private var §8_§:Boolean;
      
      private var value;
      
      private var §!!@§:§=!>§;
      
      private var §^!;§:§%!2§;
      
      public function §8!;§(param1:String, param2:Boolean)
      {
         super();
         this.§8_§ = param2;
         this.§!!@§ = new §=!>§(param1,param2);
         this.§'!I§();
         this.value = this.§1!0§();
         if(param2 && this.§'!I§() != null)
         {
            this.§!!@§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §'!I§() : §%!2§
      {
         return this.§^!;§ = this.§!!@§.§2v§();
      }
      
      private function §8P§() : Array
      {
         var _loc1_:Array = new Array();
         this.§'!I§();
         if(this.§^!;§.type == §3! §.§ !Y§)
         {
            return _loc1_;
         }
         if(!this.§8_§ && this.§^!;§.type == §3! §.§0y§)
         {
            this.§'!I§();
            if(this.§^!;§.type == §3! §.§ !Y§)
            {
               return _loc1_;
            }
            this.§!!@§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§^!;§.value);
         }
         while(true)
         {
            _loc1_.push(this.§1!0§());
            this.§'!I§();
            if(this.§^!;§.type == §3! §.§ !Y§)
            {
               break;
            }
            if(this.§^!;§.type == §3! §.§0y§)
            {
               this.§'!I§();
               if(!this.§8_§)
               {
                  if(this.§^!;§.type == §3! §.§ !Y§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§!!@§.parseError("Expecting ] or , but found " + this.§^!;§.value);
            }
         }
         return _loc1_;
      }
      
      private function §`e§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§'!I§();
         if(this.§^!;§.type == §3! §.§<_§)
         {
            return _loc1_;
         }
         if(!this.§8_§ && this.§^!;§.type == §3! §.§0y§)
         {
            this.§'!I§();
            if(this.§^!;§.type == §3! §.§<_§)
            {
               return _loc1_;
            }
            this.§!!@§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§^!;§.value);
         }
         while(true)
         {
            if(this.§^!;§.type == §3! §.§3!X§)
            {
               _loc2_ = String(this.§^!;§.value);
               this.§'!I§();
               if(this.§^!;§.type == §3! §.§&?§)
               {
                  this.§'!I§();
                  _loc1_[_loc2_] = this.§1!0§();
                  this.§'!I§();
                  if(this.§^!;§.type == §3! §.§<_§)
                  {
                     break;
                  }
                  if(this.§^!;§.type == §3! §.§0y§)
                  {
                     this.§'!I§();
                     if(!this.§8_§)
                     {
                        if(this.§^!;§.type == §3! §.§<_§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§!!@§.parseError("Expecting } or , but found " + this.§^!;§.value);
                  }
               }
               else
               {
                  this.§!!@§.parseError("Expecting : but found " + this.§^!;§.value);
               }
            }
            else
            {
               this.§!!@§.parseError("Expecting string but found " + this.§^!;§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1!0§() : Object
      {
         if(this.§^!;§ == null)
         {
            this.§!!@§.parseError("Unexpected end of input");
         }
         switch(this.§^!;§.type)
         {
            case §3! §.§%E§:
               return this.§`e§();
            case §3! §.§`j§:
               return this.§8P§();
            case §3! §.§3!X§:
            case §3! §.§'-§:
            case §3! §.TRUE:
            case §3! §.FALSE:
            case §3! §.§,o§:
               return this.§^!;§.value;
            case §3! §.§@!W§:
               if(!this.§8_§)
               {
                  return this.§^!;§.value;
               }
               this.§!!@§.parseError("Unexpected " + this.§^!;§.value);
               break;
         }
         this.§!!@§.parseError("Unexpected " + this.§^!;§.value);
         return null;
      }
   }
}
