package §#!<§
{
   public class §6!D§
   {
       
      
      private var §[y§:Boolean;
      
      private var value;
      
      private var §&!N§:§8!O§;
      
      private var token:§65§;
      
      public function §6!D§(param1:String, param2:Boolean)
      {
         super();
         this.§[y§ = param2;
         this.§&!N§ = new §8!O§(param1,param2);
         this.§;g§();
         this.value = this.§]"§();
         if(param2 && this.§;g§() != null)
         {
            this.§&!N§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;g§() : §65§
      {
         return this.token = this.§&!N§.§?!D§();
      }
      
      private function §6!J§() : Array
      {
         var _loc1_:Array = new Array();
         this.§;g§();
         if(this.token.type == §?t§.§@c§)
         {
            return _loc1_;
         }
         if(!this.§[y§ && this.token.type == §?t§.§"j§)
         {
            this.§;g§();
            if(this.token.type == §?t§.§@c§)
            {
               return _loc1_;
            }
            this.§&!N§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§]"§());
            this.§;g§();
            if(this.token.type == §?t§.§@c§)
            {
               break;
            }
            if(this.token.type == §?t§.§"j§)
            {
               this.§;g§();
               if(!this.§[y§)
               {
                  if(this.token.type == §?t§.§@c§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§&!N§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §-!2§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;g§();
         if(this.token.type == §?t§.§9!>§)
         {
            return _loc1_;
         }
         if(!this.§[y§ && this.token.type == §?t§.§"j§)
         {
            this.§;g§();
            if(this.token.type == §?t§.§9!>§)
            {
               return _loc1_;
            }
            this.§&!N§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §?t§.§8!?§)
            {
               _loc2_ = String(this.token.value);
               this.§;g§();
               if(this.token.type == §?t§.§>K§)
               {
                  this.§;g§();
                  _loc1_[_loc2_] = this.§]"§();
                  this.§;g§();
                  if(this.token.type == §?t§.§9!>§)
                  {
                     break;
                  }
                  if(this.token.type == §?t§.§"j§)
                  {
                     this.§;g§();
                     if(!this.§[y§)
                     {
                        if(this.token.type == §?t§.§9!>§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§&!N§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§&!N§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§&!N§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §]"§() : Object
      {
         if(this.token == null)
         {
            this.§&!N§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §?t§.§2S§:
               return this.§-!2§();
            case §?t§.§1_§:
               return this.§6!J§();
            case §?t§.§8!?§:
            case §?t§.§^!$§:
            case §?t§.TRUE:
            case §?t§.FALSE:
            case §?t§.NULL:
               return this.token.value;
            case §?t§.§"o§:
               if(!this.§[y§)
               {
                  return this.token.value;
               }
               this.§&!N§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§&!N§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
