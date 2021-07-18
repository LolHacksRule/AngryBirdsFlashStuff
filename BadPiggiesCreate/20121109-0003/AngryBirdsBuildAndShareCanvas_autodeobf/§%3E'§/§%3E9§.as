package §>'§
{
   public class §>9§
   {
       
      
      private var §3!K§:Boolean;
      
      private var value;
      
      private var §^!@§:§-",§;
      
      private var token:§#s§;
      
      public function §>9§(param1:String, param2:Boolean)
      {
         super();
         this.§3!K§ = param2;
         this.§^!@§ = new §-",§(param1,param2);
         this.§!!I§();
         this.value = this.§5!S§();
         if(param2 && this.§!!I§() != null)
         {
            this.§^!@§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!I§() : §#s§
      {
         return this.token = this.§^!@§.§[!p§();
      }
      
      private function §]u§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!!I§();
         if(this.token.type == §7j§.§"?§)
         {
            return _loc1_;
         }
         if(!this.§3!K§ && this.token.type == §7j§.§`"?§)
         {
            this.§!!I§();
            if(this.token.type == §7j§.§"?§)
            {
               return _loc1_;
            }
            this.§^!@§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§5!S§());
            this.§!!I§();
            if(this.token.type == §7j§.§"?§)
            {
               break;
            }
            if(this.token.type == §7j§.§`"?§)
            {
               this.§!!I§();
               if(!this.§3!K§)
               {
                  if(this.token.type == §7j§.§"?§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§^!@§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function § W§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!!I§();
         if(this.token.type == §7j§.§#!y§)
         {
            return _loc1_;
         }
         if(!this.§3!K§ && this.token.type == §7j§.§`"?§)
         {
            this.§!!I§();
            if(this.token.type == §7j§.§#!y§)
            {
               return _loc1_;
            }
            this.§^!@§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §7j§.§%w§)
            {
               _loc2_ = String(this.token.value);
               this.§!!I§();
               if(this.token.type == §7j§.§8§)
               {
                  this.§!!I§();
                  _loc1_[_loc2_] = this.§5!S§();
                  this.§!!I§();
                  if(this.token.type == §7j§.§#!y§)
                  {
                     break;
                  }
                  if(this.token.type == §7j§.§`"?§)
                  {
                     this.§!!I§();
                     if(!this.§3!K§)
                     {
                        if(this.token.type == §7j§.§#!y§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§^!@§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§^!@§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§^!@§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §5!S§() : Object
      {
         if(this.token == null)
         {
            this.§^!@§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §7j§.§8!'§:
               return this.§ W§();
            case §7j§.§8!m§:
               return this.§]u§();
            case §7j§.§%w§:
            case §7j§.§&$§:
            case §7j§.TRUE:
            case §7j§.FALSE:
            case §7j§.§#!A§:
               return this.token.value;
            case §7j§.§=V§:
               if(!this.§3!K§)
               {
                  return this.token.value;
               }
               this.§^!@§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§^!@§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
