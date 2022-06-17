package §3"5§
{
   public class §+"O§
   {
       
      
      private var §]!$§:Boolean;
      
      private var value;
      
      private var §5"[§:§-n§;
      
      private var §@!y§:§;"4§;
      
      public function §+"O§(param1:String, param2:Boolean)
      {
         super();
         this.§]!$§ = param2;
         this.§5"[§ = new §-n§(param1,param2);
         this.§@"c§();
         this.value = this.§<#2§();
         if(param2 && this.§@"c§() != null)
         {
            this.§5"[§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §@"c§() : §;"4§
      {
         return this.§@!y§ = this.§5"[§.§@!k§();
      }
      
      private function §%!x§() : Array
      {
         var _loc1_:Array = new Array();
         this.§@"c§();
         if(this.§@!y§.type == §^!d§.§""v§)
         {
            return _loc1_;
         }
         if(!this.§]!$§ && this.§@!y§.type == §^!d§.§49§)
         {
            this.§@"c§();
            if(this.§@!y§.type == §^!d§.§""v§)
            {
               return _loc1_;
            }
            this.§5"[§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§@!y§.value);
         }
         while(true)
         {
            _loc1_.push(this.§<#2§());
            this.§@"c§();
            if(this.§@!y§.type == §^!d§.§""v§)
            {
               break;
            }
            if(this.§@!y§.type == §^!d§.§49§)
            {
               this.§@"c§();
               if(!this.§]!$§)
               {
                  if(this.§@!y§.type == §^!d§.§""v§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§5"[§.parseError("Expecting ] or , but found " + this.§@!y§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<$$§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§@"c§();
         if(this.§@!y§.type == §^!d§.§%V§)
         {
            return _loc1_;
         }
         if(!this.§]!$§ && this.§@!y§.type == §^!d§.§49§)
         {
            this.§@"c§();
            if(this.§@!y§.type == §^!d§.§%V§)
            {
               return _loc1_;
            }
            this.§5"[§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§@!y§.value);
         }
         while(true)
         {
            if(this.§@!y§.type == §^!d§.§=$!§)
            {
               _loc2_ = String(this.§@!y§.value);
               this.§@"c§();
               if(this.§@!y§.type == §^!d§.§&$@§)
               {
                  this.§@"c§();
                  _loc1_[_loc2_] = this.§<#2§();
                  this.§@"c§();
                  if(this.§@!y§.type == §^!d§.§%V§)
                  {
                     break;
                  }
                  if(this.§@!y§.type == §^!d§.§49§)
                  {
                     this.§@"c§();
                     if(!this.§]!$§)
                     {
                        if(this.§@!y§.type == §^!d§.§%V§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§5"[§.parseError("Expecting } or , but found " + this.§@!y§.value);
                  }
               }
               else
               {
                  this.§5"[§.parseError("Expecting : but found " + this.§@!y§.value);
               }
            }
            else
            {
               this.§5"[§.parseError("Expecting string but found " + this.§@!y§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<#2§() : Object
      {
         if(this.§@!y§ == null)
         {
            this.§5"[§.parseError("Unexpected end of input");
         }
         switch(this.§@!y§.type)
         {
            case §^!d§.§%"P§:
               return this.§<$$§();
            case §^!d§.§^!2§:
               return this.§%!x§();
            case §^!d§.§=$!§:
            case §^!d§.§ "l§:
            case §^!d§.TRUE:
            case §^!d§.FALSE:
            case §^!d§.NULL:
               return this.§@!y§.value;
            case §^!d§.§]"l§:
               if(!this.§]!$§)
               {
                  return this.§@!y§.value;
               }
               this.§5"[§.parseError("Unexpected " + this.§@!y§.value);
               break;
         }
         this.§5"[§.parseError("Unexpected " + this.§@!y§.value);
         return null;
      }
   }
}
