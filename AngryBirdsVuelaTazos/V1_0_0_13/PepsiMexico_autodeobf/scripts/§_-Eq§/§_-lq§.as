package §_-Eq§
{
   public class §_-lq§
   {
       
      
      private var §_-Eg§:Boolean;
      
      private var value;
      
      private var §_-zQ§:§_-3n§;
      
      private var §_-h1§:§_-Cb§;
      
      public function §_-lq§(param1:String, param2:Boolean)
      {
         super();
         this.§_-Eg§ = param2;
         this.§_-zQ§ = new §_-3n§(param1,param2);
         this.§_-5I§();
         this.value = this.§_-bz§();
         if(param2 && this.§_-5I§() != null)
         {
            this.§_-zQ§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-5I§() : §_-Cb§
      {
         return this.§_-h1§ = this.§_-zQ§.§_-ws§();
      }
      
      private function §_-kk§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-5I§();
         if(this.§_-h1§.type == §_-cN§.§_-6d§)
         {
            return _loc1_;
         }
         if(!this.§_-Eg§ && this.§_-h1§.type == §_-cN§.§_-k-§)
         {
            this.§_-5I§();
            if(this.§_-h1§.type == §_-cN§.§_-6d§)
            {
               return _loc1_;
            }
            this.§_-zQ§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-h1§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-bz§());
            this.§_-5I§();
            if(this.§_-h1§.type == §_-cN§.§_-6d§)
            {
               break;
            }
            if(this.§_-h1§.type == §_-cN§.§_-k-§)
            {
               this.§_-5I§();
               if(!this.§_-Eg§)
               {
                  if(this.§_-h1§.type == §_-cN§.§_-6d§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-zQ§.parseError("Expecting ] or , but found " + this.§_-h1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-HD§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-5I§();
         if(this.§_-h1§.type == §_-cN§.§_-mS§)
         {
            return _loc1_;
         }
         if(!this.§_-Eg§ && this.§_-h1§.type == §_-cN§.§_-k-§)
         {
            this.§_-5I§();
            if(this.§_-h1§.type == §_-cN§.§_-mS§)
            {
               return _loc1_;
            }
            this.§_-zQ§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-h1§.value);
         }
         while(true)
         {
            if(this.§_-h1§.type == §_-cN§.§_-ca§)
            {
               _loc2_ = String(this.§_-h1§.value);
               this.§_-5I§();
               if(this.§_-h1§.type == §_-cN§.§_-w5§)
               {
                  this.§_-5I§();
                  _loc1_[_loc2_] = this.§_-bz§();
                  this.§_-5I§();
                  if(this.§_-h1§.type == §_-cN§.§_-mS§)
                  {
                     break;
                  }
                  if(this.§_-h1§.type == §_-cN§.§_-k-§)
                  {
                     this.§_-5I§();
                     if(!this.§_-Eg§)
                     {
                        if(this.§_-h1§.type == §_-cN§.§_-mS§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-zQ§.parseError("Expecting } or , but found " + this.§_-h1§.value);
                  }
               }
               else
               {
                  this.§_-zQ§.parseError("Expecting : but found " + this.§_-h1§.value);
               }
            }
            else
            {
               this.§_-zQ§.parseError("Expecting string but found " + this.§_-h1§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-bz§() : Object
      {
         if(this.§_-h1§ == null)
         {
            this.§_-zQ§.parseError("Unexpected end of input");
         }
         switch(this.§_-h1§.type)
         {
            case §_-cN§.§_-gW§:
               return this.§_-HD§();
            case §_-cN§.§_-sm§:
               return this.§_-kk§();
            case §_-cN§.§_-ca§:
            case §_-cN§.§_-bN§:
            case §_-cN§.TRUE:
            case §_-cN§.FALSE:
            case §_-cN§.§_-BU§:
               return this.§_-h1§.value;
            case §_-cN§.§_-mJ§:
               if(!this.§_-Eg§)
               {
                  return this.§_-h1§.value;
               }
               this.§_-zQ§.parseError("Unexpected " + this.§_-h1§.value);
               break;
         }
         this.§_-zQ§.parseError("Unexpected " + this.§_-h1§.value);
         return null;
      }
   }
}
