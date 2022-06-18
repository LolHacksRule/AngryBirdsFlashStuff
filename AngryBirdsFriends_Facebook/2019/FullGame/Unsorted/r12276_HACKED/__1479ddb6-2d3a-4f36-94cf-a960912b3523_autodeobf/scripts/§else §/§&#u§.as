package §else §
{
   public class §&#u§
   {
       
      
      private var §4"K§:Boolean;
      
      private var value;
      
      private var §%w§:§;!]§;
      
      private var §%#z§:§=h§;
      
      public function §&#u§(param1:String, param2:Boolean)
      {
         super();
         this.§4"K§ = param2;
         this.§%w§ = new §;!]§(param1,param2);
         this.§!#w§();
         this.value = this.§"=§();
         if(param2 && this.§!#w§() != null)
         {
            this.§%w§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!#w§() : §=h§
      {
         return this.§%#z§ = this.§%w§.§6!$§();
      }
      
      private function §+#s§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!#w§();
         if(this.§%#z§.type == §#" §.§6![§)
         {
            return _loc1_;
         }
         if(!this.§4"K§ && this.§%#z§.type == §#" §.§&"i§)
         {
            this.§!#w§();
            if(this.§%#z§.type == §#" §.§6![§)
            {
               return _loc1_;
            }
            this.§%w§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§%#z§.value);
         }
         while(true)
         {
            _loc1_.push(this.§"=§());
            this.§!#w§();
            if(this.§%#z§.type == §#" §.§6![§)
            {
               break;
            }
            if(this.§%#z§.type == §#" §.§&"i§)
            {
               this.§!#w§();
               if(!this.§4"K§)
               {
                  if(this.§%#z§.type == §#" §.§6![§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%w§.parseError("Expecting ] or , but found " + this.§%#z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5"$§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!#w§();
         if(this.§%#z§.type == §#" §.§="i§)
         {
            return _loc1_;
         }
         if(!this.§4"K§ && this.§%#z§.type == §#" §.§&"i§)
         {
            this.§!#w§();
            if(this.§%#z§.type == §#" §.§="i§)
            {
               return _loc1_;
            }
            this.§%w§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§%#z§.value);
         }
         while(true)
         {
            if(this.§%#z§.type == §#" §.§3!,§)
            {
               _loc2_ = String(this.§%#z§.value);
               this.§!#w§();
               if(this.§%#z§.type == §#" §.§+"U§)
               {
                  this.§!#w§();
                  _loc1_[_loc2_] = this.§"=§();
                  this.§!#w§();
                  if(this.§%#z§.type == §#" §.§="i§)
                  {
                     break;
                  }
                  if(this.§%#z§.type == §#" §.§&"i§)
                  {
                     this.§!#w§();
                     if(!this.§4"K§)
                     {
                        if(this.§%#z§.type == §#" §.§="i§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%w§.parseError("Expecting } or , but found " + this.§%#z§.value);
                  }
               }
               else
               {
                  this.§%w§.parseError("Expecting : but found " + this.§%#z§.value);
               }
            }
            else
            {
               this.§%w§.parseError("Expecting string but found " + this.§%#z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §"=§() : Object
      {
         if(this.§%#z§ == null)
         {
            this.§%w§.parseError("Unexpected end of input");
         }
         switch(this.§%#z§.type)
         {
            case §#" §.§'#T§:
               return this.§5"$§();
            case §#" §.§;"=§:
               return this.§+#s§();
            case §#" §.§3!,§:
            case §#" §.§]!s§:
            case §#" §.TRUE:
            case §#" §.FALSE:
            case §#" §.NULL:
               return this.§%#z§.value;
            case §#" §.§!!D§:
               if(!this.§4"K§)
               {
                  return this.§%#z§.value;
               }
               this.§%w§.parseError("Unexpected " + this.§%#z§.value);
               break;
         }
         this.§%w§.parseError("Unexpected " + this.§%#z§.value);
         return null;
      }
   }
}
