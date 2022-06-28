package §@!Z§
{
   public class §5V§
   {
       
      
      private var §!c§:Boolean;
      
      private var value;
      
      private var §,!-§:§!!4§;
      
      private var §0!x§:§#!]§;
      
      public function §5V§(param1:String, param2:Boolean)
      {
         super();
         this.§!c§ = param2;
         this.§,!-§ = new §!!4§(param1,param2);
         this.§9Q§();
         this.value = this.§<!Z§();
         if(param2 && this.§9Q§() != null)
         {
            this.§,!-§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9Q§() : §#!]§
      {
         return this.§0!x§ = this.§,!-§.§=4§();
      }
      
      private function §%!g§() : Array
      {
         var _loc1_:Array = new Array();
         this.§9Q§();
         if(this.§0!x§.type == §<q§.§<!R§)
         {
            return _loc1_;
         }
         if(!this.§!c§ && this.§0!x§.type == §<q§.§0!,§)
         {
            this.§9Q§();
            if(this.§0!x§.type == §<q§.§<!R§)
            {
               return _loc1_;
            }
            this.§,!-§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§0!x§.value);
         }
         while(true)
         {
            _loc1_.push(this.§<!Z§());
            this.§9Q§();
            if(this.§0!x§.type == §<q§.§<!R§)
            {
               break;
            }
            if(this.§0!x§.type == §<q§.§0!,§)
            {
               this.§9Q§();
               if(!this.§!c§)
               {
                  if(this.§0!x§.type == §<q§.§<!R§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,!-§.parseError("Expecting ] or , but found " + this.§0!x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §?!H§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§9Q§();
         if(this.§0!x§.type == §<q§.§6!L§)
         {
            return _loc1_;
         }
         if(!this.§!c§ && this.§0!x§.type == §<q§.§0!,§)
         {
            this.§9Q§();
            if(this.§0!x§.type == §<q§.§6!L§)
            {
               return _loc1_;
            }
            this.§,!-§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§0!x§.value);
         }
         while(true)
         {
            if(this.§0!x§.type == §<q§.§ !W§)
            {
               _loc2_ = String(this.§0!x§.value);
               this.§9Q§();
               if(this.§0!x§.type == §<q§.§1W§)
               {
                  this.§9Q§();
                  _loc1_[_loc2_] = this.§<!Z§();
                  this.§9Q§();
                  if(this.§0!x§.type == §<q§.§6!L§)
                  {
                     break;
                  }
                  if(this.§0!x§.type == §<q§.§0!,§)
                  {
                     this.§9Q§();
                     if(!this.§!c§)
                     {
                        if(this.§0!x§.type == §<q§.§6!L§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,!-§.parseError("Expecting } or , but found " + this.§0!x§.value);
                  }
               }
               else
               {
                  this.§,!-§.parseError("Expecting : but found " + this.§0!x§.value);
               }
            }
            else
            {
               this.§,!-§.parseError("Expecting string but found " + this.§0!x§.value);
            }
         }
         return _loc1_;
      }
      
      private function §<!Z§() : Object
      {
         if(this.§0!x§ == null)
         {
            this.§,!-§.parseError("Unexpected end of input");
         }
         switch(this.§0!x§.type)
         {
            case §<q§.§^!h§:
               return this.§?!H§();
            case §<q§.§]!o§:
               return this.§%!g§();
            case §<q§.§ !W§:
            case §<q§.§2S§:
            case §<q§.TRUE:
            case §<q§.FALSE:
            case §<q§.NULL:
               return this.§0!x§.value;
            case §<q§.§3X§:
               if(!this.§!c§)
               {
                  return this.§0!x§.value;
               }
               this.§,!-§.parseError("Unexpected " + this.§0!x§.value);
               break;
         }
         this.§,!-§.parseError("Unexpected " + this.§0!x§.value);
         return null;
      }
   }
}
