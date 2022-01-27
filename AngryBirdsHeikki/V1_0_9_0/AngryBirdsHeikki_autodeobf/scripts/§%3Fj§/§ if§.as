package §?j§
{
   public class § if§
   {
       
      
      private var §?V§:Boolean;
      
      private var value;
      
      private var §]!d§:§6!&§;
      
      private var §"!G§:§1#§;
      
      public function § if§(param1:String, param2:Boolean)
      {
         super();
         this.§?V§ = param2;
         this.§]!d§ = new §6!&§(param1,param2);
         this.§ Z§();
         this.value = this.§>!@§();
         if(param2 && this.§ Z§() != null)
         {
            this.§]!d§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function § Z§() : §1#§
      {
         return this.§"!G§ = this.§]!d§.§3!Z§();
      }
      
      private function §>!V§() : Array
      {
         var _loc1_:Array = new Array();
         this.§ Z§();
         if(this.§"!G§.type == §0h§.§`>§)
         {
            return _loc1_;
         }
         if(!this.§?V§ && this.§"!G§.type == §0h§.§9!_§)
         {
            this.§ Z§();
            if(this.§"!G§.type == §0h§.§`>§)
            {
               return _loc1_;
            }
            this.§]!d§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§"!G§.value);
         }
         while(true)
         {
            _loc1_.push(this.§>!@§());
            this.§ Z§();
            if(this.§"!G§.type == §0h§.§`>§)
            {
               break;
            }
            if(this.§"!G§.type == §0h§.§9!_§)
            {
               this.§ Z§();
               if(!this.§?V§)
               {
                  if(this.§"!G§.type == §0h§.§`>§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]!d§.parseError("Expecting ] or , but found " + this.§"!G§.value);
            }
         }
         return _loc1_;
      }
      
      private function §7V§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§ Z§();
         if(this.§"!G§.type == §0h§.§^!K§)
         {
            return _loc1_;
         }
         if(!this.§?V§ && this.§"!G§.type == §0h§.§9!_§)
         {
            this.§ Z§();
            if(this.§"!G§.type == §0h§.§^!K§)
            {
               return _loc1_;
            }
            this.§]!d§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§"!G§.value);
         }
         while(true)
         {
            if(this.§"!G§.type == §0h§.§'!S§)
            {
               _loc2_ = String(this.§"!G§.value);
               this.§ Z§();
               if(this.§"!G§.type == §0h§.§ !P§)
               {
                  this.§ Z§();
                  _loc1_[_loc2_] = this.§>!@§();
                  this.§ Z§();
                  if(this.§"!G§.type == §0h§.§^!K§)
                  {
                     break;
                  }
                  if(this.§"!G§.type == §0h§.§9!_§)
                  {
                     this.§ Z§();
                     if(!this.§?V§)
                     {
                        if(this.§"!G§.type == §0h§.§^!K§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]!d§.parseError("Expecting } or , but found " + this.§"!G§.value);
                  }
               }
               else
               {
                  this.§]!d§.parseError("Expecting : but found " + this.§"!G§.value);
               }
            }
            else
            {
               this.§]!d§.parseError("Expecting string but found " + this.§"!G§.value);
            }
         }
         return _loc1_;
      }
      
      private function §>!@§() : Object
      {
         if(this.§"!G§ == null)
         {
            this.§]!d§.parseError("Unexpected end of input");
         }
         switch(this.§"!G§.type)
         {
            case §0h§.§-A§:
               return this.§7V§();
            case §0h§.§>!1§:
               return this.§>!V§();
            case §0h§.§'!S§:
            case §0h§.§%!9§:
            case §0h§.TRUE:
            case §0h§.FALSE:
            case §0h§.§[x§:
               return this.§"!G§.value;
            case §0h§.§8!§:
               if(!this.§?V§)
               {
                  return this.§"!G§.value;
               }
               this.§]!d§.parseError("Unexpected " + this.§"!G§.value);
               break;
         }
         this.§]!d§.parseError("Unexpected " + this.§"!G§.value);
         return null;
      }
   }
}
