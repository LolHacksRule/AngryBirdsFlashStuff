package §#G§
{
   public class §8"1§
   {
       
      
      private var §1T§:Boolean;
      
      private var value;
      
      private var §#!0§:§`"$§;
      
      private var §-O§:§#e§;
      
      public function §8"1§(param1:String, param2:Boolean)
      {
         super();
         this.§1T§ = param2;
         this.§#!0§ = new §`"$§(param1,param2);
         this.§]n§();
         this.value = this.§3i§();
         if(param2 && this.§]n§() != null)
         {
            this.§#!0§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §]n§() : §#e§
      {
         return this.§-O§ = this.§#!0§.§@g§();
      }
      
      private function §7!M§() : Array
      {
         var _loc1_:Array = new Array();
         this.§]n§();
         if(this.§-O§.type == §@!e§.§<"§)
         {
            return _loc1_;
         }
         if(!this.§1T§ && this.§-O§.type == §@!e§.§3e§)
         {
            this.§]n§();
            if(this.§-O§.type == §@!e§.§<"§)
            {
               return _loc1_;
            }
            this.§#!0§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§-O§.value);
         }
         while(true)
         {
            _loc1_.push(this.§3i§());
            this.§]n§();
            if(this.§-O§.type == §@!e§.§<"§)
            {
               break;
            }
            if(this.§-O§.type == §@!e§.§3e§)
            {
               this.§]n§();
               if(!this.§1T§)
               {
                  if(this.§-O§.type == §@!e§.§<"§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§#!0§.parseError("Expecting ] or , but found " + this.§-O§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§]n§();
         if(this.§-O§.type == §@!e§.§>",§)
         {
            return _loc1_;
         }
         if(!this.§1T§ && this.§-O§.type == §@!e§.§3e§)
         {
            this.§]n§();
            if(this.§-O§.type == §@!e§.§>",§)
            {
               return _loc1_;
            }
            this.§#!0§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§-O§.value);
         }
         while(true)
         {
            if(this.§-O§.type == §@!e§.§?![§)
            {
               _loc2_ = String(this.§-O§.value);
               this.§]n§();
               if(this.§-O§.type == §@!e§.§=!k§)
               {
                  this.§]n§();
                  _loc1_[_loc2_] = this.§3i§();
                  this.§]n§();
                  if(this.§-O§.type == §@!e§.§>",§)
                  {
                     break;
                  }
                  if(this.§-O§.type == §@!e§.§3e§)
                  {
                     this.§]n§();
                     if(!this.§1T§)
                     {
                        if(this.§-O§.type == §@!e§.§>",§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§#!0§.parseError("Expecting } or , but found " + this.§-O§.value);
                  }
               }
               else
               {
                  this.§#!0§.parseError("Expecting : but found " + this.§-O§.value);
               }
            }
            else
            {
               this.§#!0§.parseError("Expecting string but found " + this.§-O§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3i§() : Object
      {
         if(this.§-O§ == null)
         {
            this.§#!0§.parseError("Unexpected end of input");
         }
         switch(this.§-O§.type)
         {
            case §@!e§.§3!a§:
               return this.parseObject();
            case §@!e§.§,j§:
               return this.§7!M§();
            case §@!e§.§?![§:
            case §@!e§.§@!l§:
            case §@!e§.TRUE:
            case §@!e§.FALSE:
            case §@!e§.NULL:
               return this.§-O§.value;
            case §@!e§.§%!l§:
               if(!this.§1T§)
               {
                  return this.§-O§.value;
               }
               this.§#!0§.parseError("Unexpected " + this.§-O§.value);
               break;
         }
         this.§#!0§.parseError("Unexpected " + this.§-O§.value);
         return null;
      }
   }
}
