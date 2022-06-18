package §`t§
{
   public class §^h§
   {
       
      
      private var §8!'§:Boolean;
      
      private var value;
      
      private var §=&§:§=d§;
      
      private var token:§ '§;
      
      public function §^h§(param1:String, param2:Boolean)
      {
         super();
         this.§8!'§ = param2;
         this.§=&§ = new §=d§(param1,param2);
         this.§2"§();
         this.value = this.§0?§();
         if(param2 && this.§2"§() != null)
         {
            this.§=&§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §2"§() : § '§
      {
         return this.token = this.§=&§.§@y§();
      }
      
      private function §%!4§() : Array
      {
         var _loc1_:Array = new Array();
         this.§2"§();
         if(this.token.type == §=!E§.dynamic)
         {
            return _loc1_;
         }
         if(!this.§8!'§ && this.token.type == §=!E§.§`!A§)
         {
            this.§2"§();
            if(this.token.type == §=!E§.dynamic)
            {
               return _loc1_;
            }
            this.§=&§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§0?§());
            this.§2"§();
            if(this.token.type == §=!E§.dynamic)
            {
               break;
            }
            if(this.token.type == §=!E§.§`!A§)
            {
               this.§2"§();
               if(!this.§8!'§)
               {
                  if(this.token.type == §=!E§.dynamic)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§=&§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §5^§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§2"§();
         if(this.token.type == §=!E§.§`!F§)
         {
            return _loc1_;
         }
         if(!this.§8!'§ && this.token.type == §=!E§.§`!A§)
         {
            this.§2"§();
            if(this.token.type == §=!E§.§`!F§)
            {
               return _loc1_;
            }
            this.§=&§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §=!E§.§`!E§)
            {
               _loc2_ = String(this.token.value);
               this.§2"§();
               if(this.token.type == §=!E§.§>o§)
               {
                  this.§2"§();
                  _loc1_[_loc2_] = this.§0?§();
                  this.§2"§();
                  if(this.token.type == §=!E§.§`!F§)
                  {
                     break;
                  }
                  if(this.token.type == §=!E§.§`!A§)
                  {
                     this.§2"§();
                     if(!this.§8!'§)
                     {
                        if(this.token.type == §=!E§.§`!F§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§=&§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§=&§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§=&§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §0?§() : Object
      {
         if(this.token == null)
         {
            this.§=&§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §=!E§.§5,§:
               return this.§5^§();
            case §=!E§.§32§:
               return this.§%!4§();
            case §=!E§.§`!E§:
            case §=!E§.§6!C§:
            case §=!E§.TRUE:
            case §=!E§.FALSE:
            case §=!E§.NULL:
               return this.token.value;
            case §=!E§.§+5§:
               if(!this.§8!'§)
               {
                  return this.token.value;
               }
               this.§=&§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§=&§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
