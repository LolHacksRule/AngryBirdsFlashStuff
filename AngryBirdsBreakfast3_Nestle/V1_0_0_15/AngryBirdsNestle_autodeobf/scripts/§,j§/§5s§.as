package §,j§
{
   public class §5s§
   {
       
      
      private var §1!g§:Boolean;
      
      private var value;
      
      private var §package§:§^!$§;
      
      private var §%!%§:§ "0§;
      
      public function §5s§(param1:String, param2:Boolean)
      {
         super();
         this.§1!g§ = param2;
         this.§package§ = new §^!$§(param1,param2);
         this.§64§();
         this.value = this.§6"'§();
         if(param2 && this.§64§() != null)
         {
            this.§package§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §64§() : § "0§
      {
         return this.§%!%§ = this.§package§.§8j§();
      }
      
      private function §%@§() : Array
      {
         var _loc1_:Array = new Array();
         this.§64§();
         if(this.§%!%§.type == §8_§.§&!R§)
         {
            return _loc1_;
         }
         if(!this.§1!g§ && this.§%!%§.type == §8_§.§0!n§)
         {
            this.§64§();
            if(this.§%!%§.type == §8_§.§&!R§)
            {
               return _loc1_;
            }
            this.§package§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§%!%§.value);
         }
         while(true)
         {
            _loc1_.push(this.§6"'§());
            this.§64§();
            if(this.§%!%§.type == §8_§.§&!R§)
            {
               break;
            }
            if(this.§%!%§.type == §8_§.§0!n§)
            {
               this.§64§();
               if(!this.§1!g§)
               {
                  if(this.§%!%§.type == §8_§.§&!R§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§package§.parseError("Expecting ] or , but found " + this.§%!%§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§64§();
         if(this.§%!%§.type == §8_§.§6!S§)
         {
            return _loc1_;
         }
         if(!this.§1!g§ && this.§%!%§.type == §8_§.§0!n§)
         {
            this.§64§();
            if(this.§%!%§.type == §8_§.§6!S§)
            {
               return _loc1_;
            }
            this.§package§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§%!%§.value);
         }
         while(true)
         {
            if(this.§%!%§.type == §8_§.§4!T§)
            {
               _loc2_ = String(this.§%!%§.value);
               this.§64§();
               if(this.§%!%§.type == §8_§.§5!`§)
               {
                  this.§64§();
                  _loc1_[_loc2_] = this.§6"'§();
                  this.§64§();
                  if(this.§%!%§.type == §8_§.§6!S§)
                  {
                     break;
                  }
                  if(this.§%!%§.type == §8_§.§0!n§)
                  {
                     this.§64§();
                     if(!this.§1!g§)
                     {
                        if(this.§%!%§.type == §8_§.§6!S§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§package§.parseError("Expecting } or , but found " + this.§%!%§.value);
                  }
               }
               else
               {
                  this.§package§.parseError("Expecting : but found " + this.§%!%§.value);
               }
            }
            else
            {
               this.§package§.parseError("Expecting string but found " + this.§%!%§.value);
            }
         }
         return _loc1_;
      }
      
      private function §6"'§() : Object
      {
         if(this.§%!%§ == null)
         {
            this.§package§.parseError("Unexpected end of input");
         }
         switch(this.§%!%§.type)
         {
            case §8_§.§ ""§:
               return this.parseObject();
            case §8_§.§0l§:
               return this.§%@§();
            case §8_§.§4!T§:
            case §8_§.§+""§:
            case §8_§.TRUE:
            case §8_§.FALSE:
            case §8_§.NULL:
               return this.§%!%§.value;
            case §8_§.§[d§:
               if(!this.§1!g§)
               {
                  return this.§%!%§.value;
               }
               this.§package§.parseError("Unexpected " + this.§%!%§.value);
               break;
         }
         this.§package§.parseError("Unexpected " + this.§%!%§.value);
         return null;
      }
   }
}
