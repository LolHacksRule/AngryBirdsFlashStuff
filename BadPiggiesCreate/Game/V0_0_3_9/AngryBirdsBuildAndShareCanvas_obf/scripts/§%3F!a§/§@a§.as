package §?!a§
{
   public class §@a§
   {
       
      
      private var §'!m§:Boolean;
      
      private var value;
      
      private var §=_§:§#H§;
      
      private var token:§?"#§;
      
      public function §@a§(param1:String, param2:Boolean)
      {
         super();
         this.§'!m§ = param2;
         this.§=_§ = new §#H§(param1,param2);
         this.§5!d§();
         this.value = this.§&"$§();
         if(param2 && this.§5!d§() != null)
         {
            this.§=_§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §5!d§() : §?"#§
      {
         return this.token = this.§=_§.§2!,§();
      }
      
      private function §]!8§() : Array
      {
         var _loc1_:Array = new Array();
         this.§5!d§();
         if(this.token.type == §9c§.§#"&§)
         {
            return _loc1_;
         }
         if(!this.§'!m§ && this.token.type == §9c§.§%!u§)
         {
            this.§5!d§();
            if(this.token.type == §9c§.§#"&§)
            {
               return _loc1_;
            }
            this.§=_§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§&"$§());
            this.§5!d§();
            if(this.token.type == §9c§.§#"&§)
            {
               break;
            }
            if(this.token.type == §9c§.§%!u§)
            {
               this.§5!d§();
               if(!this.§'!m§)
               {
                  if(this.token.type == §9c§.§#"&§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§=_§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §-!c§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§5!d§();
         if(this.token.type == §9c§.§7!y§)
         {
            return _loc1_;
         }
         if(!this.§'!m§ && this.token.type == §9c§.§%!u§)
         {
            this.§5!d§();
            if(this.token.type == §9c§.§7!y§)
            {
               return _loc1_;
            }
            this.§=_§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §9c§.§-@§)
            {
               _loc2_ = String(this.token.value);
               this.§5!d§();
               if(this.token.type == §9c§.§6!k§)
               {
                  this.§5!d§();
                  _loc1_[_loc2_] = this.§&"$§();
                  this.§5!d§();
                  if(this.token.type == §9c§.§7!y§)
                  {
                     break;
                  }
                  if(this.token.type == §9c§.§%!u§)
                  {
                     this.§5!d§();
                     if(!this.§'!m§)
                     {
                        if(this.token.type == §9c§.§7!y§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§=_§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§=_§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§=_§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §&"$§() : Object
      {
         if(this.token == null)
         {
            this.§=_§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §9c§.§=A§:
               return this.§-!c§();
            case §9c§.§^^§:
               return this.§]!8§();
            case §9c§.§-@§:
            case §9c§.§#D§:
            case §9c§.TRUE:
            case §9c§.FALSE:
            case §9c§.§0!;§:
               return this.token.value;
            case §9c§.§"!y§:
               if(!this.§'!m§)
               {
                  return this.token.value;
               }
               this.§=_§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§=_§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
