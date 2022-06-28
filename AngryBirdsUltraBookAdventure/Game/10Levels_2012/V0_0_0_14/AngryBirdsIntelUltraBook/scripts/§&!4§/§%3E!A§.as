package §&!4§
{
   public class §>!A§
   {
       
      
      private var § Y§:Boolean;
      
      private var value;
      
      private var §&!§:§10§;
      
      private var §92§:§,!;§;
      
      public function §>!A§(param1:String, param2:Boolean)
      {
         super();
         this.§ Y§ = param2;
         this.§&!§ = new §10§(param1,param2);
         this.§%!p§();
         this.value = this.§-v§();
         if(param2 && this.§%!p§() != null)
         {
            this.§&!§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%!p§() : §,!;§
      {
         return this.§92§ = this.§&!§.§ !U§();
      }
      
      private function §#!J§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%!p§();
         if(this.§92§.type == §]!k§.§^!r§)
         {
            return _loc1_;
         }
         if(!this.§ Y§ && this.§92§.type == §]!k§.§4K§)
         {
            this.§%!p§();
            if(this.§92§.type == §]!k§.§^!r§)
            {
               return _loc1_;
            }
            this.§&!§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§92§.value);
         }
         while(true)
         {
            _loc1_.push(this.§-v§());
            this.§%!p§();
            if(this.§92§.type == §]!k§.§^!r§)
            {
               break;
            }
            if(this.§92§.type == §]!k§.§4K§)
            {
               this.§%!p§();
               if(!this.§ Y§)
               {
                  if(this.§92§.type == §]!k§.§^!r§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§&!§.parseError("Expecting ] or , but found " + this.§92§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<!u§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%!p§();
         if(this.§92§.type == §]!k§.§6N§)
         {
            return _loc1_;
         }
         if(!this.§ Y§ && this.§92§.type == §]!k§.§4K§)
         {
            this.§%!p§();
            if(this.§92§.type == §]!k§.§6N§)
            {
               return _loc1_;
            }
            this.§&!§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§92§.value);
         }
         while(true)
         {
            if(this.§92§.type == §]!k§.§1Y§)
            {
               _loc2_ = String(this.§92§.value);
               this.§%!p§();
               if(this.§92§.type == §]!k§.§5!#§)
               {
                  this.§%!p§();
                  _loc1_[_loc2_] = this.§-v§();
                  this.§%!p§();
                  if(this.§92§.type == §]!k§.§6N§)
                  {
                     break;
                  }
                  if(this.§92§.type == §]!k§.§4K§)
                  {
                     this.§%!p§();
                     if(!this.§ Y§)
                     {
                        if(this.§92§.type == §]!k§.§6N§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§&!§.parseError("Expecting } or , but found " + this.§92§.value);
                  }
               }
               else
               {
                  this.§&!§.parseError("Expecting : but found " + this.§92§.value);
               }
            }
            else
            {
               this.§&!§.parseError("Expecting string but found " + this.§92§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-v§() : Object
      {
         if(this.§92§ == null)
         {
            this.§&!§.parseError("Unexpected end of input");
         }
         switch(this.§92§.type)
         {
            case §]!k§.§[!>§:
               return this.§<!u§();
            case §]!k§.§<f§:
               return this.§#!J§();
            case §]!k§.§1Y§:
            case §]!k§.§-d§:
            case §]!k§.TRUE:
            case §]!k§.FALSE:
            case §]!k§.NULL:
               return this.§92§.value;
            case §]!k§.§%p§:
               if(!this.§ Y§)
               {
                  return this.§92§.value;
               }
               this.§&!§.parseError("Unexpected " + this.§92§.value);
               break;
         }
         this.§&!§.parseError("Unexpected " + this.§92§.value);
         return null;
      }
   }
}
