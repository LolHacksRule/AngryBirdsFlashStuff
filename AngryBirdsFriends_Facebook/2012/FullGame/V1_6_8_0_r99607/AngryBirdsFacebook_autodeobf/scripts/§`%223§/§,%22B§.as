package §`"3§
{
   public class §,"B§
   {
       
      
      private var §`!b§:Boolean;
      
      private var value;
      
      private var §!3§:§#!,§;
      
      private var §0!h§:§&e§;
      
      public function §,"B§(param1:String, param2:Boolean)
      {
         super();
         this.§`!b§ = param2;
         this.§!3§ = new §#!,§(param1,param2);
         this.§%8§();
         this.value = this.§-!?§();
         if(param2 && this.§%8§() != null)
         {
            this.§!3§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%8§() : §&e§
      {
         return this.§0!h§ = this.§!3§.§]-§();
      }
      
      private function §?f§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%8§();
         if(this.§0!h§.type == §<!B§.§;O§)
         {
            return _loc1_;
         }
         if(!this.§`!b§ && this.§0!h§.type == §<!B§.§0"!§)
         {
            this.§%8§();
            if(this.§0!h§.type == §<!B§.§;O§)
            {
               return _loc1_;
            }
            this.§!3§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§0!h§.value);
         }
         while(true)
         {
            _loc1_.push(this.§-!?§());
            this.§%8§();
            if(this.§0!h§.type == §<!B§.§;O§)
            {
               break;
            }
            if(this.§0!h§.type == §<!B§.§0"!§)
            {
               this.§%8§();
               if(!this.§`!b§)
               {
                  if(this.§0!h§.type == §<!B§.§;O§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§!3§.parseError("Expecting ] or , but found " + this.§0!h§.value);
            }
         }
         return _loc1_;
      }
      
      private function §8p§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%8§();
         if(this.§0!h§.type == §<!B§.§[%§)
         {
            return _loc1_;
         }
         if(!this.§`!b§ && this.§0!h§.type == §<!B§.§0"!§)
         {
            this.§%8§();
            if(this.§0!h§.type == §<!B§.§[%§)
            {
               return _loc1_;
            }
            this.§!3§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§0!h§.value);
         }
         while(true)
         {
            if(this.§0!h§.type == §<!B§.§0L§)
            {
               _loc2_ = String(this.§0!h§.value);
               this.§%8§();
               if(this.§0!h§.type == §<!B§.§7!d§)
               {
                  this.§%8§();
                  _loc1_[_loc2_] = this.§-!?§();
                  this.§%8§();
                  if(this.§0!h§.type == §<!B§.§[%§)
                  {
                     break;
                  }
                  if(this.§0!h§.type == §<!B§.§0"!§)
                  {
                     this.§%8§();
                     if(!this.§`!b§)
                     {
                        if(this.§0!h§.type == §<!B§.§[%§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§!3§.parseError("Expecting } or , but found " + this.§0!h§.value);
                  }
               }
               else
               {
                  this.§!3§.parseError("Expecting : but found " + this.§0!h§.value);
               }
            }
            else
            {
               this.§!3§.parseError("Expecting string but found " + this.§0!h§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-!?§() : Object
      {
         if(this.§0!h§ == null)
         {
            this.§!3§.parseError("Unexpected end of input");
         }
         switch(this.§0!h§.type)
         {
            case §<!B§.§7!`§:
               return this.§8p§();
            case §<!B§.§%S§:
               return this.§?f§();
            case §<!B§.§0L§:
            case §<!B§.§+v§:
            case §<!B§.TRUE:
            case §<!B§.FALSE:
            case §<!B§.NULL:
               return this.§0!h§.value;
            case §<!B§.§ "9§:
               if(!this.§`!b§)
               {
                  return this.§0!h§.value;
               }
               this.§!3§.parseError("Unexpected " + this.§0!h§.value);
               break;
         }
         this.§!3§.parseError("Unexpected " + this.§0!h§.value);
         return null;
      }
   }
}
