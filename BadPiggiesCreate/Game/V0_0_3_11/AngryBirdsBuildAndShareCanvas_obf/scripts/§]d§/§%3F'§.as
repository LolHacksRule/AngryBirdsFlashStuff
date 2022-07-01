package §]d§
{
   public class §?'§
   {
       
      
      private var §?_§:Boolean;
      
      private var value;
      
      private var §<"2§:§>!e§;
      
      private var token:§<1§;
      
      public function §?'§(param1:String, param2:Boolean)
      {
         super();
         this.§?_§ = param2;
         this.§<"2§ = new §>!e§(param1,param2);
         this.§^S§();
         this.value = this.§0!z§();
         if(param2 && this.§^S§() != null)
         {
            this.§<"2§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §^S§() : §<1§
      {
         return this.token = this.§<"2§.§23§();
      }
      
      private function §=<§() : Array
      {
         var _loc1_:Array = new Array();
         this.§^S§();
         if(this.token.type == §5%§.§5Z§)
         {
            return _loc1_;
         }
         if(!this.§?_§ && this.token.type == §5%§.§9!_§)
         {
            this.§^S§();
            if(this.token.type == §5%§.§5Z§)
            {
               return _loc1_;
            }
            this.§<"2§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§0!z§());
            this.§^S§();
            if(this.token.type == §5%§.§5Z§)
            {
               break;
            }
            if(this.token.type == §5%§.§9!_§)
            {
               this.§^S§();
               if(!this.§?_§)
               {
                  if(this.token.type == §5%§.§5Z§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§<"2§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §7"0§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§^S§();
         if(this.token.type == §5%§.§]2§)
         {
            return _loc1_;
         }
         if(!this.§?_§ && this.token.type == §5%§.§9!_§)
         {
            this.§^S§();
            if(this.token.type == §5%§.§]2§)
            {
               return _loc1_;
            }
            this.§<"2§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §5%§.§"!C§)
            {
               _loc2_ = String(this.token.value);
               this.§^S§();
               if(this.token.type == §5%§.§;!%§)
               {
                  this.§^S§();
                  _loc1_[_loc2_] = this.§0!z§();
                  this.§^S§();
                  if(this.token.type == §5%§.§]2§)
                  {
                     break;
                  }
                  if(this.token.type == §5%§.§9!_§)
                  {
                     this.§^S§();
                     if(!this.§?_§)
                     {
                        if(this.token.type == §5%§.§]2§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§<"2§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§<"2§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§<"2§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §0!z§() : Object
      {
         if(this.token == null)
         {
            this.§<"2§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §5%§.§"!,§:
               return this.§7"0§();
            case §5%§.§;!W§:
               return this.§=<§();
            case §5%§.§"!C§:
            case §5%§.§!"'§:
            case §5%§.TRUE:
            case §5%§.FALSE:
            case §5%§.§;!w§:
               return this.token.value;
            case §5%§.§!!%§:
               if(!this.§?_§)
               {
                  return this.token.value;
               }
               this.§<"2§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§<"2§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
