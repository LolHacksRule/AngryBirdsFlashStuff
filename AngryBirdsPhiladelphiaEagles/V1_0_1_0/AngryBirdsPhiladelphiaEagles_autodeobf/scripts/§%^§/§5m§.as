package §%^§
{
   public class §5m§
   {
       
      
      private var §^!0§:Boolean;
      
      private var value;
      
      private var §,!H§:§8!C§;
      
      private var §#b§:§7m§;
      
      public function §5m§(param1:String, param2:Boolean)
      {
         super();
         this.§^!0§ = param2;
         this.§,!H§ = new §8!C§(param1,param2);
         this.§`!M§();
         this.value = this.§;T§();
         if(param2 && this.§`!M§() != null)
         {
            this.§,!H§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §`!M§() : §7m§
      {
         return this.§#b§ = this.§,!H§.§^[§();
      }
      
      private function §7?§() : Array
      {
         var _loc1_:Array = new Array();
         this.§`!M§();
         if(this.§#b§.type == §=!#§.§^c§)
         {
            return _loc1_;
         }
         if(!this.§^!0§ && this.§#b§.type == §=!#§.§"P§)
         {
            this.§`!M§();
            if(this.§#b§.type == §=!#§.§^c§)
            {
               return _loc1_;
            }
            this.§,!H§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§#b§.value);
         }
         while(true)
         {
            _loc1_.push(this.§;T§());
            this.§`!M§();
            if(this.§#b§.type == §=!#§.§^c§)
            {
               break;
            }
            if(this.§#b§.type == §=!#§.§"P§)
            {
               this.§`!M§();
               if(!this.§^!0§)
               {
                  if(this.§#b§.type == §=!#§.§^c§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,!H§.parseError("Expecting ] or , but found " + this.§#b§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<!=§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§`!M§();
         if(this.§#b§.type == §=!#§.§8q§)
         {
            return _loc1_;
         }
         if(!this.§^!0§ && this.§#b§.type == §=!#§.§"P§)
         {
            this.§`!M§();
            if(this.§#b§.type == §=!#§.§8q§)
            {
               return _loc1_;
            }
            this.§,!H§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§#b§.value);
         }
         while(true)
         {
            if(this.§#b§.type == §=!#§.§#7§)
            {
               _loc2_ = String(this.§#b§.value);
               this.§`!M§();
               if(this.§#b§.type == §=!#§.§-;§)
               {
                  this.§`!M§();
                  _loc1_[_loc2_] = this.§;T§();
                  this.§`!M§();
                  if(this.§#b§.type == §=!#§.§8q§)
                  {
                     break;
                  }
                  if(this.§#b§.type == §=!#§.§"P§)
                  {
                     this.§`!M§();
                     if(!this.§^!0§)
                     {
                        if(this.§#b§.type == §=!#§.§8q§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,!H§.parseError("Expecting } or , but found " + this.§#b§.value);
                  }
               }
               else
               {
                  this.§,!H§.parseError("Expecting : but found " + this.§#b§.value);
               }
            }
            else
            {
               this.§,!H§.parseError("Expecting string but found " + this.§#b§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;T§() : Object
      {
         if(this.§#b§ == null)
         {
            this.§,!H§.parseError("Unexpected end of input");
         }
         switch(this.§#b§.type)
         {
            case §=!#§.§]!K§:
               return this.§<!=§();
            case §=!#§.§5f§:
               return this.§7?§();
            case §=!#§.§#7§:
            case §=!#§.§7!6§:
            case §=!#§.TRUE:
            case §=!#§.FALSE:
            case §=!#§.NULL:
               return this.§#b§.value;
            case §=!#§.§'=§:
               if(!this.§^!0§)
               {
                  return this.§#b§.value;
               }
               this.§,!H§.parseError("Unexpected " + this.§#b§.value);
               break;
         }
         this.§,!H§.parseError("Unexpected " + this.§#b§.value);
         return null;
      }
   }
}
