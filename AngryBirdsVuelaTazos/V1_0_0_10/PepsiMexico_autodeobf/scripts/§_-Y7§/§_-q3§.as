package §_-Y7§
{
   public class §_-q3§
   {
       
      
      private var §_-mS§:Boolean;
      
      private var value;
      
      private var §_-w1§:§_-kf§;
      
      private var §_-KG§:§_-xW§;
      
      public function §_-q3§(param1:String, param2:Boolean)
      {
         super();
         this.§_-mS§ = param2;
         this.§_-w1§ = new §_-kf§(param1,param2);
         this.§_-Bj§();
         this.value = this.§_-d-§();
         if(param2 && this.§_-Bj§() != null)
         {
            this.§_-w1§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-Bj§() : §_-xW§
      {
         return this.§_-KG§ = this.§_-w1§.§_-qj§();
      }
      
      private function §_-7l§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-Bj§();
         if(this.§_-KG§.type == §_-61§.§_-Bx§)
         {
            return _loc1_;
         }
         if(!this.§_-mS§ && this.§_-KG§.type == §_-61§.§_-6A§)
         {
            this.§_-Bj§();
            if(this.§_-KG§.type == §_-61§.§_-Bx§)
            {
               return _loc1_;
            }
            this.§_-w1§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-KG§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-d-§());
            this.§_-Bj§();
            if(this.§_-KG§.type == §_-61§.§_-Bx§)
            {
               break;
            }
            if(this.§_-KG§.type == §_-61§.§_-6A§)
            {
               this.§_-Bj§();
               if(!this.§_-mS§)
               {
                  if(this.§_-KG§.type == §_-61§.§_-Bx§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-w1§.parseError("Expecting ] or , but found " + this.§_-KG§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-ik§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-Bj§();
         if(this.§_-KG§.type == §_-61§.§_-Sz§)
         {
            return _loc1_;
         }
         if(!this.§_-mS§ && this.§_-KG§.type == §_-61§.§_-6A§)
         {
            this.§_-Bj§();
            if(this.§_-KG§.type == §_-61§.§_-Sz§)
            {
               return _loc1_;
            }
            this.§_-w1§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-KG§.value);
         }
         while(true)
         {
            if(this.§_-KG§.type == §_-61§.§_-26§)
            {
               _loc2_ = String(this.§_-KG§.value);
               this.§_-Bj§();
               if(this.§_-KG§.type == §_-61§.§_-Eq§)
               {
                  this.§_-Bj§();
                  _loc1_[_loc2_] = this.§_-d-§();
                  this.§_-Bj§();
                  if(this.§_-KG§.type == §_-61§.§_-Sz§)
                  {
                     break;
                  }
                  if(this.§_-KG§.type == §_-61§.§_-6A§)
                  {
                     this.§_-Bj§();
                     if(!this.§_-mS§)
                     {
                        if(this.§_-KG§.type == §_-61§.§_-Sz§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-w1§.parseError("Expecting } or , but found " + this.§_-KG§.value);
                  }
               }
               else
               {
                  this.§_-w1§.parseError("Expecting : but found " + this.§_-KG§.value);
               }
            }
            else
            {
               this.§_-w1§.parseError("Expecting string but found " + this.§_-KG§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-d-§() : Object
      {
         if(this.§_-KG§ == null)
         {
            this.§_-w1§.parseError("Unexpected end of input");
         }
         switch(this.§_-KG§.type)
         {
            case §_-61§.§_-fq§:
               return this.§_-ik§();
            case §_-61§.§_-XV§:
               return this.§_-7l§();
            case §_-61§.§_-26§:
            case §_-61§.§_-rG§:
            case §_-61§.TRUE:
            case §_-61§.FALSE:
            case §_-61§.§_-Kb§:
               return this.§_-KG§.value;
            case §_-61§.§set §:
               if(!this.§_-mS§)
               {
                  return this.§_-KG§.value;
               }
               this.§_-w1§.parseError("Unexpected " + this.§_-KG§.value);
               break;
         }
         this.§_-w1§.parseError("Unexpected " + this.§_-KG§.value);
         return null;
      }
   }
}
