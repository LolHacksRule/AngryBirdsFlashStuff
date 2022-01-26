package §@!+§
{
   public class §3+§
   {
       
      
      private var § !"§:Boolean;
      
      private var value;
      
      private var §<s§:§ !1§;
      
      private var token:§;J§;
      
      public function §3+§(param1:String, param2:Boolean)
      {
         super();
         this.§ !"§ = param2;
         this.§<s§ = new § !1§(param1,param2);
         this.§;7§();
         this.value = this.§['§();
         if(param2 && this.§;7§() != null)
         {
            this.§<s§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;7§() : §;J§
      {
         return this.token = this.§<s§.§&!=§();
      }
      
      private function §<!#§() : Array
      {
         var _loc1_:Array = new Array();
         this.§;7§();
         if(this.token.type == §=[§.§^E§)
         {
            return _loc1_;
         }
         if(!this.§ !"§ && this.token.type == §=[§.§,!E§)
         {
            this.§;7§();
            if(this.token.type == §=[§.§^E§)
            {
               return _loc1_;
            }
            this.§<s§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§['§());
            this.§;7§();
            if(this.token.type == §=[§.§^E§)
            {
               break;
            }
            if(this.token.type == §=[§.§,!E§)
            {
               this.§;7§();
               if(!this.§ !"§)
               {
                  if(this.token.type == §=[§.§^E§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§<s§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §81§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;7§();
         if(this.token.type == §=[§.§@#§)
         {
            return _loc1_;
         }
         if(!this.§ !"§ && this.token.type == §=[§.§,!E§)
         {
            this.§;7§();
            if(this.token.type == §=[§.§@#§)
            {
               return _loc1_;
            }
            this.§<s§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §=[§.§?s§)
            {
               _loc2_ = String(this.token.value);
               this.§;7§();
               if(this.token.type == §=[§.§,!C§)
               {
                  this.§;7§();
                  _loc1_[_loc2_] = this.§['§();
                  this.§;7§();
                  if(this.token.type == §=[§.§@#§)
                  {
                     break;
                  }
                  if(this.token.type == §=[§.§,!E§)
                  {
                     this.§;7§();
                     if(!this.§ !"§)
                     {
                        if(this.token.type == §=[§.§@#§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§<s§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§<s§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§<s§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §['§() : Object
      {
         if(this.token == null)
         {
            this.§<s§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §=[§.§?g§:
               return this.§81§();
            case §=[§.§?t§:
               return this.§<!#§();
            case §=[§.§?s§:
            case §=[§.§"!4§:
            case §=[§.TRUE:
            case §=[§.FALSE:
            case §=[§.NULL:
               return this.token.value;
            case §=[§.§&!4§:
               if(!this.§ !"§)
               {
                  return this.token.value;
               }
               this.§<s§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§<s§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
