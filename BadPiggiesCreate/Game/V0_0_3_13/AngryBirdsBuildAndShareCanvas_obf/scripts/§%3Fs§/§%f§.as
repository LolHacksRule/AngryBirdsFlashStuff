package §?s§
{
   public class §%f§
   {
       
      
      private var §&+§:Boolean;
      
      private var value;
      
      private var §="+§:§#`§;
      
      private var token:§@"6§;
      
      public function §%f§(param1:String, param2:Boolean)
      {
         super();
         this.§&+§ = param2;
         this.§="+§ = new §#`§(param1,param2);
         this.§=! §();
         this.value = this.§]!T§();
         if(param2 && this.§=! §() != null)
         {
            this.§="+§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §=! §() : §@"6§
      {
         return this.token = this.§="+§.§!p§();
      }
      
      private function §<!1§() : Array
      {
         var _loc1_:Array = new Array();
         this.§=! §();
         if(this.token.type == §2@§.§@f§)
         {
            return _loc1_;
         }
         if(!this.§&+§ && this.token.type == §2@§.§<v§)
         {
            this.§=! §();
            if(this.token.type == §2@§.§@f§)
            {
               return _loc1_;
            }
            this.§="+§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§]!T§());
            this.§=! §();
            if(this.token.type == §2@§.§@f§)
            {
               break;
            }
            if(this.token.type == §2@§.§<v§)
            {
               this.§=! §();
               if(!this.§&+§)
               {
                  if(this.token.type == §2@§.§@f§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§="+§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §8! §() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§=! §();
         if(this.token.type == §2@§.§<!n§)
         {
            return _loc1_;
         }
         if(!this.§&+§ && this.token.type == §2@§.§<v§)
         {
            this.§=! §();
            if(this.token.type == §2@§.§<!n§)
            {
               return _loc1_;
            }
            this.§="+§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §2@§.§-!V§)
            {
               _loc2_ = String(this.token.value);
               this.§=! §();
               if(this.token.type == §2@§.§""-§)
               {
                  this.§=! §();
                  _loc1_[_loc2_] = this.§]!T§();
                  this.§=! §();
                  if(this.token.type == §2@§.§<!n§)
                  {
                     break;
                  }
                  if(this.token.type == §2@§.§<v§)
                  {
                     this.§=! §();
                     if(!this.§&+§)
                     {
                        if(this.token.type == §2@§.§<!n§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§="+§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§="+§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§="+§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §]!T§() : Object
      {
         if(this.token == null)
         {
            this.§="+§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §2@§.§>!D§:
               return this.§8! §();
            case §2@§.§5!j§:
               return this.§<!1§();
            case §2@§.§-!V§:
            case §2@§.§7"6§:
            case §2@§.TRUE:
            case §2@§.FALSE:
            case §2@§.§=U§:
               return this.token.value;
            case §2@§.§ §:
               if(!this.§&+§)
               {
                  return this.token.value;
               }
               this.§="+§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§="+§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
