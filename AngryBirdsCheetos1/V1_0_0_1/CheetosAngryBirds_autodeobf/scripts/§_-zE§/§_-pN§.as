package §_-zE§
{
   public class §_-pN§
   {
       
      
      private var §_-Qf§:Boolean;
      
      private var value;
      
      private var §_-Xh§:§_-yy§;
      
      private var §_-tb§:§_-Kw§;
      
      public function §_-pN§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Qf§ = param2;
         this.§_-Xh§ = new §_-yy§(param1,param2);
         this.§_-DD§();
         this.value = this.§use §();
         if(param2 && this.§_-DD§() != null)
         {
            this.§_-Xh§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-DD§() : §_-Kw§
      {
         return this.§_-tb§ = this.§_-Xh§.§_-O7§();
      }
      
      private function §_-OQ§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-DD§();
         if(this.§_-tb§.type == §_-B§.§_-Pd§)
         {
            return _loc1_;
         }
         if(!this.§_-Qf§ && this.§_-tb§.type == §_-B§.§_-I7§)
         {
            this.§_-DD§();
            if(this.§_-tb§.type == §_-B§.§_-Pd§)
            {
               return _loc1_;
            }
            this.§_-Xh§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-tb§.value);
         }
         while(true)
         {
            _loc1_.push(this.§use §());
            this.§_-DD§();
            if(this.§_-tb§.type == §_-B§.§_-Pd§)
            {
               break;
            }
            if(this.§_-tb§.type == §_-B§.§_-I7§)
            {
               this.§_-DD§();
               if(!this.§_-Qf§)
               {
                  if(this.§_-tb§.type == §_-B§.§_-Pd§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-Xh§.parseError("Expecting ] or , but found " + this.§_-tb§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-DM§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-DD§();
         if(this.§_-tb§.type == §_-B§.§_-kd§)
         {
            return _loc1_;
         }
         if(!this.§_-Qf§ && this.§_-tb§.type == §_-B§.§_-I7§)
         {
            this.§_-DD§();
            if(this.§_-tb§.type == §_-B§.§_-kd§)
            {
               return _loc1_;
            }
            this.§_-Xh§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-tb§.value);
         }
         while(true)
         {
            if(this.§_-tb§.type == §_-B§.§_-Wl§)
            {
               _loc2_ = String(this.§_-tb§.value);
               this.§_-DD§();
               if(this.§_-tb§.type == §_-B§.§_-uH§)
               {
                  this.§_-DD§();
                  _loc1_[_loc2_] = this.§use §();
                  this.§_-DD§();
                  if(this.§_-tb§.type == §_-B§.§_-kd§)
                  {
                     break;
                  }
                  if(this.§_-tb§.type == §_-B§.§_-I7§)
                  {
                     this.§_-DD§();
                     if(!this.§_-Qf§)
                     {
                        if(this.§_-tb§.type == §_-B§.§_-kd§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-Xh§.parseError("Expecting } or , but found " + this.§_-tb§.value);
                  }
               }
               else
               {
                  this.§_-Xh§.parseError("Expecting : but found " + this.§_-tb§.value);
               }
            }
            else
            {
               this.§_-Xh§.parseError("Expecting string but found " + this.§_-tb§.value);
            }
         }
         return _loc1_;
      }
      
      private function §use §() : Object
      {
         if(this.§_-tb§ == null)
         {
            this.§_-Xh§.parseError("Unexpected end of input");
         }
         switch(this.§_-tb§.type)
         {
            case §_-B§.§_-Wd§:
               return this.§_-DM§();
            case §_-B§.§_-nl§:
               return this.§_-OQ§();
            case §_-B§.§_-Wl§:
            case §_-B§.§_-SR§:
            case §_-B§.TRUE:
            case §_-B§.FALSE:
            case §_-B§.§_-dz§:
               return this.§_-tb§.value;
            case §_-B§.§implements§:
               if(!this.§_-Qf§)
               {
                  return this.§_-tb§.value;
               }
               this.§_-Xh§.parseError("Unexpected " + this.§_-tb§.value);
               break;
         }
         this.§_-Xh§.parseError("Unexpected " + this.§_-tb§.value);
         return null;
      }
   }
}
