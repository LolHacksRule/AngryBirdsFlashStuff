package §?!G§
{
   public class JSONDecoder
   {
       
      
      private var §+c§:Boolean;
      
      private var value;
      
      private var §"y§:§@;§;
      
      private var § !K§:§[!X§;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         super();
         this.§+c§ = param2;
         this.§"y§ = new §@;§(param1,param2);
         this.§9E§();
         this.value = this.§-![§();
         if(param2 && this.§9E§() != null)
         {
            this.§"y§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9E§() : §[!X§
      {
         return this.§ !K§ = this.§"y§.§`!A§();
      }
      
      private function §[l§() : Array
      {
         var _loc1_:Array = new Array();
         this.§9E§();
         if(this.§ !K§.type == §0H§.§!@§)
         {
            return _loc1_;
         }
         if(!this.§+c§ && this.§ !K§.type == §0H§.§;!^§)
         {
            this.§9E§();
            if(this.§ !K§.type == §0H§.§!@§)
            {
               return _loc1_;
            }
            this.§"y§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ !K§.value);
         }
         while(true)
         {
            _loc1_.push(this.§-![§());
            this.§9E§();
            if(this.§ !K§.type == §0H§.§!@§)
            {
               break;
            }
            if(this.§ !K§.type == §0H§.§;!^§)
            {
               this.§9E§();
               if(!this.§+c§)
               {
                  if(this.§ !K§.type == §0H§.§!@§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§"y§.parseError("Expecting ] or , but found " + this.§ !K§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§9E§();
         if(this.§ !K§.type == §0H§.§7§)
         {
            return _loc1_;
         }
         if(!this.§+c§ && this.§ !K§.type == §0H§.§;!^§)
         {
            this.§9E§();
            if(this.§ !K§.type == §0H§.§7§)
            {
               return _loc1_;
            }
            this.§"y§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ !K§.value);
         }
         while(true)
         {
            if(this.§ !K§.type == §0H§.§'!,§)
            {
               _loc2_ = String(this.§ !K§.value);
               this.§9E§();
               if(this.§ !K§.type == §0H§.§ !2§)
               {
                  this.§9E§();
                  _loc1_[_loc2_] = this.§-![§();
                  this.§9E§();
                  if(this.§ !K§.type == §0H§.§7§)
                  {
                     break;
                  }
                  if(this.§ !K§.type == §0H§.§;!^§)
                  {
                     this.§9E§();
                     if(!this.§+c§)
                     {
                        if(this.§ !K§.type == §0H§.§7§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§"y§.parseError("Expecting } or , but found " + this.§ !K§.value);
                  }
               }
               else
               {
                  this.§"y§.parseError("Expecting : but found " + this.§ !K§.value);
               }
            }
            else
            {
               this.§"y§.parseError("Expecting string but found " + this.§ !K§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-![§() : Object
      {
         if(this.§ !K§ == null)
         {
            this.§"y§.parseError("Unexpected end of input");
         }
         switch(this.§ !K§.type)
         {
            case §0H§.§"0§:
               return this.parseObject();
            case §0H§.§9D§:
               return this.§[l§();
            case §0H§.§'!,§:
            case §0H§.§>!T§:
            case §0H§.TRUE:
            case §0H§.FALSE:
            case §0H§.NULL:
               return this.§ !K§.value;
            case §0H§.§'!6§:
               if(!this.§+c§)
               {
                  return this.§ !K§.value;
               }
               this.§"y§.parseError("Unexpected " + this.§ !K§.value);
               break;
         }
         this.§"y§.parseError("Unexpected " + this.§ !K§.value);
         return null;
      }
   }
}
