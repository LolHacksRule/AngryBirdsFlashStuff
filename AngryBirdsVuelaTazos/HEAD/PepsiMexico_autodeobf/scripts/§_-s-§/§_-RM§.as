package §_-s-§
{
   public class §_-RM§
   {
       
      
      private var §_-8F§:Boolean;
      
      private var value;
      
      private var §_-Ob§:§_-d§;
      
      private var §_-Rh§:§_-LF§;
      
      public function §_-RM§(param1:String, param2:Boolean)
      {
         super();
         this.§_-8F§ = param2;
         this.§_-Ob§ = new §_-d§(param1,param2);
         this.§_-Q1§();
         this.value = this.§_-yu§();
         if(param2 && this.§_-Q1§() != null)
         {
            this.§_-Ob§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-Q1§() : §_-LF§
      {
         return this.§_-Rh§ = this.§_-Ob§.§_-qp§();
      }
      
      private function §_-sg§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-Q1§();
         if(this.§_-Rh§.type == §_-t9§.§_-hN§)
         {
            return _loc1_;
         }
         if(!this.§_-8F§ && this.§_-Rh§.type == §_-t9§.§false§)
         {
            this.§_-Q1§();
            if(this.§_-Rh§.type == §_-t9§.§_-hN§)
            {
               return _loc1_;
            }
            this.§_-Ob§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-Rh§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-yu§());
            this.§_-Q1§();
            if(this.§_-Rh§.type == §_-t9§.§_-hN§)
            {
               break;
            }
            if(this.§_-Rh§.type == §_-t9§.§false§)
            {
               this.§_-Q1§();
               if(!this.§_-8F§)
               {
                  if(this.§_-Rh§.type == §_-t9§.§_-hN§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-Ob§.parseError("Expecting ] or , but found " + this.§_-Rh§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-xy§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-Q1§();
         if(this.§_-Rh§.type == §_-t9§.§_-sk§)
         {
            return _loc1_;
         }
         if(!this.§_-8F§ && this.§_-Rh§.type == §_-t9§.§false§)
         {
            this.§_-Q1§();
            if(this.§_-Rh§.type == §_-t9§.§_-sk§)
            {
               return _loc1_;
            }
            this.§_-Ob§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-Rh§.value);
         }
         while(true)
         {
            if(this.§_-Rh§.type == §_-t9§.§_-OD§)
            {
               _loc2_ = String(this.§_-Rh§.value);
               this.§_-Q1§();
               if(this.§_-Rh§.type == §_-t9§.§_-x4§)
               {
                  this.§_-Q1§();
                  _loc1_[_loc2_] = this.§_-yu§();
                  this.§_-Q1§();
                  if(this.§_-Rh§.type == §_-t9§.§_-sk§)
                  {
                     break;
                  }
                  if(this.§_-Rh§.type == §_-t9§.§false§)
                  {
                     this.§_-Q1§();
                     if(!this.§_-8F§)
                     {
                        if(this.§_-Rh§.type == §_-t9§.§_-sk§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-Ob§.parseError("Expecting } or , but found " + this.§_-Rh§.value);
                  }
               }
               else
               {
                  this.§_-Ob§.parseError("Expecting : but found " + this.§_-Rh§.value);
               }
            }
            else
            {
               this.§_-Ob§.parseError("Expecting string but found " + this.§_-Rh§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-yu§() : Object
      {
         if(this.§_-Rh§ == null)
         {
            this.§_-Ob§.parseError("Unexpected end of input");
         }
         switch(this.§_-Rh§.type)
         {
            case §_-t9§.§_-GG§:
               return this.§_-xy§();
            case §_-t9§.§_-sl§:
               return this.§_-sg§();
            case §_-t9§.§_-OD§:
            case §_-t9§.§_-yi§:
            case §_-t9§.TRUE:
            case §_-t9§.FALSE:
            case §_-t9§.§_-As§:
               return this.§_-Rh§.value;
            case §_-t9§.§_-dd§:
               if(!this.§_-8F§)
               {
                  return this.§_-Rh§.value;
               }
               this.§_-Ob§.parseError("Unexpected " + this.§_-Rh§.value);
               break;
         }
         this.§_-Ob§.parseError("Unexpected " + this.§_-Rh§.value);
         return null;
      }
   }
}
