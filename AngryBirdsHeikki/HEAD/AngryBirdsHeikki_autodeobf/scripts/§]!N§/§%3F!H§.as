package §]!N§
{
   public class §?!H§
   {
       
      
      private var §1U§:Boolean;
      
      private var value;
      
      private var §default§:§8s§;
      
      private var §;!-§:§0f§;
      
      public function §?!H§(param1:String, param2:Boolean)
      {
         super();
         this.§1U§ = param2;
         this.§default§ = new §8s§(param1,param2);
         this.§-d§();
         this.value = this.§,! §();
         if(param2 && this.§-d§() != null)
         {
            this.§default§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §-d§() : §0f§
      {
         return this.§;!-§ = this.§default§.§"?§();
      }
      
      private function §`i§() : Array
      {
         var _loc1_:Array = new Array();
         this.§-d§();
         if(this.§;!-§.type == §9o§.§'p§)
         {
            return _loc1_;
         }
         if(!this.§1U§ && this.§;!-§.type == §9o§.§1h§)
         {
            this.§-d§();
            if(this.§;!-§.type == §9o§.§'p§)
            {
               return _loc1_;
            }
            this.§default§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§;!-§.value);
         }
         while(true)
         {
            _loc1_.push(this.§,! §());
            this.§-d§();
            if(this.§;!-§.type == §9o§.§'p§)
            {
               break;
            }
            if(this.§;!-§.type == §9o§.§1h§)
            {
               this.§-d§();
               if(!this.§1U§)
               {
                  if(this.§;!-§.type == §9o§.§'p§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§default§.parseError("Expecting ] or , but found " + this.§;!-§.value);
            }
         }
         return _loc1_;
      }
      
      private function §-e§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§-d§();
         if(this.§;!-§.type == §9o§.§<!E§)
         {
            return _loc1_;
         }
         if(!this.§1U§ && this.§;!-§.type == §9o§.§1h§)
         {
            this.§-d§();
            if(this.§;!-§.type == §9o§.§<!E§)
            {
               return _loc1_;
            }
            this.§default§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§;!-§.value);
         }
         while(true)
         {
            if(this.§;!-§.type == §9o§.§#n§)
            {
               _loc2_ = String(this.§;!-§.value);
               this.§-d§();
               if(this.§;!-§.type == §9o§.§>"§)
               {
                  this.§-d§();
                  _loc1_[_loc2_] = this.§,! §();
                  this.§-d§();
                  if(this.§;!-§.type == §9o§.§<!E§)
                  {
                     break;
                  }
                  if(this.§;!-§.type == §9o§.§1h§)
                  {
                     this.§-d§();
                     if(!this.§1U§)
                     {
                        if(this.§;!-§.type == §9o§.§<!E§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§default§.parseError("Expecting } or , but found " + this.§;!-§.value);
                  }
               }
               else
               {
                  this.§default§.parseError("Expecting : but found " + this.§;!-§.value);
               }
            }
            else
            {
               this.§default§.parseError("Expecting string but found " + this.§;!-§.value);
            }
         }
         return _loc1_;
      }
      
      private function §,! §() : Object
      {
         if(this.§;!-§ == null)
         {
            this.§default§.parseError("Unexpected end of input");
         }
         switch(this.§;!-§.type)
         {
            case §9o§.§6W§:
               return this.§-e§();
            case §9o§.§9X§:
               return this.§`i§();
            case §9o§.§#n§:
            case §9o§.§1V§:
            case §9o§.TRUE:
            case §9o§.FALSE:
            case §9o§.§?!#§:
               return this.§;!-§.value;
            case §9o§.§+!A§:
               if(!this.§1U§)
               {
                  return this.§;!-§.value;
               }
               this.§default§.parseError("Unexpected " + this.§;!-§.value);
               break;
         }
         this.§default§.parseError("Unexpected " + this.§;!-§.value);
         return null;
      }
   }
}
