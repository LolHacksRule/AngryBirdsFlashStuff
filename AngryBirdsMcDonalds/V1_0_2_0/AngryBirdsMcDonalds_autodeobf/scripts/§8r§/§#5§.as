package §8r§
{
   public class §#5§
   {
       
      
      private var §!u§:Boolean;
      
      private var value;
      
      private var §5!M§:§`o§;
      
      private var §"Z§:§4R§;
      
      public function §#5§(param1:String, param2:Boolean)
      {
         super();
         this.§!u§ = param2;
         this.§5!M§ = new §`o§(param1,param2);
         this.§=r§();
         this.value = this.§9!g§();
         if(param2 && this.§=r§() != null)
         {
            this.§5!M§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §=r§() : §4R§
      {
         return this.§"Z§ = this.§5!M§.§#!e§();
      }
      
      private function §4E§() : Array
      {
         var _loc1_:Array = new Array();
         this.§=r§();
         if(this.§"Z§.type == §<! §.§'H§)
         {
            return _loc1_;
         }
         if(!this.§!u§ && this.§"Z§.type == §<! §.§-y§)
         {
            this.§=r§();
            if(this.§"Z§.type == §<! §.§'H§)
            {
               return _loc1_;
            }
            this.§5!M§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§"Z§.value);
         }
         while(true)
         {
            _loc1_.push(this.§9!g§());
            this.§=r§();
            if(this.§"Z§.type == §<! §.§'H§)
            {
               break;
            }
            if(this.§"Z§.type == §<! §.§-y§)
            {
               this.§=r§();
               if(!this.§!u§)
               {
                  if(this.§"Z§.type == §<! §.§'H§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§5!M§.parseError("Expecting ] or , but found " + this.§"Z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §7!^§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§=r§();
         if(this.§"Z§.type == §<! §.§`!1§)
         {
            return _loc1_;
         }
         if(!this.§!u§ && this.§"Z§.type == §<! §.§-y§)
         {
            this.§=r§();
            if(this.§"Z§.type == §<! §.§`!1§)
            {
               return _loc1_;
            }
            this.§5!M§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§"Z§.value);
         }
         while(true)
         {
            if(this.§"Z§.type == §<! §.§&=§)
            {
               _loc2_ = String(this.§"Z§.value);
               this.§=r§();
               if(this.§"Z§.type == §<! §.§^!<§)
               {
                  this.§=r§();
                  _loc1_[_loc2_] = this.§9!g§();
                  this.§=r§();
                  if(this.§"Z§.type == §<! §.§`!1§)
                  {
                     break;
                  }
                  if(this.§"Z§.type == §<! §.§-y§)
                  {
                     this.§=r§();
                     if(!this.§!u§)
                     {
                        if(this.§"Z§.type == §<! §.§`!1§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§5!M§.parseError("Expecting } or , but found " + this.§"Z§.value);
                  }
               }
               else
               {
                  this.§5!M§.parseError("Expecting : but found " + this.§"Z§.value);
               }
            }
            else
            {
               this.§5!M§.parseError("Expecting string but found " + this.§"Z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §9!g§() : Object
      {
         if(this.§"Z§ == null)
         {
            this.§5!M§.parseError("Unexpected end of input");
         }
         switch(this.§"Z§.type)
         {
            case §<! §.§,!?§:
               return this.§7!^§();
            case §<! §.§]-§:
               return this.§4E§();
            case §<! §.§&=§:
            case §<! §.§ !`§:
            case §<! §.TRUE:
            case §<! §.FALSE:
            case §<! §.NULL:
               return this.§"Z§.value;
            case §<! §.§-!H§:
               if(!this.§!u§)
               {
                  return this.§"Z§.value;
               }
               this.§5!M§.parseError("Unexpected " + this.§"Z§.value);
               break;
         }
         this.§5!M§.parseError("Unexpected " + this.§"Z§.value);
         return null;
      }
   }
}
