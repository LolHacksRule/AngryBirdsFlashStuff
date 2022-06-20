package §'!g§
{
   public class §`"[§
   {
       
      
      private var §'"D§:Boolean;
      
      private var value;
      
      private var §+#1§:§%#t§;
      
      private var token:§7#j§;
      
      public function §`"[§(param1:String, param2:Boolean)
      {
         super();
         this.§'"D§ = param2;
         this.§+#1§ = new §%#t§(param1,param2);
         this.§4!s§();
         this.value = this.§2"D§();
         if(param2 && this.§4!s§() != null)
         {
            this.§+#1§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §4!s§() : §7#j§
      {
         return this.token = this.§+#1§.§%"S§();
      }
      
      private function §8!p§() : Array
      {
         var _loc1_:Array = new Array();
         this.§4!s§();
         if(this.token.type == §?"1§.§&"P§)
         {
            return _loc1_;
         }
         if(!this.§'"D§ && this.token.type == §?"1§.§2!3§)
         {
            this.§4!s§();
            if(this.token.type == §?"1§.§&"P§)
            {
               return _loc1_;
            }
            this.§+#1§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§2"D§());
            this.§4!s§();
            if(this.token.type == §?"1§.§&"P§)
            {
               break;
            }
            if(this.token.type == §?"1§.§2!3§)
            {
               this.§4!s§();
               if(!this.§'"D§)
               {
                  if(this.token.type == §?"1§.§&"P§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§+#1§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §3!E§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§4!s§();
         if(this.token.type == §?"1§.§<"Y§)
         {
            return _loc1_;
         }
         if(!this.§'"D§ && this.token.type == §?"1§.§2!3§)
         {
            this.§4!s§();
            if(this.token.type == §?"1§.§<"Y§)
            {
               return _loc1_;
            }
            this.§+#1§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §?"1§.§>#5§)
            {
               _loc2_ = String(this.token.value);
               this.§4!s§();
               if(this.token.type == §?"1§.§^!k§)
               {
                  this.§4!s§();
                  _loc1_[_loc2_] = this.§2"D§();
                  this.§4!s§();
                  if(this.token.type == §?"1§.§<"Y§)
                  {
                     break;
                  }
                  if(this.token.type == §?"1§.§2!3§)
                  {
                     this.§4!s§();
                     if(!this.§'"D§)
                     {
                        if(this.token.type == §?"1§.§<"Y§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§+#1§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§+#1§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§+#1§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §2"D§() : Object
      {
         if(this.token == null)
         {
            this.§+#1§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §?"1§.§7!K§:
               return this.§3!E§();
            case §?"1§.§ !"§:
               return this.§8!p§();
            case §?"1§.§>#5§:
            case §?"1§.§ !H§:
            case §?"1§.TRUE:
            case §?"1§.FALSE:
            case §?"1§.NULL:
               return this.token.value;
            case §?"1§.§7#U§:
               if(!this.§'"D§)
               {
                  return this.token.value;
               }
               this.§+#1§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§+#1§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
