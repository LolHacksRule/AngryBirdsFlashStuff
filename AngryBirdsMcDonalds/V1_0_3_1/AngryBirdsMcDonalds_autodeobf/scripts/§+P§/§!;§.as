package §+P§
{
   public class §!;§
   {
       
      
      private var §7h§:Boolean;
      
      private var value;
      
      private var § !4§:§-n§;
      
      private var §6l§:§6![§;
      
      public function §!;§(param1:String, param2:Boolean)
      {
         super();
         this.§7h§ = param2;
         this.§ !4§ = new §-n§(param1,param2);
         this.§!h§();
         this.value = this.§5I§();
         if(param2 && this.§!h§() != null)
         {
            this.§ !4§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!h§() : §6![§
      {
         return this.§6l§ = this.§ !4§.§2^§();
      }
      
      private function §@!d§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!h§();
         if(this.§6l§.type == §<![§.§+x§)
         {
            return _loc1_;
         }
         if(!this.§7h§ && this.§6l§.type == §<![§.§-§)
         {
            this.§!h§();
            if(this.§6l§.type == §<![§.§+x§)
            {
               return _loc1_;
            }
            this.§ !4§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§6l§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5I§());
            this.§!h§();
            if(this.§6l§.type == §<![§.§+x§)
            {
               break;
            }
            if(this.§6l§.type == §<![§.§-§)
            {
               this.§!h§();
               if(!this.§7h§)
               {
                  if(this.§6l§.type == §<![§.§+x§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§ !4§.parseError("Expecting ] or , but found " + this.§6l§.value);
            }
         }
         return _loc1_;
      }
      
      private function §"!@§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!h§();
         if(this.§6l§.type == §<![§.§1!l§)
         {
            return _loc1_;
         }
         if(!this.§7h§ && this.§6l§.type == §<![§.§-§)
         {
            this.§!h§();
            if(this.§6l§.type == §<![§.§1!l§)
            {
               return _loc1_;
            }
            this.§ !4§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§6l§.value);
         }
         while(true)
         {
            if(this.§6l§.type == §<![§.§]&§)
            {
               _loc2_ = String(this.§6l§.value);
               this.§!h§();
               if(this.§6l§.type == §<![§.§1!E§)
               {
                  this.§!h§();
                  _loc1_[_loc2_] = this.§5I§();
                  this.§!h§();
                  if(this.§6l§.type == §<![§.§1!l§)
                  {
                     break;
                  }
                  if(this.§6l§.type == §<![§.§-§)
                  {
                     this.§!h§();
                     if(!this.§7h§)
                     {
                        if(this.§6l§.type == §<![§.§1!l§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§ !4§.parseError("Expecting } or , but found " + this.§6l§.value);
                  }
               }
               else
               {
                  this.§ !4§.parseError("Expecting : but found " + this.§6l§.value);
               }
            }
            else
            {
               this.§ !4§.parseError("Expecting string but found " + this.§6l§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5I§() : Object
      {
         if(this.§6l§ == null)
         {
            this.§ !4§.parseError("Unexpected end of input");
         }
         switch(this.§6l§.type)
         {
            case §<![§.§<!k§:
               return this.§"!@§();
            case §<![§.§[!#§:
               return this.§@!d§();
            case §<![§.§]&§:
            case §<![§.§ l§:
            case §<![§.TRUE:
            case §<![§.FALSE:
            case §<![§.NULL:
               return this.§6l§.value;
            case §<![§.§!!4§:
               if(!this.§7h§)
               {
                  return this.§6l§.value;
               }
               this.§ !4§.parseError("Unexpected " + this.§6l§.value);
               break;
         }
         this.§ !4§.parseError("Unexpected " + this.§6l§.value);
         return null;
      }
   }
}
