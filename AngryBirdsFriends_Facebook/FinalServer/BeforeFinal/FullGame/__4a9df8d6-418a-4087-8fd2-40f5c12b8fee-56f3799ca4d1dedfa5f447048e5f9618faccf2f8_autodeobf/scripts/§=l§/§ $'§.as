package §=l§
{
   public class § $'§
   {
       
      
      private var §?b§:Boolean;
      
      private var value;
      
      private var §4"$§:§9"A§;
      
      private var §"!1§:§8C§;
      
      public function § $'§(param1:String, param2:Boolean)
      {
         super();
         this.§?b§ = param2;
         this.§4"$§ = new §9"A§(param1,param2);
         this.§"$B§();
         this.value = this.§'!D§();
         if(param2 && this.§"$B§() != null)
         {
            this.§4"$§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §"$B§() : §8C§
      {
         return this.§"!1§ = this.§4"$§.§0$D§();
      }
      
      private function §#"T§() : Array
      {
         var _loc1_:Array = new Array();
         this.§"$B§();
         if(this.§"!1§.type == §@#o§.§2'§)
         {
            return _loc1_;
         }
         if(!this.§?b§ && this.§"!1§.type == §@#o§.§2$<§)
         {
            this.§"$B§();
            if(this.§"!1§.type == §@#o§.§2'§)
            {
               return _loc1_;
            }
            this.§4"$§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§"!1§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'!D§());
            this.§"$B§();
            if(this.§"!1§.type == §@#o§.§2'§)
            {
               break;
            }
            if(this.§"!1§.type == §@#o§.§2$<§)
            {
               this.§"$B§();
               if(!this.§?b§)
               {
                  if(this.§"!1§.type == §@#o§.§2'§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§4"$§.parseError("Expecting ] or , but found " + this.§"!1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<!@§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§"$B§();
         if(this.§"!1§.type == §@#o§.§'"Q§)
         {
            return _loc1_;
         }
         if(!this.§?b§ && this.§"!1§.type == §@#o§.§2$<§)
         {
            this.§"$B§();
            if(this.§"!1§.type == §@#o§.§'"Q§)
            {
               return _loc1_;
            }
            this.§4"$§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§"!1§.value);
         }
         while(true)
         {
            if(this.§"!1§.type == §@#o§.§`+§)
            {
               _loc2_ = String(this.§"!1§.value);
               this.§"$B§();
               if(this.§"!1§.type == §@#o§.§#"q§)
               {
                  this.§"$B§();
                  _loc1_[_loc2_] = this.§'!D§();
                  this.§"$B§();
                  if(this.§"!1§.type == §@#o§.§'"Q§)
                  {
                     break;
                  }
                  if(this.§"!1§.type == §@#o§.§2$<§)
                  {
                     this.§"$B§();
                     if(!this.§?b§)
                     {
                        if(this.§"!1§.type == §@#o§.§'"Q§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§4"$§.parseError("Expecting } or , but found " + this.§"!1§.value);
                  }
               }
               else
               {
                  this.§4"$§.parseError("Expecting : but found " + this.§"!1§.value);
               }
            }
            else
            {
               this.§4"$§.parseError("Expecting string but found " + this.§"!1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'!D§() : Object
      {
         if(this.§"!1§ == null)
         {
            this.§4"$§.parseError("Unexpected end of input");
         }
         switch(this.§"!1§.type)
         {
            case §@#o§.§,#]§:
               return this.§<!@§();
            case §@#o§.§?!U§:
               return this.§#"T§();
            case §@#o§.§`+§:
            case §@#o§.§`!#§:
            case §@#o§.TRUE:
            case §@#o§.FALSE:
            case §@#o§.NULL:
               return this.§"!1§.value;
            case §@#o§.§4H§:
               if(!this.§?b§)
               {
                  return this.§"!1§.value;
               }
               this.§4"$§.parseError("Unexpected " + this.§"!1§.value);
               break;
         }
         this.§4"$§.parseError("Unexpected " + this.§"!1§.value);
         return null;
      }
   }
}
