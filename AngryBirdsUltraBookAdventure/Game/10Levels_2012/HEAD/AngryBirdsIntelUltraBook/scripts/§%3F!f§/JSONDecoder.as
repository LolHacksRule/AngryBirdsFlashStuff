package §?!f§
{
   public class JSONDecoder
   {
       
      
      private var §0!#§:Boolean;
      
      private var value;
      
      private var §%!a§:§5c§;
      
      private var §3!J§:§^!+§;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         super();
         this.§0!#§ = param2;
         this.§%!a§ = new §5c§(param1,param2);
         this.§9!E§();
         this.value = this.§5!,§();
         if(param2 && this.§9!E§() != null)
         {
            this.§%!a§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9!E§() : §^!+§
      {
         return this.§3!J§ = this.§%!a§.§%!'§();
      }
      
      private function §"!9§() : Array
      {
         var _loc1_:Array = new Array();
         this.§9!E§();
         if(this.§3!J§.type == §8G§.§8!I§)
         {
            return _loc1_;
         }
         if(!this.§0!#§ && this.§3!J§.type == §8G§.§3S§)
         {
            this.§9!E§();
            if(this.§3!J§.type == §8G§.§8!I§)
            {
               return _loc1_;
            }
            this.§%!a§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§3!J§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5!,§());
            this.§9!E§();
            if(this.§3!J§.type == §8G§.§8!I§)
            {
               break;
            }
            if(this.§3!J§.type == §8G§.§3S§)
            {
               this.§9!E§();
               if(!this.§0!#§)
               {
                  if(this.§3!J§.type == §8G§.§8!I§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%!a§.parseError("Expecting ] or , but found " + this.§3!J§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§9!E§();
         if(this.§3!J§.type == §8G§.§%!_§)
         {
            return _loc1_;
         }
         if(!this.§0!#§ && this.§3!J§.type == §8G§.§3S§)
         {
            this.§9!E§();
            if(this.§3!J§.type == §8G§.§%!_§)
            {
               return _loc1_;
            }
            this.§%!a§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§3!J§.value);
         }
         while(true)
         {
            if(this.§3!J§.type == §8G§.§8;§)
            {
               _loc2_ = String(this.§3!J§.value);
               this.§9!E§();
               if(this.§3!J§.type == §8G§.§]W§)
               {
                  this.§9!E§();
                  _loc1_[_loc2_] = this.§5!,§();
                  this.§9!E§();
                  if(this.§3!J§.type == §8G§.§%!_§)
                  {
                     break;
                  }
                  if(this.§3!J§.type == §8G§.§3S§)
                  {
                     this.§9!E§();
                     if(!this.§0!#§)
                     {
                        if(this.§3!J§.type == §8G§.§%!_§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%!a§.parseError("Expecting } or , but found " + this.§3!J§.value);
                  }
               }
               else
               {
                  this.§%!a§.parseError("Expecting : but found " + this.§3!J§.value);
               }
            }
            else
            {
               this.§%!a§.parseError("Expecting string but found " + this.§3!J§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5!,§() : Object
      {
         if(this.§3!J§ == null)
         {
            this.§%!a§.parseError("Unexpected end of input");
         }
         switch(this.§3!J§.type)
         {
            case §8G§.§#k§:
               return this.parseObject();
            case §8G§.§,A§:
               return this.§"!9§();
            case §8G§.§8;§:
            case §8G§.§"!W§:
            case §8G§.TRUE:
            case §8G§.FALSE:
            case §8G§.NULL:
               return this.§3!J§.value;
            case §8G§.§4%§:
               if(!this.§0!#§)
               {
                  return this.§3!J§.value;
               }
               this.§%!a§.parseError("Unexpected " + this.§3!J§.value);
               break;
         }
         this.§%!a§.parseError("Unexpected " + this.§3!J§.value);
         return null;
      }
   }
}
