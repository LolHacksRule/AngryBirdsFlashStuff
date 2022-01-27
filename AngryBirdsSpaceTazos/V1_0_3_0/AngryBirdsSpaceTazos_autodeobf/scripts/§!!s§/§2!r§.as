package §!!s§
{
   public class §2!r§
   {
       
      
      private var §>!Z§:Boolean;
      
      private var value;
      
      private var §'!j§:§`"#§;
      
      private var §"&§:§ !d§;
      
      public function §2!r§(param1:String, param2:Boolean)
      {
         super();
         this.§>!Z§ = param2;
         this.§'!j§ = new §`"#§(param1,param2);
         this.§#!&§();
         this.value = this.§#"?§();
         if(param2 && this.§#!&§() != null)
         {
            this.§'!j§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §#!&§() : § !d§
      {
         return this.§"&§ = this.§'!j§.§=!M§();
      }
      
      private function §6!e§() : Array
      {
         var _loc1_:Array = new Array();
         this.§#!&§();
         if(this.§"&§.type == §;!7§.§?§)
         {
            return _loc1_;
         }
         if(!this.§>!Z§ && this.§"&§.type == §;!7§.§8!D§)
         {
            this.§#!&§();
            if(this.§"&§.type == §;!7§.§?§)
            {
               return _loc1_;
            }
            this.§'!j§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§"&§.value);
         }
         while(true)
         {
            _loc1_.push(this.§#"?§());
            this.§#!&§();
            if(this.§"&§.type == §;!7§.§?§)
            {
               break;
            }
            if(this.§"&§.type == §;!7§.§8!D§)
            {
               this.§#!&§();
               if(!this.§>!Z§)
               {
                  if(this.§"&§.type == §;!7§.§?§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§'!j§.parseError("Expecting ] or , but found " + this.§"&§.value);
            }
         }
         return _loc1_;
      }
      
      private function §["B§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§#!&§();
         if(this.§"&§.type == §;!7§.§`"1§)
         {
            return _loc1_;
         }
         if(!this.§>!Z§ && this.§"&§.type == §;!7§.§8!D§)
         {
            this.§#!&§();
            if(this.§"&§.type == §;!7§.§`"1§)
            {
               return _loc1_;
            }
            this.§'!j§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§"&§.value);
         }
         while(true)
         {
            if(this.§"&§.type == §;!7§.§[!m§)
            {
               _loc2_ = String(this.§"&§.value);
               this.§#!&§();
               if(this.§"&§.type == §;!7§.§2P§)
               {
                  this.§#!&§();
                  _loc1_[_loc2_] = this.§#"?§();
                  this.§#!&§();
                  if(this.§"&§.type == §;!7§.§`"1§)
                  {
                     break;
                  }
                  if(this.§"&§.type == §;!7§.§8!D§)
                  {
                     this.§#!&§();
                     if(!this.§>!Z§)
                     {
                        if(this.§"&§.type == §;!7§.§`"1§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§'!j§.parseError("Expecting } or , but found " + this.§"&§.value);
                  }
               }
               else
               {
                  this.§'!j§.parseError("Expecting : but found " + this.§"&§.value);
               }
            }
            else
            {
               this.§'!j§.parseError("Expecting string but found " + this.§"&§.value);
            }
         }
         return _loc1_;
      }
      
      private function §#"?§() : Object
      {
         if(this.§"&§ == null)
         {
            this.§'!j§.parseError("Unexpected end of input");
         }
         switch(this.§"&§.type)
         {
            case §;!7§.§%@§:
               return this.§["B§();
            case §;!7§.§?s§:
               return this.§6!e§();
            case §;!7§.§[!m§:
            case §;!7§.§"Y§:
            case §;!7§.TRUE:
            case §;!7§.FALSE:
            case §;!7§.NULL:
               return this.§"&§.value;
            case §;!7§.§6!+§:
               if(!this.§>!Z§)
               {
                  return this.§"&§.value;
               }
               this.§'!j§.parseError("Unexpected " + this.§"&§.value);
               break;
         }
         this.§'!j§.parseError("Unexpected " + this.§"&§.value);
         return null;
      }
   }
}
