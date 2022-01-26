package §_-w0§
{
   public class §_-j2§
   {
       
      
      private var §_-Q5§:Boolean;
      
      private var value;
      
      private var §_-g1§:§_-vz§;
      
      private var §_-4u§:§_-eO§;
      
      public function §_-j2§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Q5§ = param2;
         this.§_-g1§ = new §_-vz§(param1,param2);
         this.§_-IO§();
         this.value = this.§_-lv§();
         if(param2 && this.§_-IO§() != null)
         {
            this.§_-g1§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-IO§() : §_-eO§
      {
         return this.§_-4u§ = this.§_-g1§.§_-4y§();
      }
      
      private function §_-cV§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-IO§();
         if(this.§_-4u§.type == §_-76§.§_-nL§)
         {
            return _loc1_;
         }
         if(!this.§_-Q5§ && this.§_-4u§.type == §_-76§.§_-eU§)
         {
            this.§_-IO§();
            if(this.§_-4u§.type == §_-76§.§_-nL§)
            {
               return _loc1_;
            }
            this.§_-g1§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-4u§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-lv§());
            this.§_-IO§();
            if(this.§_-4u§.type == §_-76§.§_-nL§)
            {
               break;
            }
            if(this.§_-4u§.type == §_-76§.§_-eU§)
            {
               this.§_-IO§();
               if(!this.§_-Q5§)
               {
                  if(this.§_-4u§.type == §_-76§.§_-nL§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-g1§.parseError("Expecting ] or , but found " + this.§_-4u§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-sn§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-IO§();
         if(this.§_-4u§.type == §_-76§.§_-C1§)
         {
            return _loc1_;
         }
         if(!this.§_-Q5§ && this.§_-4u§.type == §_-76§.§_-eU§)
         {
            this.§_-IO§();
            if(this.§_-4u§.type == §_-76§.§_-C1§)
            {
               return _loc1_;
            }
            this.§_-g1§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-4u§.value);
         }
         while(true)
         {
            if(this.§_-4u§.type == §_-76§.§_-sY§)
            {
               _loc2_ = String(this.§_-4u§.value);
               this.§_-IO§();
               if(this.§_-4u§.type == §_-76§.§_-Y1§)
               {
                  this.§_-IO§();
                  _loc1_[_loc2_] = this.§_-lv§();
                  this.§_-IO§();
                  if(this.§_-4u§.type == §_-76§.§_-C1§)
                  {
                     break;
                  }
                  if(this.§_-4u§.type == §_-76§.§_-eU§)
                  {
                     this.§_-IO§();
                     if(!this.§_-Q5§)
                     {
                        if(this.§_-4u§.type == §_-76§.§_-C1§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-g1§.parseError("Expecting } or , but found " + this.§_-4u§.value);
                  }
               }
               else
               {
                  this.§_-g1§.parseError("Expecting : but found " + this.§_-4u§.value);
               }
            }
            else
            {
               this.§_-g1§.parseError("Expecting string but found " + this.§_-4u§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-lv§() : Object
      {
         if(this.§_-4u§ == null)
         {
            this.§_-g1§.parseError("Unexpected end of input");
         }
         switch(this.§_-4u§.type)
         {
            case §_-76§.§_-B2§:
               return this.§_-sn§();
            case §_-76§.§_-PD§:
               return this.§_-cV§();
            case §_-76§.§_-sY§:
            case §_-76§.§_-B9§:
            case §_-76§.TRUE:
            case §_-76§.FALSE:
            case §_-76§.§_-VK§:
               return this.§_-4u§.value;
            case §_-76§.§_-rF§:
               if(!this.§_-Q5§)
               {
                  return this.§_-4u§.value;
               }
               this.§_-g1§.parseError("Unexpected " + this.§_-4u§.value);
               break;
         }
         this.§_-g1§.parseError("Unexpected " + this.§_-4u§.value);
         return null;
      }
   }
}
