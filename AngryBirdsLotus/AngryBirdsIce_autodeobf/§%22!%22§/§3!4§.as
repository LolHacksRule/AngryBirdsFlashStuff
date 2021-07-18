package §"!"§
{
   public class §3!4§
   {
       
      
      private var §"!C§:Boolean;
      
      private var value;
      
      private var §[F§:§<!#§;
      
      private var token:§"!-§;
      
      public function §3!4§(param1:String, param2:Boolean)
      {
         super();
         this.§"!C§ = param2;
         this.§[F§ = new §<!#§(param1,param2);
         this.§]v§();
         this.value = this.§+!9§();
         if(param2 && this.§]v§() != null)
         {
            this.§[F§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §]v§() : §"!-§
      {
         return this.token = this.§[F§.§ s§();
      }
      
      private function §8V§() : Array
      {
         var _loc1_:Array = new Array();
         this.§]v§();
         if(this.token.type == §2!4§.§9!C§)
         {
            return _loc1_;
         }
         if(!this.§"!C§ && this.token.type == §2!4§.§-!"§)
         {
            this.§]v§();
            if(this.token.type == §2!4§.§9!C§)
            {
               return _loc1_;
            }
            this.§[F§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§+!9§());
            this.§]v§();
            if(this.token.type == §2!4§.§9!C§)
            {
               break;
            }
            if(this.token.type == §2!4§.§-!"§)
            {
               this.§]v§();
               if(!this.§"!C§)
               {
                  if(this.token.type == §2!4§.§9!C§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§[F§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §5;§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§]v§();
         if(this.token.type == §2!4§.§,!F§)
         {
            return _loc1_;
         }
         if(!this.§"!C§ && this.token.type == §2!4§.§-!"§)
         {
            this.§]v§();
            if(this.token.type == §2!4§.§,!F§)
            {
               return _loc1_;
            }
            this.§[F§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §2!4§.§"!F§)
            {
               _loc2_ = String(this.token.value);
               this.§]v§();
               if(this.token.type == §2!4§.§5u§)
               {
                  this.§]v§();
                  _loc1_[_loc2_] = this.§+!9§();
                  this.§]v§();
                  if(this.token.type == §2!4§.§,!F§)
                  {
                     break;
                  }
                  if(this.token.type == §2!4§.§-!"§)
                  {
                     this.§]v§();
                     if(!this.§"!C§)
                     {
                        if(this.token.type == §2!4§.§,!F§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§[F§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§[F§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§[F§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §+!9§() : Object
      {
         if(this.token == null)
         {
            this.§[F§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §2!4§.§+S§:
               return this.§5;§();
            case §2!4§.§-J§:
               return this.§8V§();
            case §2!4§.§"!F§:
            case §2!4§.§6!1§:
            case §2!4§.TRUE:
            case §2!4§.FALSE:
            case §2!4§.NULL:
               return this.token.value;
            case §2!4§.§!!"§:
               if(!this.§"!C§)
               {
                  return this.token.value;
               }
               this.§[F§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§[F§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
