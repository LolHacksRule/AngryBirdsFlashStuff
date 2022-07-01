package §]!Z§
{
   public class §#c§
   {
       
      
      private var §@N§:Boolean;
      
      private var value;
      
      private var §5!O§:§;!G§;
      
      private var token:§in§;
      
      public function §#c§(param1:String, param2:Boolean)
      {
         super();
         this.§@N§ = param2;
         this.§5!O§ = new §;!G§(param1,param2);
         this.§^a§();
         this.value = this.§6!b§();
         if(param2 && this.§^a§() != null)
         {
            this.§5!O§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §^a§() : §in§
      {
         return this.token = this.§5!O§.§4!h§();
      }
      
      private function §'!l§() : Array
      {
         var _loc1_:Array = new Array();
         this.§^a§();
         if(this.token.type == §8M§.§@!p§)
         {
            return _loc1_;
         }
         if(!this.§@N§ && this.token.type == §8M§.§`!<§)
         {
            this.§^a§();
            if(this.token.type == §8M§.§@!p§)
            {
               return _loc1_;
            }
            this.§5!O§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§6!b§());
            this.§^a§();
            if(this.token.type == §8M§.§@!p§)
            {
               break;
            }
            if(this.token.type == §8M§.§`!<§)
            {
               this.§^a§();
               if(!this.§@N§)
               {
                  if(this.token.type == §8M§.§@!p§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§5!O§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §`!k§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§^a§();
         if(this.token.type == §8M§.§&!t§)
         {
            return _loc1_;
         }
         if(!this.§@N§ && this.token.type == §8M§.§`!<§)
         {
            this.§^a§();
            if(this.token.type == §8M§.§&!t§)
            {
               return _loc1_;
            }
            this.§5!O§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §8M§.§0!h§)
            {
               _loc2_ = String(this.token.value);
               this.§^a§();
               if(this.token.type == §8M§.§0^§)
               {
                  this.§^a§();
                  _loc1_[_loc2_] = this.§6!b§();
                  this.§^a§();
                  if(this.token.type == §8M§.§&!t§)
                  {
                     break;
                  }
                  if(this.token.type == §8M§.§`!<§)
                  {
                     this.§^a§();
                     if(!this.§@N§)
                     {
                        if(this.token.type == §8M§.§&!t§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§5!O§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§5!O§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§5!O§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §6!b§() : Object
      {
         if(this.token == null)
         {
            this.§5!O§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §8M§.§"!J§:
               return this.§`!k§();
            case §8M§.§1r§:
               return this.§'!l§();
            case §8M§.§0!h§:
            case §8M§.§1!b§:
            case §8M§.TRUE:
            case §8M§.FALSE:
            case §8M§.NULL:
               return this.token.value;
            case §8M§.§+!p§:
               if(!this.§@N§)
               {
                  return this.token.value;
               }
               this.§5!O§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§5!O§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
