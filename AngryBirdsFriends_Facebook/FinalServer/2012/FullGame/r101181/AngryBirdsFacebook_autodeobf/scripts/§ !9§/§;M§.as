package § !9§
{
   public class §;M§
   {
       
      
      private var §2[§:Boolean;
      
      private var value;
      
      private var §@x§:§0"§;
      
      private var §?!I§:§2!P§;
      
      public function §;M§(param1:String, param2:Boolean)
      {
         super();
         this.§2[§ = param2;
         this.§@x§ = new §0"§(param1,param2);
         this.§5!f§();
         this.value = this.§3?§();
         if(param2 && this.§5!f§() != null)
         {
            this.§@x§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §5!f§() : §2!P§
      {
         return this.§?!I§ = this.§@x§.§!!%§();
      }
      
      private function §;=§() : Array
      {
         var _loc1_:Array = new Array();
         this.§5!f§();
         if(this.§?!I§.type == §0";§.§^-§)
         {
            return _loc1_;
         }
         if(!this.§2[§ && this.§?!I§.type == §0";§.§+b§)
         {
            this.§5!f§();
            if(this.§?!I§.type == §0";§.§^-§)
            {
               return _loc1_;
            }
            this.§@x§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§?!I§.value);
         }
         while(true)
         {
            _loc1_.push(this.§3?§());
            this.§5!f§();
            if(this.§?!I§.type == §0";§.§^-§)
            {
               break;
            }
            if(this.§?!I§.type == §0";§.§+b§)
            {
               this.§5!f§();
               if(!this.§2[§)
               {
                  if(this.§?!I§.type == §0";§.§^-§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§@x§.parseError("Expecting ] or , but found " + this.§?!I§.value);
            }
         }
         return _loc1_;
      }
      
      private function §4Q§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§5!f§();
         if(this.§?!I§.type == §0";§.§'!,§)
         {
            return _loc1_;
         }
         if(!this.§2[§ && this.§?!I§.type == §0";§.§+b§)
         {
            this.§5!f§();
            if(this.§?!I§.type == §0";§.§'!,§)
            {
               return _loc1_;
            }
            this.§@x§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§?!I§.value);
         }
         while(true)
         {
            if(this.§?!I§.type == §0";§.§<"$§)
            {
               _loc2_ = String(this.§?!I§.value);
               this.§5!f§();
               if(this.§?!I§.type == §0";§.§7!%§)
               {
                  this.§5!f§();
                  _loc1_[_loc2_] = this.§3?§();
                  this.§5!f§();
                  if(this.§?!I§.type == §0";§.§'!,§)
                  {
                     break;
                  }
                  if(this.§?!I§.type == §0";§.§+b§)
                  {
                     this.§5!f§();
                     if(!this.§2[§)
                     {
                        if(this.§?!I§.type == §0";§.§'!,§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§@x§.parseError("Expecting } or , but found " + this.§?!I§.value);
                  }
               }
               else
               {
                  this.§@x§.parseError("Expecting : but found " + this.§?!I§.value);
               }
            }
            else
            {
               this.§@x§.parseError("Expecting string but found " + this.§?!I§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3?§() : Object
      {
         if(this.§?!I§ == null)
         {
            this.§@x§.parseError("Unexpected end of input");
         }
         switch(this.§?!I§.type)
         {
            case §0";§.§;"'§:
               return this.§4Q§();
            case §0";§.§^[§:
               return this.§;=§();
            case §0";§.§<"$§:
            case §0";§.§6!R§:
            case §0";§.TRUE:
            case §0";§.FALSE:
            case §0";§.NULL:
               return this.§?!I§.value;
            case §0";§.§2",§:
               if(!this.§2[§)
               {
                  return this.§?!I§.value;
               }
               this.§@x§.parseError("Unexpected " + this.§?!I§.value);
               break;
         }
         this.§@x§.parseError("Unexpected " + this.§?!I§.value);
         return null;
      }
   }
}
