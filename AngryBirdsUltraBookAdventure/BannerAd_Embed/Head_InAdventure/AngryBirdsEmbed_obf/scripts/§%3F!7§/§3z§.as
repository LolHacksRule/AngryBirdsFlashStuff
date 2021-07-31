package §?!7§
{
   public class §3z§
   {
       
      
      private var §#!C§:Boolean;
      
      private var value;
      
      private var §"s§:§9c§;
      
      private var token:§=u§;
      
      public function §3z§(param1:String, param2:Boolean)
      {
         super();
         this.§#!C§ = param2;
         this.§"s§ = new §9c§(param1,param2);
         this.§;!5§();
         this.value = this.§"V§();
         if(param2 && this.§;!5§() != null)
         {
            this.§"s§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;!5§() : §=u§
      {
         return this.token = this.§"s§.§0t§();
      }
      
      private function §1j§() : Array
      {
         var _loc1_:Array = new Array();
         this.§;!5§();
         if(this.token.type == §<a§.§#Z§)
         {
            return _loc1_;
         }
         if(!this.§#!C§ && this.token.type == §<a§.§4v§)
         {
            this.§;!5§();
            if(this.token.type == §<a§.§#Z§)
            {
               return _loc1_;
            }
            this.§"s§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§"V§());
            this.§;!5§();
            if(this.token.type == §<a§.§#Z§)
            {
               break;
            }
            if(this.token.type == §<a§.§4v§)
            {
               this.§;!5§();
               if(!this.§#!C§)
               {
                  if(this.token.type == §<a§.§#Z§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§"s§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §5%§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;!5§();
         if(this.token.type == §<a§.§=-§)
         {
            return _loc1_;
         }
         if(!this.§#!C§ && this.token.type == §<a§.§4v§)
         {
            this.§;!5§();
            if(this.token.type == §<a§.§=-§)
            {
               return _loc1_;
            }
            this.§"s§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §<a§.§;e§)
            {
               _loc2_ = String(this.token.value);
               this.§;!5§();
               if(this.token.type == §<a§.§8!B§)
               {
                  this.§;!5§();
                  _loc1_[_loc2_] = this.§"V§();
                  this.§;!5§();
                  if(this.token.type == §<a§.§=-§)
                  {
                     break;
                  }
                  if(this.token.type == §<a§.§4v§)
                  {
                     this.§;!5§();
                     if(!this.§#!C§)
                     {
                        if(this.token.type == §<a§.§=-§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§"s§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§"s§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§"s§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §"V§() : Object
      {
         if(this.token == null)
         {
            this.§"s§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §<a§.§-j§:
               return this.§5%§();
            case §<a§.§ e§:
               return this.§1j§();
            case §<a§.§;e§:
            case §<a§.§&_§:
            case §<a§.TRUE:
            case §<a§.FALSE:
            case §<a§.NULL:
               return this.token.value;
            case §<a§.§`e§:
               if(!this.§#!C§)
               {
                  return this.token.value;
               }
               this.§"s§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§"s§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
