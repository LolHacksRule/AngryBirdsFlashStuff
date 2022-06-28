package §_-py§
{
   public class §_-Qc§
   {
       
      
      private var §_-Wc§:Boolean;
      
      private var value;
      
      private var §_-zd§:§_-o6§;
      
      private var §_-oG§:§_-y6§;
      
      public function §_-Qc§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Wc§ = param2;
         this.§_-zd§ = new §_-o6§(param1,param2);
         this.§_-Vx§();
         this.value = this.§_-YM§();
         if(param2 && this.§_-Vx§() != null)
         {
            this.§_-zd§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-Vx§() : §_-y6§
      {
         return this.§_-oG§ = this.§_-zd§.§_-ev§();
      }
      
      private function §_-eh§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-Vx§();
         if(this.§_-oG§.type == §_-mi§.§_-VJ§)
         {
            return _loc1_;
         }
         if(!this.§_-Wc§ && this.§_-oG§.type == §_-mi§.§_-f3§)
         {
            this.§_-Vx§();
            if(this.§_-oG§.type == §_-mi§.§_-VJ§)
            {
               return _loc1_;
            }
            this.§_-zd§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-oG§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-YM§());
            this.§_-Vx§();
            if(this.§_-oG§.type == §_-mi§.§_-VJ§)
            {
               break;
            }
            if(this.§_-oG§.type == §_-mi§.§_-f3§)
            {
               this.§_-Vx§();
               if(!this.§_-Wc§)
               {
                  if(this.§_-oG§.type == §_-mi§.§_-VJ§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-zd§.parseError("Expecting ] or , but found " + this.§_-oG§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-0CT§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-Vx§();
         if(this.§_-oG§.type == §_-mi§.§_-XT§)
         {
            return _loc1_;
         }
         if(!this.§_-Wc§ && this.§_-oG§.type == §_-mi§.§_-f3§)
         {
            this.§_-Vx§();
            if(this.§_-oG§.type == §_-mi§.§_-XT§)
            {
               return _loc1_;
            }
            this.§_-zd§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-oG§.value);
         }
         while(true)
         {
            if(this.§_-oG§.type == §_-mi§.§_-0DV§)
            {
               _loc2_ = String(this.§_-oG§.value);
               this.§_-Vx§();
               if(this.§_-oG§.type == §_-mi§.§_-04x§)
               {
                  this.§_-Vx§();
                  _loc1_[_loc2_] = this.§_-YM§();
                  this.§_-Vx§();
                  if(this.§_-oG§.type == §_-mi§.§_-XT§)
                  {
                     break;
                  }
                  if(this.§_-oG§.type == §_-mi§.§_-f3§)
                  {
                     this.§_-Vx§();
                     if(!this.§_-Wc§)
                     {
                        if(this.§_-oG§.type == §_-mi§.§_-XT§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-zd§.parseError("Expecting } or , but found " + this.§_-oG§.value);
                  }
               }
               else
               {
                  this.§_-zd§.parseError("Expecting : but found " + this.§_-oG§.value);
               }
            }
            else
            {
               this.§_-zd§.parseError("Expecting string but found " + this.§_-oG§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-YM§() : Object
      {
         if(this.§_-oG§ == null)
         {
            this.§_-zd§.parseError("Unexpected end of input");
         }
         switch(this.§_-oG§.type)
         {
            case §_-mi§.§_-Qb§:
               return this.§_-0CT§();
            case §_-mi§.§_-01g§:
               return this.§_-eh§();
            case §_-mi§.§_-0DV§:
            case §_-mi§.§_-5t§:
            case §_-mi§.TRUE:
            case §_-mi§.FALSE:
            case §_-mi§.NULL:
               return this.§_-oG§.value;
            case §_-mi§.§_-TZ§:
               if(!this.§_-Wc§)
               {
                  return this.§_-oG§.value;
               }
               this.§_-zd§.parseError("Unexpected " + this.§_-oG§.value);
               break;
         }
         this.§_-zd§.parseError("Unexpected " + this.§_-oG§.value);
         return null;
      }
   }
}
