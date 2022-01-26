package §_-VX§
{
   public class §_-lI§
   {
       
      
      private var §_-OR§:Boolean;
      
      private var value;
      
      private var §_-s5§:§_-Bi§;
      
      private var §_-lj§:§_-mC§;
      
      public function §_-lI§(param1:String, param2:Boolean)
      {
         super();
         this.§_-OR§ = param2;
         this.§_-s5§ = new §_-Bi§(param1,param2);
         this.§_-eF§();
         this.value = this.§_-a2§();
         if(param2 && this.§_-eF§() != null)
         {
            this.§_-s5§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-eF§() : §_-mC§
      {
         return this.§_-lj§ = this.§_-s5§.§_-Us§();
      }
      
      private function §_-bR§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-eF§();
         if(this.§_-lj§.type == §_-SZ§.§_-fa§)
         {
            return _loc1_;
         }
         if(!this.§_-OR§ && this.§_-lj§.type == §_-SZ§.§_-2Y§)
         {
            this.§_-eF§();
            if(this.§_-lj§.type == §_-SZ§.§_-fa§)
            {
               return _loc1_;
            }
            this.§_-s5§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-lj§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-a2§());
            this.§_-eF§();
            if(this.§_-lj§.type == §_-SZ§.§_-fa§)
            {
               break;
            }
            if(this.§_-lj§.type == §_-SZ§.§_-2Y§)
            {
               this.§_-eF§();
               if(!this.§_-OR§)
               {
                  if(this.§_-lj§.type == §_-SZ§.§_-fa§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-s5§.parseError("Expecting ] or , but found " + this.§_-lj§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-m2§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-eF§();
         if(this.§_-lj§.type == §_-SZ§.§_-sm§)
         {
            return _loc1_;
         }
         if(!this.§_-OR§ && this.§_-lj§.type == §_-SZ§.§_-2Y§)
         {
            this.§_-eF§();
            if(this.§_-lj§.type == §_-SZ§.§_-sm§)
            {
               return _loc1_;
            }
            this.§_-s5§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-lj§.value);
         }
         while(true)
         {
            if(this.§_-lj§.type == §_-SZ§.§_-7N§)
            {
               _loc2_ = String(this.§_-lj§.value);
               this.§_-eF§();
               if(this.§_-lj§.type == §_-SZ§.§_-jG§)
               {
                  this.§_-eF§();
                  _loc1_[_loc2_] = this.§_-a2§();
                  this.§_-eF§();
                  if(this.§_-lj§.type == §_-SZ§.§_-sm§)
                  {
                     break;
                  }
                  if(this.§_-lj§.type == §_-SZ§.§_-2Y§)
                  {
                     this.§_-eF§();
                     if(!this.§_-OR§)
                     {
                        if(this.§_-lj§.type == §_-SZ§.§_-sm§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-s5§.parseError("Expecting } or , but found " + this.§_-lj§.value);
                  }
               }
               else
               {
                  this.§_-s5§.parseError("Expecting : but found " + this.§_-lj§.value);
               }
            }
            else
            {
               this.§_-s5§.parseError("Expecting string but found " + this.§_-lj§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-a2§() : Object
      {
         if(this.§_-lj§ == null)
         {
            this.§_-s5§.parseError("Unexpected end of input");
         }
         switch(this.§_-lj§.type)
         {
            case §_-SZ§.§_-ol§:
               return this.§_-m2§();
            case §_-SZ§.§_-eW§:
               return this.§_-bR§();
            case §_-SZ§.§_-7N§:
            case §_-SZ§.§_-Rw§:
            case §_-SZ§.TRUE:
            case §_-SZ§.FALSE:
            case §_-SZ§.§_-iz§:
               return this.§_-lj§.value;
            case §_-SZ§.§_-eg§:
               if(!this.§_-OR§)
               {
                  return this.§_-lj§.value;
               }
               this.§_-s5§.parseError("Unexpected " + this.§_-lj§.value);
               break;
         }
         this.§_-s5§.parseError("Unexpected " + this.§_-lj§.value);
         return null;
      }
   }
}
