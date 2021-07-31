package §60§
{
   public class §;w§
   {
       
      
      private var §&k§:Boolean;
      
      private var value;
      
      private var §]c§:§=!;§;
      
      private var token:§&d§;
      
      public function §;w§(param1:String, param2:Boolean)
      {
         super();
         this.§&k§ = param2;
         this.§]c§ = new §=!;§(param1,param2);
         this.§ !5§();
         this.value = this.§<!E§();
         if(param2 && this.§ !5§() != null)
         {
            this.§]c§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function § !5§() : §&d§
      {
         return this.token = this.§]c§.§!!"§();
      }
      
      private function §8!7§() : Array
      {
         var _loc1_:Array = new Array();
         this.§ !5§();
         if(this.token.type == §94§.§@!6§)
         {
            return _loc1_;
         }
         if(!this.§&k§ && this.token.type == §94§.§0!%§)
         {
            this.§ !5§();
            if(this.token.type == §94§.§@!6§)
            {
               return _loc1_;
            }
            this.§]c§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§<!E§());
            this.§ !5§();
            if(this.token.type == §94§.§@!6§)
            {
               break;
            }
            if(this.token.type == §94§.§0!%§)
            {
               this.§ !5§();
               if(!this.§&k§)
               {
                  if(this.token.type == §94§.§@!6§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]c§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §^t§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§ !5§();
         if(this.token.type == §94§.§+!;§)
         {
            return _loc1_;
         }
         if(!this.§&k§ && this.token.type == §94§.§0!%§)
         {
            this.§ !5§();
            if(this.token.type == §94§.§+!;§)
            {
               return _loc1_;
            }
            this.§]c§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §94§.§[5§)
            {
               _loc2_ = String(this.token.value);
               this.§ !5§();
               if(this.token.type == §94§.§ do§)
               {
                  this.§ !5§();
                  _loc1_[_loc2_] = this.§<!E§();
                  this.§ !5§();
                  if(this.token.type == §94§.§+!;§)
                  {
                     break;
                  }
                  if(this.token.type == §94§.§0!%§)
                  {
                     this.§ !5§();
                     if(!this.§&k§)
                     {
                        if(this.token.type == §94§.§+!;§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]c§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§]c§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§]c§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §<!E§() : Object
      {
         if(this.token == null)
         {
            this.§]c§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §94§.§[!!§:
               return this.§^t§();
            case §94§.§[Y§:
               return this.§8!7§();
            case §94§.§[5§:
            case §94§.§%!4§:
            case §94§.TRUE:
            case §94§.FALSE:
            case §94§.NULL:
               return this.token.value;
            case §94§.§[!&§:
               if(!this.§&k§)
               {
                  return this.token.value;
               }
               this.§]c§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§]c§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
