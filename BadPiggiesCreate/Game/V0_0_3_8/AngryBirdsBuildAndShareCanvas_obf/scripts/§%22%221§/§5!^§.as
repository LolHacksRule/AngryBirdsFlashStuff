package §""1§
{
   public class §5!^§
   {
       
      
      private var §]"$§:Boolean;
      
      private var value;
      
      private var § !n§:§+!M§;
      
      private var token:§;!q§;
      
      public function §5!^§(param1:String, param2:Boolean)
      {
         super();
         this.§]"$§ = param2;
         this.§ !n§ = new §+!M§(param1,param2);
         this.§%![§();
         this.value = this.§1!n§();
         if(param2 && this.§%![§() != null)
         {
            this.§ !n§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%![§() : §;!q§
      {
         return this.token = this.§ !n§.§68§();
      }
      
      private function §&"-§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%![§();
         if(this.token.type == §7Q§.§9!Z§)
         {
            return _loc1_;
         }
         if(!this.§]"$§ && this.token.type == §7Q§.§""-§)
         {
            this.§%![§();
            if(this.token.type == §7Q§.§9!Z§)
            {
               return _loc1_;
            }
            this.§ !n§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§1!n§());
            this.§%![§();
            if(this.token.type == §7Q§.§9!Z§)
            {
               break;
            }
            if(this.token.type == §7Q§.§""-§)
            {
               this.§%![§();
               if(!this.§]"$§)
               {
                  if(this.token.type == §7Q§.§9!Z§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§ !n§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §>!e§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%![§();
         if(this.token.type == §7Q§.§4l§)
         {
            return _loc1_;
         }
         if(!this.§]"$§ && this.token.type == §7Q§.§""-§)
         {
            this.§%![§();
            if(this.token.type == §7Q§.§4l§)
            {
               return _loc1_;
            }
            this.§ !n§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §7Q§.§;!=§)
            {
               _loc2_ = String(this.token.value);
               this.§%![§();
               if(this.token.type == §7Q§.§,!Y§)
               {
                  this.§%![§();
                  _loc1_[_loc2_] = this.§1!n§();
                  this.§%![§();
                  if(this.token.type == §7Q§.§4l§)
                  {
                     break;
                  }
                  if(this.token.type == §7Q§.§""-§)
                  {
                     this.§%![§();
                     if(!this.§]"$§)
                     {
                        if(this.token.type == §7Q§.§4l§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§ !n§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§ !n§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§ !n§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §1!n§() : Object
      {
         if(this.token == null)
         {
            this.§ !n§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §7Q§.§9!I§:
               return this.§>!e§();
            case §7Q§.§,!D§:
               return this.§&"-§();
            case §7Q§.§;!=§:
            case §7Q§.§+]§:
            case §7Q§.TRUE:
            case §7Q§.FALSE:
            case §7Q§.§,!d§:
               return this.token.value;
            case §7Q§.§1[§:
               if(!this.§]"$§)
               {
                  return this.token.value;
               }
               this.§ !n§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§ !n§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
