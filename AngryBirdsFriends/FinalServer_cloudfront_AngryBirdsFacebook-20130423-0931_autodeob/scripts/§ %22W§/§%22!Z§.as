package § "W§
{
   public class §"!Z§
   {
       
      
      private var §4"$§:Boolean;
      
      private var value;
      
      private var §?!9§:§case§;
      
      private var token:§,!V§;
      
      public function §"!Z§(param1:String, param2:Boolean)
      {
         super();
         this.§4"$§ = param2;
         this.§?!9§ = new §case§(param1,param2);
         this.§&![§();
         this.value = this.§;W§();
         if(param2 && this.§&![§() != null)
         {
            this.§?!9§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §&![§() : §,!V§
      {
         return this.token = this.§?!9§.§^!l§();
      }
      
      private function §=!i§() : Array
      {
         var _loc1_:Array = new Array();
         this.§&![§();
         if(this.token.type == §]!H§.§[<§)
         {
            return _loc1_;
         }
         if(!this.§4"$§ && this.token.type == §]!H§.§-n§)
         {
            this.§&![§();
            if(this.token.type == §]!H§.§[<§)
            {
               return _loc1_;
            }
            this.§?!9§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§;W§());
            this.§&![§();
            if(this.token.type == §]!H§.§[<§)
            {
               break;
            }
            if(this.token.type == §]!H§.§-n§)
            {
               this.§&![§();
               if(!this.§4"$§)
               {
                  if(this.token.type == §]!H§.§[<§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§?!9§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §`!y§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§&![§();
         if(this.token.type == §]!H§.§@!z§)
         {
            return _loc1_;
         }
         if(!this.§4"$§ && this.token.type == §]!H§.§-n§)
         {
            this.§&![§();
            if(this.token.type == §]!H§.§@!z§)
            {
               return _loc1_;
            }
            this.§?!9§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §]!H§.§?"S§)
            {
               _loc2_ = String(this.token.value);
               this.§&![§();
               if(this.token.type == §]!H§.§[!0§)
               {
                  this.§&![§();
                  _loc1_[_loc2_] = this.§;W§();
                  this.§&![§();
                  if(this.token.type == §]!H§.§@!z§)
                  {
                     break;
                  }
                  if(this.token.type == §]!H§.§-n§)
                  {
                     this.§&![§();
                     if(!this.§4"$§)
                     {
                        if(this.token.type == §]!H§.§@!z§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§?!9§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§?!9§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§?!9§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §;W§() : Object
      {
         if(this.token == null)
         {
            this.§?!9§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §]!H§.§3!U§:
               return this.§`!y§();
            case §]!H§.§`"@§:
               return this.§=!i§();
            case §]!H§.§?"S§:
            case §]!H§.§3!w§:
            case §]!H§.TRUE:
            case §]!H§.FALSE:
            case §]!H§.NULL:
               return this.token.value;
            case §]!H§.§[!g§:
               if(!this.§4"$§)
               {
                  return this.token.value;
               }
               this.§?!9§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§?!9§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
