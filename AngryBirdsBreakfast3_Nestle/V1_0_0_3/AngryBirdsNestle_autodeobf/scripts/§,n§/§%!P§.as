package §,n§
{
   public class §%!P§
   {
       
      
      private var §8o§:Boolean;
      
      private var value;
      
      private var §9n§:§^!p§;
      
      private var §;g§:§2!%§;
      
      public function §%!P§(param1:String, param2:Boolean)
      {
         super();
         this.§8o§ = param2;
         this.§9n§ = new §^!p§(param1,param2);
         this.§66§();
         this.value = this.§5r§();
         if(param2 && this.§66§() != null)
         {
            this.§9n§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §66§() : §2!%§
      {
         return this.§;g§ = this.§9n§.§>y§();
      }
      
      private function § "$§() : Array
      {
         var _loc1_:Array = new Array();
         this.§66§();
         if(this.§;g§.type == §9!y§.§ "4§)
         {
            return _loc1_;
         }
         if(!this.§8o§ && this.§;g§.type == §9!y§.§0w§)
         {
            this.§66§();
            if(this.§;g§.type == §9!y§.§ "4§)
            {
               return _loc1_;
            }
            this.§9n§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§;g§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5r§());
            this.§66§();
            if(this.§;g§.type == §9!y§.§ "4§)
            {
               break;
            }
            if(this.§;g§.type == §9!y§.§0w§)
            {
               this.§66§();
               if(!this.§8o§)
               {
                  if(this.§;g§.type == §9!y§.§ "4§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§9n§.parseError("Expecting ] or , but found " + this.§;g§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§66§();
         if(this.§;g§.type == §9!y§.§+!p§)
         {
            return _loc1_;
         }
         if(!this.§8o§ && this.§;g§.type == §9!y§.§0w§)
         {
            this.§66§();
            if(this.§;g§.type == §9!y§.§+!p§)
            {
               return _loc1_;
            }
            this.§9n§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§;g§.value);
         }
         while(true)
         {
            if(this.§;g§.type == §9!y§.§?!g§)
            {
               _loc2_ = String(this.§;g§.value);
               this.§66§();
               if(this.§;g§.type == §9!y§.§^!S§)
               {
                  this.§66§();
                  _loc1_[_loc2_] = this.§5r§();
                  this.§66§();
                  if(this.§;g§.type == §9!y§.§+!p§)
                  {
                     break;
                  }
                  if(this.§;g§.type == §9!y§.§0w§)
                  {
                     this.§66§();
                     if(!this.§8o§)
                     {
                        if(this.§;g§.type == §9!y§.§+!p§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§9n§.parseError("Expecting } or , but found " + this.§;g§.value);
                  }
               }
               else
               {
                  this.§9n§.parseError("Expecting : but found " + this.§;g§.value);
               }
            }
            else
            {
               this.§9n§.parseError("Expecting string but found " + this.§;g§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5r§() : Object
      {
         if(this.§;g§ == null)
         {
            this.§9n§.parseError("Unexpected end of input");
         }
         switch(this.§;g§.type)
         {
            case §9!y§.§^0§:
               return this.parseObject();
            case §9!y§.§1!g§:
               return this.§ "$§();
            case §9!y§.§?!g§:
            case §9!y§.§^!]§:
            case §9!y§.TRUE:
            case §9!y§.FALSE:
            case §9!y§.NULL:
               return this.§;g§.value;
            case §9!y§.§'!d§:
               if(!this.§8o§)
               {
                  return this.§;g§.value;
               }
               this.§9n§.parseError("Unexpected " + this.§;g§.value);
               break;
         }
         this.§9n§.parseError("Unexpected " + this.§;g§.value);
         return null;
      }
   }
}
