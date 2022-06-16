package §]a§
{
   public class §1O§
   {
       
      
      private var §>!4§:Boolean;
      
      private var value;
      
      private var §#W§:§7!&§;
      
      private var token:§+s§;
      
      public function §1O§(param1:String, param2:Boolean)
      {
         super();
         this.§>!4§ = param2;
         this.§#W§ = new §7!&§(param1,param2);
         this.§2B§();
         this.value = this.§8!N§();
         if(param2 && this.§2B§() != null)
         {
            this.§#W§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §2B§() : §+s§
      {
         return this.token = this.§#W§.§9!"§();
      }
      
      private function §'U§() : Array
      {
         var _loc1_:Array = new Array();
         this.§2B§();
         if(this.token.type == §^m§.§9!3§)
         {
            return _loc1_;
         }
         if(!this.§>!4§ && this.token.type == §^m§.§'r§)
         {
            this.§2B§();
            if(this.token.type == §^m§.§9!3§)
            {
               return _loc1_;
            }
            this.§#W§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§8!N§());
            this.§2B§();
            if(this.token.type == §^m§.§9!3§)
            {
               break;
            }
            if(this.token.type == §^m§.§'r§)
            {
               this.§2B§();
               if(!this.§>!4§)
               {
                  if(this.token.type == §^m§.§9!3§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§#W§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §&_§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§2B§();
         if(this.token.type == §^m§.§#,§)
         {
            return _loc1_;
         }
         if(!this.§>!4§ && this.token.type == §^m§.§'r§)
         {
            this.§2B§();
            if(this.token.type == §^m§.§#,§)
            {
               return _loc1_;
            }
            this.§#W§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §^m§.§7x§)
            {
               _loc2_ = String(this.token.value);
               this.§2B§();
               if(this.token.type == §^m§.§+P§)
               {
                  this.§2B§();
                  _loc1_[_loc2_] = this.§8!N§();
                  this.§2B§();
                  if(this.token.type == §^m§.§#,§)
                  {
                     break;
                  }
                  if(this.token.type == §^m§.§'r§)
                  {
                     this.§2B§();
                     if(!this.§>!4§)
                     {
                        if(this.token.type == §^m§.§#,§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§#W§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§#W§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§#W§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §8!N§() : Object
      {
         if(this.token == null)
         {
            this.§#W§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §^m§.§,!@§:
               return this.§&_§();
            case §^m§.§?P§:
               return this.§'U§();
            case §^m§.§7x§:
            case §^m§.§1S§:
            case §^m§.TRUE:
            case §^m§.FALSE:
            case §^m§.NULL:
               return this.token.value;
            case §^m§.§4Y§:
               if(!this.§>!4§)
               {
                  return this.token.value;
               }
               this.§#W§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§#W§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
