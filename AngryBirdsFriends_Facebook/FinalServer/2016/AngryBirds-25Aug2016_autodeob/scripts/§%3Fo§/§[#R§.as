package §?o§
{
   public class §[#R§
   {
       
      
      private var §+#Z§:Boolean;
      
      private var value;
      
      private var §0"r§:§1$"§;
      
      private var token:§="Y§;
      
      public function §[#R§(param1:String, param2:Boolean)
      {
         super();
         this.§+#Z§ = param2;
         this.§0"r§ = new §1$"§(param1,param2);
         this.§&![§();
         this.value = this.§2#u§();
         if(param2 && this.§&![§() != null)
         {
            this.§0"r§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §&![§() : §="Y§
      {
         return this.token = this.§0"r§.§!",§();
      }
      
      private function §`K§() : Array
      {
         var _loc1_:Array = new Array();
         this.§&![§();
         if(this.token.type == §]T§.§#"i§)
         {
            return _loc1_;
         }
         if(!this.§+#Z§ && this.token.type == §]T§.§!"j§)
         {
            this.§&![§();
            if(this.token.type == §]T§.§#"i§)
            {
               return _loc1_;
            }
            this.§0"r§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§2#u§());
            this.§&![§();
            if(this.token.type == §]T§.§#"i§)
            {
               break;
            }
            if(this.token.type == §]T§.§!"j§)
            {
               this.§&![§();
               if(!this.§+#Z§)
               {
                  if(this.token.type == §]T§.§#"i§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§0"r§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §>t§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§&![§();
         if(this.token.type == §]T§.§["w§)
         {
            return _loc1_;
         }
         if(!this.§+#Z§ && this.token.type == §]T§.§!"j§)
         {
            this.§&![§();
            if(this.token.type == §]T§.§["w§)
            {
               return _loc1_;
            }
            this.§0"r§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §]T§.§^#G§)
            {
               _loc2_ = String(this.token.value);
               this.§&![§();
               if(this.token.type == §]T§.§?#-§)
               {
                  this.§&![§();
                  _loc1_[_loc2_] = this.§2#u§();
                  this.§&![§();
                  if(this.token.type == §]T§.§["w§)
                  {
                     break;
                  }
                  if(this.token.type == §]T§.§!"j§)
                  {
                     this.§&![§();
                     if(!this.§+#Z§)
                     {
                        if(this.token.type == §]T§.§["w§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§0"r§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§0"r§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§0"r§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §2#u§() : Object
      {
         if(this.token == null)
         {
            this.§0"r§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §]T§.§-#=§:
               return this.§>t§();
            case §]T§.§"!o§:
               return this.§`K§();
            case §]T§.§^#G§:
            case §]T§.§@@§:
            case §]T§.TRUE:
            case §]T§.FALSE:
            case §]T§.NULL:
               return this.token.value;
            case §]T§.§^"C§:
               if(!this.§+#Z§)
               {
                  return this.token.value;
               }
               this.§0"r§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§0"r§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
