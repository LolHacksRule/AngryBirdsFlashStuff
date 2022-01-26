package §_-2z§
{
   public class §_-6D§
   {
       
      
      private var §_-vK§:Boolean;
      
      private var value;
      
      private var §_-Dq§:§_-S0§;
      
      private var §_-xr§:§_-IH§;
      
      public function §_-6D§(param1:String, param2:Boolean)
      {
         super();
         this.§_-vK§ = param2;
         this.§_-Dq§ = new §_-S0§(param1,param2);
         this.§_-xZ§();
         this.value = this.§_-D5§();
         if(param2 && this.§_-xZ§() != null)
         {
            this.§_-Dq§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-xZ§() : §_-IH§
      {
         return this.§_-xr§ = this.§_-Dq§.§_-Z1§();
      }
      
      private function §_-iy§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-xZ§();
         if(this.§_-xr§.type == §_-eG§.§_-fS§)
         {
            return _loc1_;
         }
         if(!this.§_-vK§ && this.§_-xr§.type == §_-eG§.§_-s0§)
         {
            this.§_-xZ§();
            if(this.§_-xr§.type == §_-eG§.§_-fS§)
            {
               return _loc1_;
            }
            this.§_-Dq§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-xr§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-D5§());
            this.§_-xZ§();
            if(this.§_-xr§.type == §_-eG§.§_-fS§)
            {
               break;
            }
            if(this.§_-xr§.type == §_-eG§.§_-s0§)
            {
               this.§_-xZ§();
               if(!this.§_-vK§)
               {
                  if(this.§_-xr§.type == §_-eG§.§_-fS§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-Dq§.parseError("Expecting ] or , but found " + this.§_-xr§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-XJ§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-xZ§();
         if(this.§_-xr§.type == §_-eG§.§_-AC§)
         {
            return _loc1_;
         }
         if(!this.§_-vK§ && this.§_-xr§.type == §_-eG§.§_-s0§)
         {
            this.§_-xZ§();
            if(this.§_-xr§.type == §_-eG§.§_-AC§)
            {
               return _loc1_;
            }
            this.§_-Dq§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-xr§.value);
         }
         while(true)
         {
            if(this.§_-xr§.type == §_-eG§.§_-k4§)
            {
               _loc2_ = String(this.§_-xr§.value);
               this.§_-xZ§();
               if(this.§_-xr§.type == §_-eG§.§_-Qk§)
               {
                  this.§_-xZ§();
                  _loc1_[_loc2_] = this.§_-D5§();
                  this.§_-xZ§();
                  if(this.§_-xr§.type == §_-eG§.§_-AC§)
                  {
                     break;
                  }
                  if(this.§_-xr§.type == §_-eG§.§_-s0§)
                  {
                     this.§_-xZ§();
                     if(!this.§_-vK§)
                     {
                        if(this.§_-xr§.type == §_-eG§.§_-AC§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-Dq§.parseError("Expecting } or , but found " + this.§_-xr§.value);
                  }
               }
               else
               {
                  this.§_-Dq§.parseError("Expecting : but found " + this.§_-xr§.value);
               }
            }
            else
            {
               this.§_-Dq§.parseError("Expecting string but found " + this.§_-xr§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-D5§() : Object
      {
         if(this.§_-xr§ == null)
         {
            this.§_-Dq§.parseError("Unexpected end of input");
         }
         switch(this.§_-xr§.type)
         {
            case §_-eG§.§_-G4§:
               return this.§_-XJ§();
            case §_-eG§.§_-8o§:
               return this.§_-iy§();
            case §_-eG§.§_-k4§:
            case §_-eG§.§_-Jm§:
            case §_-eG§.TRUE:
            case §_-eG§.FALSE:
            case §_-eG§.§_-Qp§:
               return this.§_-xr§.value;
            case §_-eG§.§_-Sw§:
               if(!this.§_-vK§)
               {
                  return this.§_-xr§.value;
               }
               this.§_-Dq§.parseError("Unexpected " + this.§_-xr§.value);
               break;
         }
         this.§_-Dq§.parseError("Unexpected " + this.§_-xr§.value);
         return null;
      }
   }
}
