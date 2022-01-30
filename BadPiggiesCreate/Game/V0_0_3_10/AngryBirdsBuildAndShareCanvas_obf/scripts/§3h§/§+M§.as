package §3h§
{
   public class §+M§
   {
       
      
      private var §&!1§:Boolean;
      
      private var value;
      
      private var §%""§:§7"'§;
      
      private var token:§'T§;
      
      public function §+M§(param1:String, param2:Boolean)
      {
         super();
         this.§&!1§ = param2;
         this.§%""§ = new §7"'§(param1,param2);
         this.§'5§();
         this.value = this.§9!Z§();
         if(param2 && this.§'5§() != null)
         {
            this.§%""§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §'5§() : §'T§
      {
         return this.token = this.§%""§.§,",§();
      }
      
      private function §!^§() : Array
      {
         var _loc1_:Array = new Array();
         this.§'5§();
         if(this.token.type == §@$§.§`!g§)
         {
            return _loc1_;
         }
         if(!this.§&!1§ && this.token.type == §@$§.§3N§)
         {
            this.§'5§();
            if(this.token.type == §@$§.§`!g§)
            {
               return _loc1_;
            }
            this.§%""§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§9!Z§());
            this.§'5§();
            if(this.token.type == §@$§.§`!g§)
            {
               break;
            }
            if(this.token.type == §@$§.§3N§)
            {
               this.§'5§();
               if(!this.§&!1§)
               {
                  if(this.token.type == §@$§.§`!g§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%""§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §"!l§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§'5§();
         if(this.token.type == §@$§.§-!L§)
         {
            return _loc1_;
         }
         if(!this.§&!1§ && this.token.type == §@$§.§3N§)
         {
            this.§'5§();
            if(this.token.type == §@$§.§-!L§)
            {
               return _loc1_;
            }
            this.§%""§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §@$§.§%e§)
            {
               _loc2_ = String(this.token.value);
               this.§'5§();
               if(this.token.type == §@$§.§ w§)
               {
                  this.§'5§();
                  _loc1_[_loc2_] = this.§9!Z§();
                  this.§'5§();
                  if(this.token.type == §@$§.§-!L§)
                  {
                     break;
                  }
                  if(this.token.type == §@$§.§3N§)
                  {
                     this.§'5§();
                     if(!this.§&!1§)
                     {
                        if(this.token.type == §@$§.§-!L§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%""§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§%""§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§%""§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §9!Z§() : Object
      {
         if(this.token == null)
         {
            this.§%""§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §@$§.§1!m§:
               return this.§"!l§();
            case §@$§.§9P§:
               return this.§!^§();
            case §@$§.§%e§:
            case §@$§.§"s§:
            case §@$§.TRUE:
            case §@$§.FALSE:
            case §@$§.§[5§:
               return this.token.value;
            case §@$§.§1M§:
               if(!this.§&!1§)
               {
                  return this.token.value;
               }
               this.§%""§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§%""§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
