package §+E§
{
   public class §-!S§
   {
       
      
      private var §!!9§:Boolean;
      
      private var value;
      
      private var §"!e§:§<-§;
      
      private var §%!1§:§-J§;
      
      public function §-!S§(param1:String, param2:Boolean)
      {
         super();
         this.§!!9§ = param2;
         this.§"!e§ = new §<-§(param1,param2);
         this.§#v§();
         this.value = this.§'!V§();
         if(param2 && this.§#v§() != null)
         {
            this.§"!e§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §#v§() : §-J§
      {
         return this.§%!1§ = this.§"!e§.§2-§();
      }
      
      private function §@!Y§() : Array
      {
         var _loc1_:Array = new Array();
         this.§#v§();
         if(this.§%!1§.type == §%Q§.§55§)
         {
            return _loc1_;
         }
         if(!this.§!!9§ && this.§%!1§.type == §%Q§.§3Y§)
         {
            this.§#v§();
            if(this.§%!1§.type == §%Q§.§55§)
            {
               return _loc1_;
            }
            this.§"!e§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§%!1§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'!V§());
            this.§#v§();
            if(this.§%!1§.type == §%Q§.§55§)
            {
               break;
            }
            if(this.§%!1§.type == §%Q§.§3Y§)
            {
               this.§#v§();
               if(!this.§!!9§)
               {
                  if(this.§%!1§.type == §%Q§.§55§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§"!e§.parseError("Expecting ] or , but found " + this.§%!1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3!Y§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§#v§();
         if(this.§%!1§.type == §%Q§.§4$§)
         {
            return _loc1_;
         }
         if(!this.§!!9§ && this.§%!1§.type == §%Q§.§3Y§)
         {
            this.§#v§();
            if(this.§%!1§.type == §%Q§.§4$§)
            {
               return _loc1_;
            }
            this.§"!e§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§%!1§.value);
         }
         while(true)
         {
            if(this.§%!1§.type == §%Q§.§ ]§)
            {
               _loc2_ = String(this.§%!1§.value);
               this.§#v§();
               if(this.§%!1§.type == §%Q§.§[s§)
               {
                  this.§#v§();
                  _loc1_[_loc2_] = this.§'!V§();
                  this.§#v§();
                  if(this.§%!1§.type == §%Q§.§4$§)
                  {
                     break;
                  }
                  if(this.§%!1§.type == §%Q§.§3Y§)
                  {
                     this.§#v§();
                     if(!this.§!!9§)
                     {
                        if(this.§%!1§.type == §%Q§.§4$§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§"!e§.parseError("Expecting } or , but found " + this.§%!1§.value);
                  }
               }
               else
               {
                  this.§"!e§.parseError("Expecting : but found " + this.§%!1§.value);
               }
            }
            else
            {
               this.§"!e§.parseError("Expecting string but found " + this.§%!1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'!V§() : Object
      {
         if(this.§%!1§ == null)
         {
            this.§"!e§.parseError("Unexpected end of input");
         }
         switch(this.§%!1§.type)
         {
            case §%Q§.§@!`§:
               return this.§3!Y§();
            case §%Q§.§?!-§:
               return this.§@!Y§();
            case §%Q§.§ ]§:
            case §%Q§.§3>§:
            case §%Q§.TRUE:
            case §%Q§.FALSE:
            case §%Q§.§-!P§:
               return this.§%!1§.value;
            case §%Q§.§^!N§:
               if(!this.§!!9§)
               {
                  return this.§%!1§.value;
               }
               this.§"!e§.parseError("Unexpected " + this.§%!1§.value);
               break;
         }
         this.§"!e§.parseError("Unexpected " + this.§%!1§.value);
         return null;
      }
   }
}
