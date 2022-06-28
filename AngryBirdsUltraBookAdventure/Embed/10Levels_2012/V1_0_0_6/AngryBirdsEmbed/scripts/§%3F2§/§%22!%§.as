package §?2§
{
   public class §"!%§
   {
       
      
      private var §3>§:Boolean;
      
      private var value;
      
      private var §^L§:§[`§;
      
      private var token:§?Z§;
      
      public function §"!%§(param1:String, param2:Boolean)
      {
         super();
         this.§3>§ = param2;
         this.§^L§ = new §[`§(param1,param2);
         this.§1!G§();
         this.value = this.§,4§();
         if(param2 && this.§1!G§() != null)
         {
            this.§^L§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §1!G§() : §?Z§
      {
         return this.token = this.§^L§.§^m§();
      }
      
      private function §^!0§() : Array
      {
         var _loc1_:Array = new Array();
         this.§1!G§();
         if(this.token.type == §,B§.§]i§)
         {
            return _loc1_;
         }
         if(!this.§3>§ && this.token.type == §,B§.§#!'§)
         {
            this.§1!G§();
            if(this.token.type == §,B§.§]i§)
            {
               return _loc1_;
            }
            this.§^L§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§,4§());
            this.§1!G§();
            if(this.token.type == §,B§.§]i§)
            {
               break;
            }
            if(this.token.type == §,B§.§#!'§)
            {
               this.§1!G§();
               if(!this.§3>§)
               {
                  if(this.token.type == §,B§.§]i§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§^L§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §<F§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§1!G§();
         if(this.token.type == §,B§.§<!;§)
         {
            return _loc1_;
         }
         if(!this.§3>§ && this.token.type == §,B§.§#!'§)
         {
            this.§1!G§();
            if(this.token.type == §,B§.§<!;§)
            {
               return _loc1_;
            }
            this.§^L§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §,B§.§9W§)
            {
               _loc2_ = String(this.token.value);
               this.§1!G§();
               if(this.token.type == §,B§.§5!>§)
               {
                  this.§1!G§();
                  _loc1_[_loc2_] = this.§,4§();
                  this.§1!G§();
                  if(this.token.type == §,B§.§<!;§)
                  {
                     break;
                  }
                  if(this.token.type == §,B§.§#!'§)
                  {
                     this.§1!G§();
                     if(!this.§3>§)
                     {
                        if(this.token.type == §,B§.§<!;§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§^L§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§^L§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§^L§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §,4§() : Object
      {
         if(this.token == null)
         {
            this.§^L§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §,B§.§'!E§:
               return this.§<F§();
            case §,B§.§"V§:
               return this.§^!0§();
            case §,B§.§9W§:
            case §,B§.§@Z§:
            case §,B§.TRUE:
            case §,B§.FALSE:
            case §,B§.NULL:
               return this.token.value;
            case §,B§.§[!A§:
               if(!this.§3>§)
               {
                  return this.token.value;
               }
               this.§^L§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§^L§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
