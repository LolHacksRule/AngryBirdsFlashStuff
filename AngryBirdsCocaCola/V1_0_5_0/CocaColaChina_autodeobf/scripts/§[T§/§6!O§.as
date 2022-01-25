package §[T§
{
   public class §6!O§
   {
       
      
      private var §[!1§:Boolean;
      
      private var value;
      
      private var §,!J§:§2T§;
      
      private var §9!>§:§84§;
      
      public function §6!O§(param1:String, param2:Boolean)
      {
         super();
         this.§[!1§ = param2;
         this.§,!J§ = new §2T§(param1,param2);
         this.§%!I§();
         this.value = this.§?z§();
         if(param2 && this.§%!I§() != null)
         {
            this.§,!J§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%!I§() : §84§
      {
         return this.§9!>§ = this.§,!J§.§#t§();
      }
      
      private function §#!H§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%!I§();
         if(this.§9!>§.type == §5e§.§&S§)
         {
            return _loc1_;
         }
         if(!this.§[!1§ && this.§9!>§.type == §5e§.§'!5§)
         {
            this.§%!I§();
            if(this.§9!>§.type == §5e§.§&S§)
            {
               return _loc1_;
            }
            this.§,!J§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§9!>§.value);
         }
         while(true)
         {
            _loc1_.push(this.§?z§());
            this.§%!I§();
            if(this.§9!>§.type == §5e§.§&S§)
            {
               break;
            }
            if(this.§9!>§.type == §5e§.§'!5§)
            {
               this.§%!I§();
               if(!this.§[!1§)
               {
                  if(this.§9!>§.type == §5e§.§&S§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,!J§.parseError("Expecting ] or , but found " + this.§9!>§.value);
            }
         }
         return _loc1_;
      }
      
      private function §6!a§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%!I§();
         if(this.§9!>§.type == §5e§.§9O§)
         {
            return _loc1_;
         }
         if(!this.§[!1§ && this.§9!>§.type == §5e§.§'!5§)
         {
            this.§%!I§();
            if(this.§9!>§.type == §5e§.§9O§)
            {
               return _loc1_;
            }
            this.§,!J§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§9!>§.value);
         }
         while(true)
         {
            if(this.§9!>§.type == §5e§.§>!6§)
            {
               _loc2_ = String(this.§9!>§.value);
               this.§%!I§();
               if(this.§9!>§.type == §5e§.§]! §)
               {
                  this.§%!I§();
                  _loc1_[_loc2_] = this.§?z§();
                  this.§%!I§();
                  if(this.§9!>§.type == §5e§.§9O§)
                  {
                     break;
                  }
                  if(this.§9!>§.type == §5e§.§'!5§)
                  {
                     this.§%!I§();
                     if(!this.§[!1§)
                     {
                        if(this.§9!>§.type == §5e§.§9O§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,!J§.parseError("Expecting } or , but found " + this.§9!>§.value);
                  }
               }
               else
               {
                  this.§,!J§.parseError("Expecting : but found " + this.§9!>§.value);
               }
            }
            else
            {
               this.§,!J§.parseError("Expecting string but found " + this.§9!>§.value);
            }
         }
         return _loc1_;
      }
      
      private function §?z§() : Object
      {
         if(this.§9!>§ == null)
         {
            this.§,!J§.parseError("Unexpected end of input");
         }
         switch(this.§9!>§.type)
         {
            case §5e§.§7I§:
               return this.§6!a§();
            case §5e§.§6!%§:
               return this.§#!H§();
            case §5e§.§>!6§:
            case §5e§.§0!H§:
            case §5e§.TRUE:
            case §5e§.FALSE:
            case §5e§.§@!@§:
               return this.§9!>§.value;
            case §5e§.§<!?§:
               if(!this.§[!1§)
               {
                  return this.§9!>§.value;
               }
               this.§,!J§.parseError("Unexpected " + this.§9!>§.value);
               break;
         }
         this.§,!J§.parseError("Unexpected " + this.§9!>§.value);
         return null;
      }
   }
}
