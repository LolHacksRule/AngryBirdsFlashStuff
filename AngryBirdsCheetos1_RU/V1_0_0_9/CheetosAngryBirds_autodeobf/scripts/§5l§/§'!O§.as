package §5l§
{
   public class §'!O§
   {
       
      
      private var §&!0§:Boolean;
      
      private var value;
      
      private var §@p§:§!§;
      
      private var §@b§:§[!W§;
      
      public function §'!O§(param1:String, param2:Boolean)
      {
         super();
         this.§&!0§ = param2;
         this.§@p§ = new §!§(param1,param2);
         this.§;!'§();
         this.value = this.§%!U§();
         if(param2 && this.§;!'§() != null)
         {
            this.§@p§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;!'§() : §[!W§
      {
         return this.§@b§ = this.§@p§.§?2§();
      }
      
      private function §^'§() : Array
      {
         var _loc1_:Array = new Array();
         this.§;!'§();
         if(this.§@b§.type == §9Z§.§6![§)
         {
            return _loc1_;
         }
         if(!this.§&!0§ && this.§@b§.type == §9Z§.§[@§)
         {
            this.§;!'§();
            if(this.§@b§.type == §9Z§.§6![§)
            {
               return _loc1_;
            }
            this.§@p§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§@b§.value);
         }
         while(true)
         {
            _loc1_.push(this.§%!U§());
            this.§;!'§();
            if(this.§@b§.type == §9Z§.§6![§)
            {
               break;
            }
            if(this.§@b§.type == §9Z§.§[@§)
            {
               this.§;!'§();
               if(!this.§&!0§)
               {
                  if(this.§@b§.type == §9Z§.§6![§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§@p§.parseError("Expecting ] or , but found " + this.§@b§.value);
            }
         }
         return _loc1_;
      }
      
      private function §8r§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;!'§();
         if(this.§@b§.type == §9Z§.§4!]§)
         {
            return _loc1_;
         }
         if(!this.§&!0§ && this.§@b§.type == §9Z§.§[@§)
         {
            this.§;!'§();
            if(this.§@b§.type == §9Z§.§4!]§)
            {
               return _loc1_;
            }
            this.§@p§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§@b§.value);
         }
         while(true)
         {
            if(this.§@b§.type == §9Z§.§"s§)
            {
               _loc2_ = String(this.§@b§.value);
               this.§;!'§();
               if(this.§@b§.type == §9Z§.§6z§)
               {
                  this.§;!'§();
                  _loc1_[_loc2_] = this.§%!U§();
                  this.§;!'§();
                  if(this.§@b§.type == §9Z§.§4!]§)
                  {
                     break;
                  }
                  if(this.§@b§.type == §9Z§.§[@§)
                  {
                     this.§;!'§();
                     if(!this.§&!0§)
                     {
                        if(this.§@b§.type == §9Z§.§4!]§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§@p§.parseError("Expecting } or , but found " + this.§@b§.value);
                  }
               }
               else
               {
                  this.§@p§.parseError("Expecting : but found " + this.§@b§.value);
               }
            }
            else
            {
               this.§@p§.parseError("Expecting string but found " + this.§@b§.value);
            }
         }
         return _loc1_;
      }
      
      private function §%!U§() : Object
      {
         if(this.§@b§ == null)
         {
            this.§@p§.parseError("Unexpected end of input");
         }
         switch(this.§@b§.type)
         {
            case §9Z§.§,=§:
               return this.§8r§();
            case §9Z§.§8$§:
               return this.§^'§();
            case §9Z§.§"s§:
            case §9Z§.§?c§:
            case §9Z§.TRUE:
            case §9Z§.FALSE:
            case §9Z§.§!s§:
               return this.§@b§.value;
            case §9Z§.§8!X§:
               if(!this.§&!0§)
               {
                  return this.§@b§.value;
               }
               this.§@p§.parseError("Unexpected " + this.§@b§.value);
               break;
         }
         this.§@p§.parseError("Unexpected " + this.§@b§.value);
         return null;
      }
   }
}
