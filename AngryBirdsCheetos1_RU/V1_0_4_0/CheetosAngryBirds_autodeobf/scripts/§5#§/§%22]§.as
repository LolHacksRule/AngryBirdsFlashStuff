package §5#§
{
   public class §"]§
   {
       
      
      private var §%!P§:Boolean;
      
      private var value;
      
      private var §1!J§:§9!$§;
      
      private var §2!G§:§'1§;
      
      public function §"]§(param1:String, param2:Boolean)
      {
         super();
         this.§%!P§ = param2;
         this.§1!J§ = new §9!$§(param1,param2);
         this.§!!`§();
         this.value = this.§&!1§();
         if(param2 && this.§!!`§() != null)
         {
            this.§1!J§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!`§() : §'1§
      {
         return this.§2!G§ = this.§1!J§.§^!7§();
      }
      
      private function §-p§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!!`§();
         if(this.§2!G§.type == §#!C§.§!!I§)
         {
            return _loc1_;
         }
         if(!this.§%!P§ && this.§2!G§.type == §#!C§.§5v§)
         {
            this.§!!`§();
            if(this.§2!G§.type == §#!C§.§!!I§)
            {
               return _loc1_;
            }
            this.§1!J§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§2!G§.value);
         }
         while(true)
         {
            _loc1_.push(this.§&!1§());
            this.§!!`§();
            if(this.§2!G§.type == §#!C§.§!!I§)
            {
               break;
            }
            if(this.§2!G§.type == §#!C§.§5v§)
            {
               this.§!!`§();
               if(!this.§%!P§)
               {
                  if(this.§2!G§.type == §#!C§.§!!I§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§1!J§.parseError("Expecting ] or , but found " + this.§2!G§.value);
            }
         }
         return _loc1_;
      }
      
      private function §']§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!!`§();
         if(this.§2!G§.type == §#!C§.§"!@§)
         {
            return _loc1_;
         }
         if(!this.§%!P§ && this.§2!G§.type == §#!C§.§5v§)
         {
            this.§!!`§();
            if(this.§2!G§.type == §#!C§.§"!@§)
            {
               return _loc1_;
            }
            this.§1!J§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§2!G§.value);
         }
         while(true)
         {
            if(this.§2!G§.type == §#!C§.§=1§)
            {
               _loc2_ = String(this.§2!G§.value);
               this.§!!`§();
               if(this.§2!G§.type == §#!C§.§+@§)
               {
                  this.§!!`§();
                  _loc1_[_loc2_] = this.§&!1§();
                  this.§!!`§();
                  if(this.§2!G§.type == §#!C§.§"!@§)
                  {
                     break;
                  }
                  if(this.§2!G§.type == §#!C§.§5v§)
                  {
                     this.§!!`§();
                     if(!this.§%!P§)
                     {
                        if(this.§2!G§.type == §#!C§.§"!@§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§1!J§.parseError("Expecting } or , but found " + this.§2!G§.value);
                  }
               }
               else
               {
                  this.§1!J§.parseError("Expecting : but found " + this.§2!G§.value);
               }
            }
            else
            {
               this.§1!J§.parseError("Expecting string but found " + this.§2!G§.value);
            }
         }
         return _loc1_;
      }
      
      private function §&!1§() : Object
      {
         if(this.§2!G§ == null)
         {
            this.§1!J§.parseError("Unexpected end of input");
         }
         switch(this.§2!G§.type)
         {
            case §#!C§.§6!W§:
               return this.§']§();
            case §#!C§.§1!D§:
               return this.§-p§();
            case §#!C§.§=1§:
            case §#!C§.§=!E§:
            case §#!C§.TRUE:
            case §#!C§.FALSE:
            case §#!C§.§7!2§:
               return this.§2!G§.value;
            case §#!C§.§[!Q§:
               if(!this.§%!P§)
               {
                  return this.§2!G§.value;
               }
               this.§1!J§.parseError("Unexpected " + this.§2!G§.value);
               break;
         }
         this.§1!J§.parseError("Unexpected " + this.§2!G§.value);
         return null;
      }
   }
}
