package §@F§
{
   public class §@!9§
   {
       
      
      private var §%!]§:Boolean;
      
      private var value;
      
      private var §]!H§:§'!@§;
      
      private var §7u§:§=!1§;
      
      public function §@!9§(param1:String, param2:Boolean)
      {
         super();
         this.§%!]§ = param2;
         this.§]!H§ = new §'!@§(param1,param2);
         this.§[U§();
         this.value = this.§<M§();
         if(param2 && this.§[U§() != null)
         {
            this.§]!H§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §[U§() : §=!1§
      {
         return this.§7u§ = this.§]!H§.§8J§();
      }
      
      private function §>D§() : Array
      {
         var _loc1_:Array = new Array();
         this.§[U§();
         if(this.§7u§.type == §4!?§.§1!'§)
         {
            return _loc1_;
         }
         if(!this.§%!]§ && this.§7u§.type == §4!?§.§?!Z§)
         {
            this.§[U§();
            if(this.§7u§.type == §4!?§.§1!'§)
            {
               return _loc1_;
            }
            this.§]!H§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§7u§.value);
         }
         while(true)
         {
            _loc1_.push(this.§<M§());
            this.§[U§();
            if(this.§7u§.type == §4!?§.§1!'§)
            {
               break;
            }
            if(this.§7u§.type == §4!?§.§?!Z§)
            {
               this.§[U§();
               if(!this.§%!]§)
               {
                  if(this.§7u§.type == §4!?§.§1!'§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]!H§.parseError("Expecting ] or , but found " + this.§7u§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3!3§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§[U§();
         if(this.§7u§.type == §4!?§.§6!`§)
         {
            return _loc1_;
         }
         if(!this.§%!]§ && this.§7u§.type == §4!?§.§?!Z§)
         {
            this.§[U§();
            if(this.§7u§.type == §4!?§.§6!`§)
            {
               return _loc1_;
            }
            this.§]!H§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§7u§.value);
         }
         while(true)
         {
            if(this.§7u§.type == §4!?§.§]!V§)
            {
               _loc2_ = String(this.§7u§.value);
               this.§[U§();
               if(this.§7u§.type == §4!?§.§6!R§)
               {
                  this.§[U§();
                  _loc1_[_loc2_] = this.§<M§();
                  this.§[U§();
                  if(this.§7u§.type == §4!?§.§6!`§)
                  {
                     break;
                  }
                  if(this.§7u§.type == §4!?§.§?!Z§)
                  {
                     this.§[U§();
                     if(!this.§%!]§)
                     {
                        if(this.§7u§.type == §4!?§.§6!`§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]!H§.parseError("Expecting } or , but found " + this.§7u§.value);
                  }
               }
               else
               {
                  this.§]!H§.parseError("Expecting : but found " + this.§7u§.value);
               }
            }
            else
            {
               this.§]!H§.parseError("Expecting string but found " + this.§7u§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<M§() : Object
      {
         if(this.§7u§ == null)
         {
            this.§]!H§.parseError("Unexpected end of input");
         }
         switch(this.§7u§.type)
         {
            case §4!?§.§ !M§:
               return this.§3!3§();
            case §4!?§.§&!>§:
               return this.§>D§();
            case §4!?§.§]!V§:
            case §4!?§.§5!0§:
            case §4!?§.TRUE:
            case §4!?§.FALSE:
            case §4!?§.§[!?§:
               return this.§7u§.value;
            case §4!?§.§%!K§:
               if(!this.§%!]§)
               {
                  return this.§7u§.value;
               }
               this.§]!H§.parseError("Unexpected " + this.§7u§.value);
               break;
         }
         this.§]!H§.parseError("Unexpected " + this.§7u§.value);
         return null;
      }
   }
}
