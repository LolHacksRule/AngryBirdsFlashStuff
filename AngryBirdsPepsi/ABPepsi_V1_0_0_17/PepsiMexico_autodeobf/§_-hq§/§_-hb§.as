package §_-hq§
{
   public class §_-hb§
   {
       
      
      private var §_-Kg§:Boolean;
      
      private var value;
      
      private var §_-MW§:§_-w1§;
      
      private var §_-5F§:§_-XG§;
      
      public function §_-hb§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Kg§ = param2;
         this.§_-MW§ = new §_-w1§(param1,param2);
         this.§_-ho§();
         this.value = this.§_-fN§();
         if(param2 && this.§_-ho§() != null)
         {
            this.§_-MW§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-ho§() : §_-XG§
      {
         return this.§_-5F§ = this.§_-MW§.§_-sx§();
      }
      
      private function §_-5z§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-ho§();
         if(this.§_-5F§.type == §_-KI§.§_-a0§)
         {
            return _loc1_;
         }
         if(!this.§_-Kg§ && this.§_-5F§.type == §_-KI§.§_-nG§)
         {
            this.§_-ho§();
            if(this.§_-5F§.type == §_-KI§.§_-a0§)
            {
               return _loc1_;
            }
            this.§_-MW§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-5F§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-fN§());
            this.§_-ho§();
            if(this.§_-5F§.type == §_-KI§.§_-a0§)
            {
               break;
            }
            if(this.§_-5F§.type == §_-KI§.§_-nG§)
            {
               this.§_-ho§();
               if(!this.§_-Kg§)
               {
                  if(this.§_-5F§.type == §_-KI§.§_-a0§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-MW§.parseError("Expecting ] or , but found " + this.§_-5F§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-vf§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-ho§();
         if(this.§_-5F§.type == §_-KI§.§_-yh§)
         {
            return _loc1_;
         }
         if(!this.§_-Kg§ && this.§_-5F§.type == §_-KI§.§_-nG§)
         {
            this.§_-ho§();
            if(this.§_-5F§.type == §_-KI§.§_-yh§)
            {
               return _loc1_;
            }
            this.§_-MW§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-5F§.value);
         }
         while(true)
         {
            if(this.§_-5F§.type == §_-KI§.§_-J5§)
            {
               _loc2_ = String(this.§_-5F§.value);
               this.§_-ho§();
               if(this.§_-5F§.type == §_-KI§.§_-cs§)
               {
                  this.§_-ho§();
                  _loc1_[_loc2_] = this.§_-fN§();
                  this.§_-ho§();
                  if(this.§_-5F§.type == §_-KI§.§_-yh§)
                  {
                     break;
                  }
                  if(this.§_-5F§.type == §_-KI§.§_-nG§)
                  {
                     this.§_-ho§();
                     if(!this.§_-Kg§)
                     {
                        if(this.§_-5F§.type == §_-KI§.§_-yh§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-MW§.parseError("Expecting } or , but found " + this.§_-5F§.value);
                  }
               }
               else
               {
                  this.§_-MW§.parseError("Expecting : but found " + this.§_-5F§.value);
               }
            }
            else
            {
               this.§_-MW§.parseError("Expecting string but found " + this.§_-5F§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-fN§() : Object
      {
         if(this.§_-5F§ == null)
         {
            this.§_-MW§.parseError("Unexpected end of input");
         }
         switch(this.§_-5F§.type)
         {
            case §_-KI§.§_-WA§:
               return this.§_-vf§();
            case §_-KI§.§_-zY§:
               return this.§_-5z§();
            case §_-KI§.§_-J5§:
            case §_-KI§.§_-pd§:
            case §_-KI§.TRUE:
            case §_-KI§.FALSE:
            case §_-KI§.§_-to§:
               return this.§_-5F§.value;
            case §_-KI§.§_-8n§:
               if(!this.§_-Kg§)
               {
                  return this.§_-5F§.value;
               }
               this.§_-MW§.parseError("Unexpected " + this.§_-5F§.value);
               break;
         }
         this.§_-MW§.parseError("Unexpected " + this.§_-5F§.value);
         return null;
      }
   }
}
