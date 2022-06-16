package §1#@§
{
   public class §2!j§
   {
       
      
      private var §3"E§:Boolean;
      
      private var value;
      
      private var §6!o§:§8#m§;
      
      private var §?#0§:§]!J§;
      
      public function §2!j§(param1:String, param2:Boolean)
      {
         super();
         this.§3"E§ = param2;
         this.§6!o§ = new §8#m§(param1,param2);
         this.§>$'§();
         this.value = this.§1"B§();
         if(param2 && this.§>$'§() != null)
         {
            this.§6!o§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §>$'§() : §]!J§
      {
         return this.§?#0§ = this.§6!o§.§-!j§();
      }
      
      private function §>"v§() : Array
      {
         var _loc1_:Array = new Array();
         this.§>$'§();
         if(this.§?#0§.type == §+v§.§0!B§)
         {
            return _loc1_;
         }
         if(!this.§3"E§ && this.§?#0§.type == §+v§.§[!K§)
         {
            this.§>$'§();
            if(this.§?#0§.type == §+v§.§0!B§)
            {
               return _loc1_;
            }
            this.§6!o§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§?#0§.value);
         }
         while(true)
         {
            _loc1_.push(this.§1"B§());
            this.§>$'§();
            if(this.§?#0§.type == §+v§.§0!B§)
            {
               break;
            }
            if(this.§?#0§.type == §+v§.§[!K§)
            {
               this.§>$'§();
               if(!this.§3"E§)
               {
                  if(this.§?#0§.type == §+v§.§0!B§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§6!o§.parseError("Expecting ] or , but found " + this.§?#0§.value);
            }
         }
         return _loc1_;
      }
      
      private function §@$'§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§>$'§();
         if(this.§?#0§.type == §+v§.§9!5§)
         {
            return _loc1_;
         }
         if(!this.§3"E§ && this.§?#0§.type == §+v§.§[!K§)
         {
            this.§>$'§();
            if(this.§?#0§.type == §+v§.§9!5§)
            {
               return _loc1_;
            }
            this.§6!o§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§?#0§.value);
         }
         while(true)
         {
            if(this.§?#0§.type == §+v§.§ #f§)
            {
               _loc2_ = String(this.§?#0§.value);
               this.§>$'§();
               if(this.§?#0§.type == §+v§.§2#§)
               {
                  this.§>$'§();
                  _loc1_[_loc2_] = this.§1"B§();
                  this.§>$'§();
                  if(this.§?#0§.type == §+v§.§9!5§)
                  {
                     break;
                  }
                  if(this.§?#0§.type == §+v§.§[!K§)
                  {
                     this.§>$'§();
                     if(!this.§3"E§)
                     {
                        if(this.§?#0§.type == §+v§.§9!5§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§6!o§.parseError("Expecting } or , but found " + this.§?#0§.value);
                  }
               }
               else
               {
                  this.§6!o§.parseError("Expecting : but found " + this.§?#0§.value);
               }
            }
            else
            {
               this.§6!o§.parseError("Expecting string but found " + this.§?#0§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1"B§() : Object
      {
         if(this.§?#0§ == null)
         {
            this.§6!o§.parseError("Unexpected end of input");
         }
         switch(this.§?#0§.type)
         {
            case §+v§.§?"D§:
               return this.§@$'§();
            case §+v§.§!"I§:
               return this.§>"v§();
            case §+v§.§ #f§:
            case §+v§.§7A§:
            case §+v§.TRUE:
            case §+v§.FALSE:
            case §+v§.NULL:
               return this.§?#0§.value;
            case §+v§.§6"x§:
               if(!this.§3"E§)
               {
                  return this.§?#0§.value;
               }
               this.§6!o§.parseError("Unexpected " + this.§?#0§.value);
               break;
         }
         this.§6!o§.parseError("Unexpected " + this.§?#0§.value);
         return null;
      }
   }
}
