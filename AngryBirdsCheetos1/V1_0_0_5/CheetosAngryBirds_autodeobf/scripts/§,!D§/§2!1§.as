package §,!D§
{
   public class §2!1§
   {
       
      
      private var §3!U§:Boolean;
      
      private var value;
      
      private var §+C§:§<E§;
      
      private var §'9§:§8! §;
      
      public function §2!1§(param1:String, param2:Boolean)
      {
         super();
         this.§3!U§ = param2;
         this.§+C§ = new §<E§(param1,param2);
         this.§@!9§();
         this.value = this.§-L§();
         if(param2 && this.§@!9§() != null)
         {
            this.§+C§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §@!9§() : §8! §
      {
         return this.§'9§ = this.§+C§.§ w§();
      }
      
      private function §8!A§() : Array
      {
         var _loc1_:Array = new Array();
         this.§@!9§();
         if(this.§'9§.type == §@!5§.§!!T§)
         {
            return _loc1_;
         }
         if(!this.§3!U§ && this.§'9§.type == §@!5§.§2D§)
         {
            this.§@!9§();
            if(this.§'9§.type == §@!5§.§!!T§)
            {
               return _loc1_;
            }
            this.§+C§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§'9§.value);
         }
         while(true)
         {
            _loc1_.push(this.§-L§());
            this.§@!9§();
            if(this.§'9§.type == §@!5§.§!!T§)
            {
               break;
            }
            if(this.§'9§.type == §@!5§.§2D§)
            {
               this.§@!9§();
               if(!this.§3!U§)
               {
                  if(this.§'9§.type == §@!5§.§!!T§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§+C§.parseError("Expecting ] or , but found " + this.§'9§.value);
            }
         }
         return _loc1_;
      }
      
      private function §=!I§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§@!9§();
         if(this.§'9§.type == §@!5§.§;#§)
         {
            return _loc1_;
         }
         if(!this.§3!U§ && this.§'9§.type == §@!5§.§2D§)
         {
            this.§@!9§();
            if(this.§'9§.type == §@!5§.§;#§)
            {
               return _loc1_;
            }
            this.§+C§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§'9§.value);
         }
         while(true)
         {
            if(this.§'9§.type == §@!5§.§#M§)
            {
               _loc2_ = String(this.§'9§.value);
               this.§@!9§();
               if(this.§'9§.type == §@!5§.§3b§)
               {
                  this.§@!9§();
                  _loc1_[_loc2_] = this.§-L§();
                  this.§@!9§();
                  if(this.§'9§.type == §@!5§.§;#§)
                  {
                     break;
                  }
                  if(this.§'9§.type == §@!5§.§2D§)
                  {
                     this.§@!9§();
                     if(!this.§3!U§)
                     {
                        if(this.§'9§.type == §@!5§.§;#§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§+C§.parseError("Expecting } or , but found " + this.§'9§.value);
                  }
               }
               else
               {
                  this.§+C§.parseError("Expecting : but found " + this.§'9§.value);
               }
            }
            else
            {
               this.§+C§.parseError("Expecting string but found " + this.§'9§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-L§() : Object
      {
         if(this.§'9§ == null)
         {
            this.§+C§.parseError("Unexpected end of input");
         }
         switch(this.§'9§.type)
         {
            case §@!5§.§%9§:
               return this.§=!I§();
            case §@!5§.§]!B§:
               return this.§8!A§();
            case §@!5§.§#M§:
            case §@!5§.§8!!§:
            case §@!5§.TRUE:
            case §@!5§.FALSE:
            case §@!5§.§-!-§:
               return this.§'9§.value;
            case §@!5§.§;!,§:
               if(!this.§3!U§)
               {
                  return this.§'9§.value;
               }
               this.§+C§.parseError("Unexpected " + this.§'9§.value);
               break;
         }
         this.§+C§.parseError("Unexpected " + this.§'9§.value);
         return null;
      }
   }
}
