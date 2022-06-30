package §!!7§
{
   public class §%9§
   {
       
      
      private var §`!=§:Boolean;
      
      private var value;
      
      private var § !?§:§`!a§;
      
      private var § !D§:§"K§;
      
      public function §%9§(param1:String, param2:Boolean)
      {
         super();
         this.§`!=§ = param2;
         this.§ !?§ = new §`!a§(param1,param2);
         this.§6!L§();
         this.value = this.§2z§();
         if(param2 && this.§6!L§() != null)
         {
            this.§ !?§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §6!L§() : §"K§
      {
         return this.§ !D§ = this.§ !?§.§3h§();
      }
      
      private function §%!4§() : Array
      {
         var _loc1_:Array = new Array();
         this.§6!L§();
         if(this.§ !D§.type == §7H§.§"!<§)
         {
            return _loc1_;
         }
         if(!this.§`!=§ && this.§ !D§.type == §7H§.§=T§)
         {
            this.§6!L§();
            if(this.§ !D§.type == §7H§.§"!<§)
            {
               return _loc1_;
            }
            this.§ !?§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ !D§.value);
         }
         while(true)
         {
            _loc1_.push(this.§2z§());
            this.§6!L§();
            if(this.§ !D§.type == §7H§.§"!<§)
            {
               break;
            }
            if(this.§ !D§.type == §7H§.§=T§)
            {
               this.§6!L§();
               if(!this.§`!=§)
               {
                  if(this.§ !D§.type == §7H§.§"!<§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§ !?§.parseError("Expecting ] or , but found " + this.§ !D§.value);
            }
         }
         return _loc1_;
      }
      
      private function §^!D§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§6!L§();
         if(this.§ !D§.type == §7H§.§5!%§)
         {
            return _loc1_;
         }
         if(!this.§`!=§ && this.§ !D§.type == §7H§.§=T§)
         {
            this.§6!L§();
            if(this.§ !D§.type == §7H§.§5!%§)
            {
               return _loc1_;
            }
            this.§ !?§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ !D§.value);
         }
         while(true)
         {
            if(this.§ !D§.type == §7H§.§3M§)
            {
               _loc2_ = String(this.§ !D§.value);
               this.§6!L§();
               if(this.§ !D§.type == §7H§.§-H§)
               {
                  this.§6!L§();
                  _loc1_[_loc2_] = this.§2z§();
                  this.§6!L§();
                  if(this.§ !D§.type == §7H§.§5!%§)
                  {
                     break;
                  }
                  if(this.§ !D§.type == §7H§.§=T§)
                  {
                     this.§6!L§();
                     if(!this.§`!=§)
                     {
                        if(this.§ !D§.type == §7H§.§5!%§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§ !?§.parseError("Expecting } or , but found " + this.§ !D§.value);
                  }
               }
               else
               {
                  this.§ !?§.parseError("Expecting : but found " + this.§ !D§.value);
               }
            }
            else
            {
               this.§ !?§.parseError("Expecting string but found " + this.§ !D§.value);
            }
         }
         return _loc1_;
      }
      
      private function §2z§() : Object
      {
         if(this.§ !D§ == null)
         {
            this.§ !?§.parseError("Unexpected end of input");
         }
         switch(this.§ !D§.type)
         {
            case §7H§.§2s§:
               return this.§^!D§();
            case §7H§.§!u§:
               return this.§%!4§();
            case §7H§.§3M§:
            case §7H§.§&!V§:
            case §7H§.TRUE:
            case §7H§.FALSE:
            case §7H§.§#!S§:
               return this.§ !D§.value;
            case §7H§.§1s§:
               if(!this.§`!=§)
               {
                  return this.§ !D§.value;
               }
               this.§ !?§.parseError("Unexpected " + this.§ !D§.value);
               break;
         }
         this.§ !?§.parseError("Unexpected " + this.§ !D§.value);
         return null;
      }
   }
}
