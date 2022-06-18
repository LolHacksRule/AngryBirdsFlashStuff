package §;!!§
{
   public class §"r§
   {
       
      
      private var §[!B§:Boolean;
      
      private var value;
      
      private var §<!F§:§]]§;
      
      private var token:§5F§;
      
      public function §"r§(param1:String, param2:Boolean)
      {
         super();
         this.§[!B§ = param2;
         this.§<!F§ = new §]]§(param1,param2);
         this.§3,§();
         this.value = this.§6a§();
         if(param2 && this.§3,§() != null)
         {
            this.§<!F§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §3,§() : §5F§
      {
         return this.token = this.§<!F§.§!!+§();
      }
      
      private function §&>§() : Array
      {
         var _loc1_:Array = new Array();
         this.§3,§();
         if(this.token.type == §7>§.§!r§)
         {
            return _loc1_;
         }
         if(!this.§[!B§ && this.token.type == §7>§.§=!$§)
         {
            this.§3,§();
            if(this.token.type == §7>§.§!r§)
            {
               return _loc1_;
            }
            this.§<!F§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§6a§());
            this.§3,§();
            if(this.token.type == §7>§.§!r§)
            {
               break;
            }
            if(this.token.type == §7>§.§=!$§)
            {
               this.§3,§();
               if(!this.§[!B§)
               {
                  if(this.token.type == §7>§.§!r§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§<!F§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §;y§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§3,§();
         if(this.token.type == §7>§.§]9§)
         {
            return _loc1_;
         }
         if(!this.§[!B§ && this.token.type == §7>§.§=!$§)
         {
            this.§3,§();
            if(this.token.type == §7>§.§]9§)
            {
               return _loc1_;
            }
            this.§<!F§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §7>§.§`!D§)
            {
               _loc2_ = String(this.token.value);
               this.§3,§();
               if(this.token.type == §7>§.§"!<§)
               {
                  this.§3,§();
                  _loc1_[_loc2_] = this.§6a§();
                  this.§3,§();
                  if(this.token.type == §7>§.§]9§)
                  {
                     break;
                  }
                  if(this.token.type == §7>§.§=!$§)
                  {
                     this.§3,§();
                     if(!this.§[!B§)
                     {
                        if(this.token.type == §7>§.§]9§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§<!F§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§<!F§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§<!F§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §6a§() : Object
      {
         if(this.token == null)
         {
            this.§<!F§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §7>§.§4I§:
               return this.§;y§();
            case §7>§.§1!6§:
               return this.§&>§();
            case §7>§.§`!D§:
            case §7>§.§2!3§:
            case §7>§.TRUE:
            case §7>§.FALSE:
            case §7>§.NULL:
               return this.token.value;
            case §7>§.§]V§:
               if(!this.§[!B§)
               {
                  return this.token.value;
               }
               this.§<!F§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§<!F§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
