package § L§
{
   public class §5!j§
   {
       
      
      private var §'0§:Boolean;
      
      private var value;
      
      private var §"!#§:§ !p§;
      
      private var §-!8§:§`9§;
      
      public function §5!j§(param1:String, param2:Boolean)
      {
         super();
         this.§'0§ = param2;
         this.§"!#§ = new § !p§(param1,param2);
         this.§'![§();
         this.value = this.§^!A§();
         if(param2 && this.§'![§() != null)
         {
            this.§"!#§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §'![§() : §`9§
      {
         return this.§-!8§ = this.§"!#§.§6[§();
      }
      
      private function § !"§() : Array
      {
         var _loc1_:Array = new Array();
         this.§'![§();
         if(this.§-!8§.type == §;!c§.§7!k§)
         {
            return _loc1_;
         }
         if(!this.§'0§ && this.§-!8§.type == §;!c§.§=P§)
         {
            this.§'![§();
            if(this.§-!8§.type == §;!c§.§7!k§)
            {
               return _loc1_;
            }
            this.§"!#§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§-!8§.value);
         }
         while(true)
         {
            _loc1_.push(this.§^!A§());
            this.§'![§();
            if(this.§-!8§.type == §;!c§.§7!k§)
            {
               break;
            }
            if(this.§-!8§.type == §;!c§.§=P§)
            {
               this.§'![§();
               if(!this.§'0§)
               {
                  if(this.§-!8§.type == §;!c§.§7!k§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§"!#§.parseError("Expecting ] or , but found " + this.§-!8§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;!P§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§'![§();
         if(this.§-!8§.type == §;!c§.§4>§)
         {
            return _loc1_;
         }
         if(!this.§'0§ && this.§-!8§.type == §;!c§.§=P§)
         {
            this.§'![§();
            if(this.§-!8§.type == §;!c§.§4>§)
            {
               return _loc1_;
            }
            this.§"!#§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§-!8§.value);
         }
         while(true)
         {
            if(this.§-!8§.type == §;!c§.§2!!§)
            {
               _loc2_ = String(this.§-!8§.value);
               this.§'![§();
               if(this.§-!8§.type == §;!c§.§,^§)
               {
                  this.§'![§();
                  _loc1_[_loc2_] = this.§^!A§();
                  this.§'![§();
                  if(this.§-!8§.type == §;!c§.§4>§)
                  {
                     break;
                  }
                  if(this.§-!8§.type == §;!c§.§=P§)
                  {
                     this.§'![§();
                     if(!this.§'0§)
                     {
                        if(this.§-!8§.type == §;!c§.§4>§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§"!#§.parseError("Expecting } or , but found " + this.§-!8§.value);
                  }
               }
               else
               {
                  this.§"!#§.parseError("Expecting : but found " + this.§-!8§.value);
               }
            }
            else
            {
               this.§"!#§.parseError("Expecting string but found " + this.§-!8§.value);
            }
         }
         return _loc1_;
      }
      
      private function §^!A§() : Object
      {
         if(this.§-!8§ == null)
         {
            this.§"!#§.parseError("Unexpected end of input");
         }
         switch(this.§-!8§.type)
         {
            case §;!c§.§4!A§:
               return this.§;!P§();
            case §;!c§.§4+§:
               return this.§ !"§();
            case §;!c§.§2!!§:
            case §;!c§.§^!n§:
            case §;!c§.TRUE:
            case §;!c§.FALSE:
            case §;!c§.NULL:
               return this.§-!8§.value;
            case §;!c§.§"!2§:
               if(!this.§'0§)
               {
                  return this.§-!8§.value;
               }
               this.§"!#§.parseError("Unexpected " + this.§-!8§.value);
               break;
         }
         this.§"!#§.parseError("Unexpected " + this.§-!8§.value);
         return null;
      }
   }
}
