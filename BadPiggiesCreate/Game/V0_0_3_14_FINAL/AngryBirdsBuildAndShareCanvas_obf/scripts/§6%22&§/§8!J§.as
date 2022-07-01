package §6"&§
{
   public class §8!J§
   {
       
      
      private var §68§:Boolean;
      
      private var value;
      
      private var §9e§:§>!z§;
      
      private var token:§9t§;
      
      public function §8!J§(param1:String, param2:Boolean)
      {
         super();
         this.§68§ = param2;
         this.§9e§ = new §>!z§(param1,param2);
         this.§"j§();
         this.value = this.§null§();
         if(param2 && this.§"j§() != null)
         {
            this.§9e§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §"j§() : §9t§
      {
         return this.token = this.§9e§.§13§();
      }
      
      private function §9I§() : Array
      {
         var _loc1_:Array = new Array();
         this.§"j§();
         if(this.token.type == §&!F§.§`"-§)
         {
            return _loc1_;
         }
         if(!this.§68§ && this.token.type == §&!F§.§4">§)
         {
            this.§"j§();
            if(this.token.type == §&!F§.§`"-§)
            {
               return _loc1_;
            }
            this.§9e§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§null§());
            this.§"j§();
            if(this.token.type == §&!F§.§`"-§)
            {
               break;
            }
            if(this.token.type == §&!F§.§4">§)
            {
               this.§"j§();
               if(!this.§68§)
               {
                  if(this.token.type == §&!F§.§`"-§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§9e§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §<B§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§"j§();
         if(this.token.type == §&!F§.§>"7§)
         {
            return _loc1_;
         }
         if(!this.§68§ && this.token.type == §&!F§.§4">§)
         {
            this.§"j§();
            if(this.token.type == §&!F§.§>"7§)
            {
               return _loc1_;
            }
            this.§9e§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §&!F§.§>-§)
            {
               _loc2_ = String(this.token.value);
               this.§"j§();
               if(this.token.type == §&!F§.§@!O§)
               {
                  this.§"j§();
                  _loc1_[_loc2_] = this.§null§();
                  this.§"j§();
                  if(this.token.type == §&!F§.§>"7§)
                  {
                     break;
                  }
                  if(this.token.type == §&!F§.§4">§)
                  {
                     this.§"j§();
                     if(!this.§68§)
                     {
                        if(this.token.type == §&!F§.§>"7§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§9e§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§9e§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§9e§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §null§() : Object
      {
         if(this.token == null)
         {
            this.§9e§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §&!F§.§#"<§:
               return this.§<B§();
            case §&!F§.§,!F§:
               return this.§9I§();
            case §&!F§.§>-§:
            case §&!F§.§;!s§:
            case §&!F§.TRUE:
            case §&!F§.FALSE:
            case §&!F§.§`M§:
               return this.token.value;
            case §&!F§.§<d§:
               if(!this.§68§)
               {
                  return this.token.value;
               }
               this.§9e§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§9e§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
