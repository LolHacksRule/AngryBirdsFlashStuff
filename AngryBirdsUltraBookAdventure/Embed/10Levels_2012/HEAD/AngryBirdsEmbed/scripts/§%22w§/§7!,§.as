package §"w§
{
   public class §7!,§
   {
       
      
      private var §!!%§:Boolean;
      
      private var value;
      
      private var §4c§:§9T§;
      
      private var token:§^!A§;
      
      public function §7!,§(param1:String, param2:Boolean)
      {
         super();
         this.§!!%§ = param2;
         this.§4c§ = new §9T§(param1,param2);
         this.§,!§();
         this.value = this.§+R§();
         if(param2 && this.§,!§() != null)
         {
            this.§4c§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §,!§() : §^!A§
      {
         return this.token = this.§4c§.§8!+§();
      }
      
      private function §-!8§() : Array
      {
         var _loc1_:Array = new Array();
         this.§,!§();
         if(this.token.type == §return§.§2<§)
         {
            return _loc1_;
         }
         if(!this.§!!%§ && this.token.type == §return§.§]!'§)
         {
            this.§,!§();
            if(this.token.type == §return§.§2<§)
            {
               return _loc1_;
            }
            this.§4c§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§+R§());
            this.§,!§();
            if(this.token.type == §return§.§2<§)
            {
               break;
            }
            if(this.token.type == §return§.§]!'§)
            {
               this.§,!§();
               if(!this.§!!%§)
               {
                  if(this.token.type == §return§.§2<§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§4c§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §^!7§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§,!§();
         if(this.token.type == §return§.§`$§)
         {
            return _loc1_;
         }
         if(!this.§!!%§ && this.token.type == §return§.§]!'§)
         {
            this.§,!§();
            if(this.token.type == §return§.§`$§)
            {
               return _loc1_;
            }
            this.§4c§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §return§.§^!!§)
            {
               _loc2_ = String(this.token.value);
               this.§,!§();
               if(this.token.type == §return§.§?v§)
               {
                  this.§,!§();
                  _loc1_[_loc2_] = this.§+R§();
                  this.§,!§();
                  if(this.token.type == §return§.§`$§)
                  {
                     break;
                  }
                  if(this.token.type == §return§.§]!'§)
                  {
                     this.§,!§();
                     if(!this.§!!%§)
                     {
                        if(this.token.type == §return§.§`$§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§4c§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§4c§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§4c§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §+R§() : Object
      {
         if(this.token == null)
         {
            this.§4c§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §return§.§<s§:
               return this.§^!7§();
            case §return§.§4z§:
               return this.§-!8§();
            case §return§.§^!!§:
            case §return§.§[t§:
            case §return§.TRUE:
            case §return§.FALSE:
            case §return§.NULL:
               return this.token.value;
            case §return§.§,! §:
               if(!this.§!!%§)
               {
                  return this.token.value;
               }
               this.§4c§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§4c§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
