package §%!H§
{
   public class § null§
   {
       
      
      private var §5!n§:Boolean;
      
      private var value;
      
      private var §!^§:§2w§;
      
      private var §+5§:§;^§;
      
      public function § null§(param1:String, param2:Boolean)
      {
         super();
         this.§5!n§ = param2;
         this.§!^§ = new §2w§(param1,param2);
         this.§''§();
         this.value = this.§"!<§();
         if(param2 && this.§''§() != null)
         {
            this.§!^§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §''§() : §;^§
      {
         return this.§+5§ = this.§!^§.§6`§();
      }
      
      private function §;!-§() : Array
      {
         var _loc1_:Array = new Array();
         this.§''§();
         if(this.§+5§.type == §%!b§.§<-§)
         {
            return _loc1_;
         }
         if(!this.§5!n§ && this.§+5§.type == §%!b§.§9!d§)
         {
            this.§''§();
            if(this.§+5§.type == §%!b§.§<-§)
            {
               return _loc1_;
            }
            this.§!^§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§+5§.value);
         }
         while(true)
         {
            _loc1_.push(this.§"!<§());
            this.§''§();
            if(this.§+5§.type == §%!b§.§<-§)
            {
               break;
            }
            if(this.§+5§.type == §%!b§.§9!d§)
            {
               this.§''§();
               if(!this.§5!n§)
               {
                  if(this.§+5§.type == §%!b§.§<-§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§!^§.parseError("Expecting ] or , but found " + this.§+5§.value);
            }
         }
         return _loc1_;
      }
      
      private function §`!E§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§''§();
         if(this.§+5§.type == §%!b§.§!!k§)
         {
            return _loc1_;
         }
         if(!this.§5!n§ && this.§+5§.type == §%!b§.§9!d§)
         {
            this.§''§();
            if(this.§+5§.type == §%!b§.§!!k§)
            {
               return _loc1_;
            }
            this.§!^§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§+5§.value);
         }
         while(true)
         {
            if(this.§+5§.type == §%!b§.§-!9§)
            {
               _loc2_ = String(this.§+5§.value);
               this.§''§();
               if(this.§+5§.type == §%!b§.§4Y§)
               {
                  this.§''§();
                  _loc1_[_loc2_] = this.§"!<§();
                  this.§''§();
                  if(this.§+5§.type == §%!b§.§!!k§)
                  {
                     break;
                  }
                  if(this.§+5§.type == §%!b§.§9!d§)
                  {
                     this.§''§();
                     if(!this.§5!n§)
                     {
                        if(this.§+5§.type == §%!b§.§!!k§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§!^§.parseError("Expecting } or , but found " + this.§+5§.value);
                  }
               }
               else
               {
                  this.§!^§.parseError("Expecting : but found " + this.§+5§.value);
               }
            }
            else
            {
               this.§!^§.parseError("Expecting string but found " + this.§+5§.value);
            }
         }
         return _loc1_;
      }
      
      private function §"!<§() : Object
      {
         if(this.§+5§ == null)
         {
            this.§!^§.parseError("Unexpected end of input");
         }
         switch(this.§+5§.type)
         {
            case §%!b§.§,!A§:
               return this.§`!E§();
            case §%!b§.§^O§:
               return this.§;!-§();
            case §%!b§.§-!9§:
            case §%!b§.§[?§:
            case §%!b§.TRUE:
            case §%!b§.FALSE:
            case §%!b§.NULL:
               return this.§+5§.value;
            case §%!b§.§ !K§:
               if(!this.§5!n§)
               {
                  return this.§+5§.value;
               }
               this.§!^§.parseError("Unexpected " + this.§+5§.value);
               break;
         }
         this.§!^§.parseError("Unexpected " + this.§+5§.value);
         return null;
      }
   }
}
