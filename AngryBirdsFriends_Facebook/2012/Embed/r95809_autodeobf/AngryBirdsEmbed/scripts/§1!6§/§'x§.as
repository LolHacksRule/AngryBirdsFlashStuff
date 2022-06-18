package §1!6§
{
   public class §'x§
   {
       
      
      private var §,!?§:Boolean;
      
      private var value;
      
      private var §%!<§:§2!C§;
      
      private var token:§3q§;
      
      public function §'x§(param1:String, param2:Boolean)
      {
         super();
         this.§,!?§ = param2;
         this.§%!<§ = new §2!C§(param1,param2);
         this.§0!7§();
         this.value = this.§@!E§();
         if(param2 && this.§0!7§() != null)
         {
            this.§%!<§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §0!7§() : §3q§
      {
         return this.token = this.§%!<§.§-d§();
      }
      
      private function §]!2§() : Array
      {
         var _loc1_:Array = new Array();
         this.§0!7§();
         if(this.token.type == §,!2§.§9^§)
         {
            return _loc1_;
         }
         if(!this.§,!?§ && this.token.type == §,!2§.§=!8§)
         {
            this.§0!7§();
            if(this.token.type == §,!2§.§9^§)
            {
               return _loc1_;
            }
            this.§%!<§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§@!E§());
            this.§0!7§();
            if(this.token.type == §,!2§.§9^§)
            {
               break;
            }
            if(this.token.type == §,!2§.§=!8§)
            {
               this.§0!7§();
               if(!this.§,!?§)
               {
                  if(this.token.type == §,!2§.§9^§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%!<§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §[!6§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§0!7§();
         if(this.token.type == §,!2§.§1!G§)
         {
            return _loc1_;
         }
         if(!this.§,!?§ && this.token.type == §,!2§.§=!8§)
         {
            this.§0!7§();
            if(this.token.type == §,!2§.§1!G§)
            {
               return _loc1_;
            }
            this.§%!<§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §,!2§.§^E§)
            {
               _loc2_ = String(this.token.value);
               this.§0!7§();
               if(this.token.type == §,!2§.§=p§)
               {
                  this.§0!7§();
                  _loc1_[_loc2_] = this.§@!E§();
                  this.§0!7§();
                  if(this.token.type == §,!2§.§1!G§)
                  {
                     break;
                  }
                  if(this.token.type == §,!2§.§=!8§)
                  {
                     this.§0!7§();
                     if(!this.§,!?§)
                     {
                        if(this.token.type == §,!2§.§1!G§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%!<§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§%!<§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§%!<§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §@!E§() : Object
      {
         if(this.token == null)
         {
            this.§%!<§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §,!2§.§^!-§:
               return this.§[!6§();
            case §,!2§.§3#§:
               return this.§]!2§();
            case §,!2§.§^E§:
            case §,!2§.native:
            case §,!2§.TRUE:
            case §,!2§.FALSE:
            case §,!2§.NULL:
               return this.token.value;
            case §,!2§.§2!<§:
               if(!this.§,!?§)
               {
                  return this.token.value;
               }
               this.§%!<§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§%!<§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
