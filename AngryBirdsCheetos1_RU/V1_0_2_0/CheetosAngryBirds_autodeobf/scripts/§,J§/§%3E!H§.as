package §,J§
{
   public class §>!H§
   {
       
      
      private var §+!@§:Boolean;
      
      private var value;
      
      private var §6f§:§#?§;
      
      private var §<3§:§8!@§;
      
      public function §>!H§(param1:String, param2:Boolean)
      {
         super();
         this.§+!@§ = param2;
         this.§6f§ = new §#?§(param1,param2);
         this.§7!P§();
         this.value = this.§2#§();
         if(param2 && this.§7!P§() != null)
         {
            this.§6f§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §7!P§() : §8!@§
      {
         return this.§<3§ = this.§6f§.§&]§();
      }
      
      private function §9!R§() : Array
      {
         var _loc1_:Array = new Array();
         this.§7!P§();
         if(this.§<3§.type == §^!]§.§>!;§)
         {
            return _loc1_;
         }
         if(!this.§+!@§ && this.§<3§.type == §^!]§.§^!6§)
         {
            this.§7!P§();
            if(this.§<3§.type == §^!]§.§>!;§)
            {
               return _loc1_;
            }
            this.§6f§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§<3§.value);
         }
         while(true)
         {
            _loc1_.push(this.§2#§());
            this.§7!P§();
            if(this.§<3§.type == §^!]§.§>!;§)
            {
               break;
            }
            if(this.§<3§.type == §^!]§.§^!6§)
            {
               this.§7!P§();
               if(!this.§+!@§)
               {
                  if(this.§<3§.type == §^!]§.§>!;§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§6f§.parseError("Expecting ] or , but found " + this.§<3§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3d§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§7!P§();
         if(this.§<3§.type == §^!]§.§"!`§)
         {
            return _loc1_;
         }
         if(!this.§+!@§ && this.§<3§.type == §^!]§.§^!6§)
         {
            this.§7!P§();
            if(this.§<3§.type == §^!]§.§"!`§)
            {
               return _loc1_;
            }
            this.§6f§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§<3§.value);
         }
         while(true)
         {
            if(this.§<3§.type == §^!]§.§'!S§)
            {
               _loc2_ = String(this.§<3§.value);
               this.§7!P§();
               if(this.§<3§.type == §^!]§.§1!7§)
               {
                  this.§7!P§();
                  _loc1_[_loc2_] = this.§2#§();
                  this.§7!P§();
                  if(this.§<3§.type == §^!]§.§"!`§)
                  {
                     break;
                  }
                  if(this.§<3§.type == §^!]§.§^!6§)
                  {
                     this.§7!P§();
                     if(!this.§+!@§)
                     {
                        if(this.§<3§.type == §^!]§.§"!`§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§6f§.parseError("Expecting } or , but found " + this.§<3§.value);
                  }
               }
               else
               {
                  this.§6f§.parseError("Expecting : but found " + this.§<3§.value);
               }
            }
            else
            {
               this.§6f§.parseError("Expecting string but found " + this.§<3§.value);
            }
         }
         return _loc1_;
      }
      
      private function §2#§() : Object
      {
         if(this.§<3§ == null)
         {
            this.§6f§.parseError("Unexpected end of input");
         }
         switch(this.§<3§.type)
         {
            case §^!]§.§0k§:
               return this.§3d§();
            case §^!]§.§+!Y§:
               return this.§9!R§();
            case §^!]§.§'!S§:
            case §^!]§.§6!$§:
            case §^!]§.TRUE:
            case §^!]§.FALSE:
            case §^!]§.§#!J§:
               return this.§<3§.value;
            case §^!]§.§7]§:
               if(!this.§+!@§)
               {
                  return this.§<3§.value;
               }
               this.§6f§.parseError("Unexpected " + this.§<3§.value);
               break;
         }
         this.§6f§.parseError("Unexpected " + this.§<3§.value);
         return null;
      }
   }
}
