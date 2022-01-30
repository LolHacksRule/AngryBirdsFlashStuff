package §!! §
{
   public class §<!X§
   {
       
      
      private var §`@§:Boolean;
      
      private var value;
      
      private var §5r§:§!!T§;
      
      private var §6y§:§`!l§;
      
      public function §<!X§(param1:String, param2:Boolean)
      {
         super();
         this.§`@§ = param2;
         this.§5r§ = new §!!T§(param1,param2);
         this.§^o§();
         this.value = this.§,D§();
         if(param2 && this.§^o§() != null)
         {
            this.§5r§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §^o§() : §`!l§
      {
         return this.§6y§ = this.§5r§.§[!%§();
      }
      
      private function §+B§() : Array
      {
         var _loc1_:Array = new Array();
         this.§^o§();
         if(this.§6y§.type == §%F§.§]!W§)
         {
            return _loc1_;
         }
         if(!this.§`@§ && this.§6y§.type == §%F§.§2!V§)
         {
            this.§^o§();
            if(this.§6y§.type == §%F§.§]!W§)
            {
               return _loc1_;
            }
            this.§5r§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§6y§.value);
         }
         while(true)
         {
            _loc1_.push(this.§,D§());
            this.§^o§();
            if(this.§6y§.type == §%F§.§]!W§)
            {
               break;
            }
            if(this.§6y§.type == §%F§.§2!V§)
            {
               this.§^o§();
               if(!this.§`@§)
               {
                  if(this.§6y§.type == §%F§.§]!W§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§5r§.parseError("Expecting ] or , but found " + this.§6y§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§^o§();
         if(this.§6y§.type == §%F§.§]&§)
         {
            return _loc1_;
         }
         if(!this.§`@§ && this.§6y§.type == §%F§.§2!V§)
         {
            this.§^o§();
            if(this.§6y§.type == §%F§.§]&§)
            {
               return _loc1_;
            }
            this.§5r§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§6y§.value);
         }
         while(true)
         {
            if(this.§6y§.type == §%F§.§,A§)
            {
               _loc2_ = String(this.§6y§.value);
               this.§^o§();
               if(this.§6y§.type == §%F§.§,j§)
               {
                  this.§^o§();
                  _loc1_[_loc2_] = this.§,D§();
                  this.§^o§();
                  if(this.§6y§.type == §%F§.§]&§)
                  {
                     break;
                  }
                  if(this.§6y§.type == §%F§.§2!V§)
                  {
                     this.§^o§();
                     if(!this.§`@§)
                     {
                        if(this.§6y§.type == §%F§.§]&§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§5r§.parseError("Expecting } or , but found " + this.§6y§.value);
                  }
               }
               else
               {
                  this.§5r§.parseError("Expecting : but found " + this.§6y§.value);
               }
            }
            else
            {
               this.§5r§.parseError("Expecting string but found " + this.§6y§.value);
            }
         }
         return _loc1_;
      }
      
      private function §,D§() : Object
      {
         if(this.§6y§ == null)
         {
            this.§5r§.parseError("Unexpected end of input");
         }
         switch(this.§6y§.type)
         {
            case §%F§.§5!5§:
               return this.parseObject();
            case §%F§.§%!s§:
               return this.§+B§();
            case §%F§.§,A§:
            case §%F§.§6!4§:
            case §%F§.TRUE:
            case §%F§.FALSE:
            case §%F§.NULL:
               return this.§6y§.value;
            case §%F§.§#!9§:
               if(!this.§`@§)
               {
                  return this.§6y§.value;
               }
               this.§5r§.parseError("Unexpected " + this.§6y§.value);
               break;
         }
         this.§5r§.parseError("Unexpected " + this.§6y§.value);
         return null;
      }
   }
}
