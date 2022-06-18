package §;!%§
{
   public class §@Z§
   {
       
      
      private var §#O§:Boolean;
      
      private var value;
      
      private var §]!5§:§7w§;
      
      private var token:§'<§;
      
      public function §@Z§(param1:String, param2:Boolean)
      {
         super();
         this.§#O§ = param2;
         this.§]!5§ = new §7w§(param1,param2);
         this.§8!+§();
         this.value = this.§?+§();
         if(param2 && this.§8!+§() != null)
         {
            this.§]!5§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §8!+§() : §'<§
      {
         return this.token = this.§]!5§.§[i§();
      }
      
      private function §5!,§() : Array
      {
         var _loc1_:Array = new Array();
         this.§8!+§();
         if(this.token.type == §,!7§.§&!&§)
         {
            return _loc1_;
         }
         if(!this.§#O§ && this.token.type == §,!7§.§!m§)
         {
            this.§8!+§();
            if(this.token.type == §,!7§.§&!&§)
            {
               return _loc1_;
            }
            this.§]!5§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§?+§());
            this.§8!+§();
            if(this.token.type == §,!7§.§&!&§)
            {
               break;
            }
            if(this.token.type == §,!7§.§!m§)
            {
               this.§8!+§();
               if(!this.§#O§)
               {
                  if(this.token.type == §,!7§.§&!&§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]!5§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §8Y§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§8!+§();
         if(this.token.type == §,!7§.§2s§)
         {
            return _loc1_;
         }
         if(!this.§#O§ && this.token.type == §,!7§.§!m§)
         {
            this.§8!+§();
            if(this.token.type == §,!7§.§2s§)
            {
               return _loc1_;
            }
            this.§]!5§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §,!7§.§3!<§)
            {
               _loc2_ = String(this.token.value);
               this.§8!+§();
               if(this.token.type == §,!7§.§&N§)
               {
                  this.§8!+§();
                  _loc1_[_loc2_] = this.§?+§();
                  this.§8!+§();
                  if(this.token.type == §,!7§.§2s§)
                  {
                     break;
                  }
                  if(this.token.type == §,!7§.§!m§)
                  {
                     this.§8!+§();
                     if(!this.§#O§)
                     {
                        if(this.token.type == §,!7§.§2s§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]!5§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§]!5§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§]!5§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §?+§() : Object
      {
         if(this.token == null)
         {
            this.§]!5§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §,!7§.§]4§:
               return this.§8Y§();
            case §,!7§.§>!H§:
               return this.§5!,§();
            case §,!7§.§3!<§:
            case §,!7§.§]y§:
            case §,!7§.TRUE:
            case §,!7§.FALSE:
            case §,!7§.NULL:
               return this.token.value;
            case §,!7§.§1K§:
               if(!this.§#O§)
               {
                  return this.token.value;
               }
               this.§]!5§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§]!5§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
