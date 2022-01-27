package
{
   public class § !,§
   {
       
      
      private var §#l§:Boolean;
      
      private var value;
      
      private var §'!6§:§`!N§;
      
      private var §[!N§:§%J§;
      
      public function § !,§(param1:String, param2:Boolean)
      {
         super();
         this.§#l§ = param2;
         this.§'!6§ = new §`!N§(param1,param2);
         this.§?S§();
         this.value = this.§4%§();
         if(param2 && this.§?S§() != null)
         {
            this.§'!6§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §?S§() : §%J§
      {
         return this.§[!N§ = this.§'!6§.§+!=§();
      }
      
      private function §9!'§() : Array
      {
         var _loc1_:Array = new Array();
         this.§?S§();
         if(this.§[!N§.type == §1L§.§;q§)
         {
            return _loc1_;
         }
         if(!this.§#l§ && this.§[!N§.type == §1L§.§"Z§)
         {
            this.§?S§();
            if(this.§[!N§.type == §1L§.§;q§)
            {
               return _loc1_;
            }
            this.§'!6§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§[!N§.value);
         }
         while(true)
         {
            _loc1_.push(this.§4%§());
            this.§?S§();
            if(this.§[!N§.type == §1L§.§;q§)
            {
               break;
            }
            if(this.§[!N§.type == §1L§.§"Z§)
            {
               this.§?S§();
               if(!this.§#l§)
               {
                  if(this.§[!N§.type == §1L§.§;q§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§'!6§.parseError("Expecting ] or , but found " + this.§[!N§.value);
            }
         }
         return _loc1_;
      }
      
      private function §^!-§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§?S§();
         if(this.§[!N§.type == §1L§.§7!-§)
         {
            return _loc1_;
         }
         if(!this.§#l§ && this.§[!N§.type == §1L§.§"Z§)
         {
            this.§?S§();
            if(this.§[!N§.type == §1L§.§7!-§)
            {
               return _loc1_;
            }
            this.§'!6§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§[!N§.value);
         }
         while(true)
         {
            if(this.§[!N§.type == §1L§.§<!A§)
            {
               _loc2_ = String(this.§[!N§.value);
               this.§?S§();
               if(this.§[!N§.type == §1L§.§^!O§)
               {
                  this.§?S§();
                  _loc1_[_loc2_] = this.§4%§();
                  this.§?S§();
                  if(this.§[!N§.type == §1L§.§7!-§)
                  {
                     break;
                  }
                  if(this.§[!N§.type == §1L§.§"Z§)
                  {
                     this.§?S§();
                     if(!this.§#l§)
                     {
                        if(this.§[!N§.type == §1L§.§7!-§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§'!6§.parseError("Expecting } or , but found " + this.§[!N§.value);
                  }
               }
               else
               {
                  this.§'!6§.parseError("Expecting : but found " + this.§[!N§.value);
               }
            }
            else
            {
               this.§'!6§.parseError("Expecting string but found " + this.§[!N§.value);
            }
         }
         return _loc1_;
      }
      
      private function §4%§() : Object
      {
         if(this.§[!N§ == null)
         {
            this.§'!6§.parseError("Unexpected end of input");
         }
         switch(this.§[!N§.type)
         {
            case §1L§.§0!P§:
               return this.§^!-§();
            case §1L§.§5!>§:
               return this.§9!'§();
            case §1L§.§<!A§:
            case §1L§.§#$§:
            case §1L§.TRUE:
            case §1L§.FALSE:
            case §1L§.NULL:
               return this.§[!N§.value;
            case §1L§.§<F§:
               if(!this.§#l§)
               {
                  return this.§[!N§.value;
               }
               this.§'!6§.parseError("Unexpected " + this.§[!N§.value);
               break;
         }
         this.§'!6§.parseError("Unexpected " + this.§[!N§.value);
         return null;
      }
   }
}
