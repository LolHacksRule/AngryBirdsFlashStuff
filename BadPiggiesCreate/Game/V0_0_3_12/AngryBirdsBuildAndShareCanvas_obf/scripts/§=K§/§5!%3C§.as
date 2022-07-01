package §=K§
{
   public class §5!<§
   {
       
      
      private var §;!b§:Boolean;
      
      private var value;
      
      private var §<n§:§1$§;
      
      private var token:§`!s§;
      
      public function §5!<§(param1:String, param2:Boolean)
      {
         super();
         this.§;!b§ = param2;
         this.§<n§ = new §1$§(param1,param2);
         this.§4!n§();
         this.value = this.§?!H§();
         if(param2 && this.§4!n§() != null)
         {
            this.§<n§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §4!n§() : §`!s§
      {
         return this.token = this.§<n§.§'!]§();
      }
      
      private function §!"1§() : Array
      {
         var _loc1_:Array = new Array();
         this.§4!n§();
         if(this.token.type == §@!q§.§%!k§)
         {
            return _loc1_;
         }
         if(!this.§;!b§ && this.token.type == §@!q§.§%E§)
         {
            this.§4!n§();
            if(this.token.type == §@!q§.§%!k§)
            {
               return _loc1_;
            }
            this.§<n§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§?!H§());
            this.§4!n§();
            if(this.token.type == §@!q§.§%!k§)
            {
               break;
            }
            if(this.token.type == §@!q§.§%E§)
            {
               this.§4!n§();
               if(!this.§;!b§)
               {
                  if(this.token.type == §@!q§.§%!k§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§<n§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §!c§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§4!n§();
         if(this.token.type == §@!q§.§`"5§)
         {
            return _loc1_;
         }
         if(!this.§;!b§ && this.token.type == §@!q§.§%E§)
         {
            this.§4!n§();
            if(this.token.type == §@!q§.§`"5§)
            {
               return _loc1_;
            }
            this.§<n§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §@!q§.§4"#§)
            {
               _loc2_ = String(this.token.value);
               this.§4!n§();
               if(this.token.type == §@!q§.§0!o§)
               {
                  this.§4!n§();
                  _loc1_[_loc2_] = this.§?!H§();
                  this.§4!n§();
                  if(this.token.type == §@!q§.§`"5§)
                  {
                     break;
                  }
                  if(this.token.type == §@!q§.§%E§)
                  {
                     this.§4!n§();
                     if(!this.§;!b§)
                     {
                        if(this.token.type == §@!q§.§`"5§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§<n§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§<n§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§<n§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §?!H§() : Object
      {
         if(this.token == null)
         {
            this.§<n§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §@!q§.§!!w§:
               return this.§!c§();
            case §@!q§.§2v§:
               return this.§!"1§();
            case §@!q§.§4"#§:
            case §@!q§.§!H§:
            case §@!q§.TRUE:
            case §@!q§.FALSE:
            case §@!q§.§5J§:
               return this.token.value;
            case §@!q§.§="§:
               if(!this.§;!b§)
               {
                  return this.token.value;
               }
               this.§<n§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§<n§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
