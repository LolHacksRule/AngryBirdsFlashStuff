package §_-rt§
{
   public class §_-7Y§
   {
       
      
      private var §_-Nm§:Boolean;
      
      private var value;
      
      private var §_-8G§:§_-aw§;
      
      private var §_-7o§:§_-SN§;
      
      public function §_-7Y§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Nm§ = param2;
         this.§_-8G§ = new §_-aw§(param1,param2);
         this.§_-kg§();
         this.value = this.§_-yD§();
         if(param2 && this.§_-kg§() != null)
         {
            this.§_-8G§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-kg§() : §_-SN§
      {
         return this.§_-7o§ = this.§_-8G§.§_-Ds§();
      }
      
      private function §_-yn§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-kg§();
         if(this.§_-7o§.type == §_-kx§.§_-eD§)
         {
            return _loc1_;
         }
         if(!this.§_-Nm§ && this.§_-7o§.type == §_-kx§.§_-005§)
         {
            this.§_-kg§();
            if(this.§_-7o§.type == §_-kx§.§_-eD§)
            {
               return _loc1_;
            }
            this.§_-8G§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-7o§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-yD§());
            this.§_-kg§();
            if(this.§_-7o§.type == §_-kx§.§_-eD§)
            {
               break;
            }
            if(this.§_-7o§.type == §_-kx§.§_-005§)
            {
               this.§_-kg§();
               if(!this.§_-Nm§)
               {
                  if(this.§_-7o§.type == §_-kx§.§_-eD§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-8G§.parseError("Expecting ] or , but found " + this.§_-7o§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-dc§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-kg§();
         if(this.§_-7o§.type == §_-kx§.§_-44§)
         {
            return _loc1_;
         }
         if(!this.§_-Nm§ && this.§_-7o§.type == §_-kx§.§_-005§)
         {
            this.§_-kg§();
            if(this.§_-7o§.type == §_-kx§.§_-44§)
            {
               return _loc1_;
            }
            this.§_-8G§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-7o§.value);
         }
         while(true)
         {
            if(this.§_-7o§.type == §_-kx§.§_-d2§)
            {
               _loc2_ = String(this.§_-7o§.value);
               this.§_-kg§();
               if(this.§_-7o§.type == §_-kx§.§_-IK§)
               {
                  this.§_-kg§();
                  _loc1_[_loc2_] = this.§_-yD§();
                  this.§_-kg§();
                  if(this.§_-7o§.type == §_-kx§.§_-44§)
                  {
                     break;
                  }
                  if(this.§_-7o§.type == §_-kx§.§_-005§)
                  {
                     this.§_-kg§();
                     if(!this.§_-Nm§)
                     {
                        if(this.§_-7o§.type == §_-kx§.§_-44§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-8G§.parseError("Expecting } or , but found " + this.§_-7o§.value);
                  }
               }
               else
               {
                  this.§_-8G§.parseError("Expecting : but found " + this.§_-7o§.value);
               }
            }
            else
            {
               this.§_-8G§.parseError("Expecting string but found " + this.§_-7o§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-yD§() : Object
      {
         if(this.§_-7o§ == null)
         {
            this.§_-8G§.parseError("Unexpected end of input");
         }
         switch(this.§_-7o§.type)
         {
            case §_-kx§.§_-cV§:
               return this.§_-dc§();
            case §_-kx§.§_-n§:
               return this.§_-yn§();
            case §_-kx§.§_-d2§:
            case §_-kx§.§_-pJ§:
            case §_-kx§.TRUE:
            case §_-kx§.FALSE:
            case §_-kx§.§_-It§:
               return this.§_-7o§.value;
            case §_-kx§.§_-TH§:
               if(!this.§_-Nm§)
               {
                  return this.§_-7o§.value;
               }
               this.§_-8G§.parseError("Unexpected " + this.§_-7o§.value);
               break;
         }
         this.§_-8G§.parseError("Unexpected " + this.§_-7o§.value);
         return null;
      }
   }
}
