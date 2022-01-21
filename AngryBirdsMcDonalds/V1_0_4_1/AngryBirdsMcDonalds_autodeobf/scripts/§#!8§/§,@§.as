package §#!8§
{
   public class §,@§
   {
       
      
      private var §%!9§:Boolean;
      
      private var value;
      
      private var §,t§:§&c§;
      
      private var §@x§:§!O§;
      
      public function §,@§(param1:String, param2:Boolean)
      {
         super();
         this.§%!9§ = param2;
         this.§,t§ = new §&c§(param1,param2);
         this.§'!e§();
         this.value = this.§'!l§();
         if(param2 && this.§'!e§() != null)
         {
            this.§,t§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §'!e§() : §!O§
      {
         return this.§@x§ = this.§,t§.§`!H§();
      }
      
      private function §4!N§() : Array
      {
         var _loc1_:Array = new Array();
         this.§'!e§();
         if(this.§@x§.type == §4!<§.§=b§)
         {
            return _loc1_;
         }
         if(!this.§%!9§ && this.§@x§.type == §4!<§.§]C§)
         {
            this.§'!e§();
            if(this.§@x§.type == §4!<§.§=b§)
            {
               return _loc1_;
            }
            this.§,t§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§@x§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'!l§());
            this.§'!e§();
            if(this.§@x§.type == §4!<§.§=b§)
            {
               break;
            }
            if(this.§@x§.type == §4!<§.§]C§)
            {
               this.§'!e§();
               if(!this.§%!9§)
               {
                  if(this.§@x§.type == §4!<§.§=b§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,t§.parseError("Expecting ] or , but found " + this.§@x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-!@§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§'!e§();
         if(this.§@x§.type == §4!<§.§9!0§)
         {
            return _loc1_;
         }
         if(!this.§%!9§ && this.§@x§.type == §4!<§.§]C§)
         {
            this.§'!e§();
            if(this.§@x§.type == §4!<§.§9!0§)
            {
               return _loc1_;
            }
            this.§,t§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§@x§.value);
         }
         while(true)
         {
            if(this.§@x§.type == §4!<§.§-F§)
            {
               _loc2_ = String(this.§@x§.value);
               this.§'!e§();
               if(this.§@x§.type == §4!<§.§@Q§)
               {
                  this.§'!e§();
                  _loc1_[_loc2_] = this.§'!l§();
                  this.§'!e§();
                  if(this.§@x§.type == §4!<§.§9!0§)
                  {
                     break;
                  }
                  if(this.§@x§.type == §4!<§.§]C§)
                  {
                     this.§'!e§();
                     if(!this.§%!9§)
                     {
                        if(this.§@x§.type == §4!<§.§9!0§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,t§.parseError("Expecting } or , but found " + this.§@x§.value);
                  }
               }
               else
               {
                  this.§,t§.parseError("Expecting : but found " + this.§@x§.value);
               }
            }
            else
            {
               this.§,t§.parseError("Expecting string but found " + this.§@x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'!l§() : Object
      {
         if(this.§@x§ == null)
         {
            this.§,t§.parseError("Unexpected end of input");
         }
         switch(this.§@x§.type)
         {
            case §4!<§.§,K§:
               return this.§-!@§();
            case §4!<§.§ !T§:
               return this.§4!N§();
            case §4!<§.§-F§:
            case §4!<§.§@!"§:
            case §4!<§.TRUE:
            case §4!<§.FALSE:
            case §4!<§.NULL:
               return this.§@x§.value;
            case §4!<§.§%!`§:
               if(!this.§%!9§)
               {
                  return this.§@x§.value;
               }
               this.§,t§.parseError("Unexpected " + this.§@x§.value);
               break;
         }
         this.§,t§.parseError("Unexpected " + this.§@x§.value);
         return null;
      }
   }
}
