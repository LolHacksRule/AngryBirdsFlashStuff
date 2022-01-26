package §_-DH§
{
   public class §_-5-§
   {
       
      
      private var §_-zr§:Boolean;
      
      private var value;
      
      private var §_-bX§:§_-w5§;
      
      private var §_-Yk§:§_-hV§;
      
      public function §_-5-§(param1:String, param2:Boolean)
      {
         super();
         this.§_-zr§ = param2;
         this.§_-bX§ = new §_-w5§(param1,param2);
         this.§_-gW§();
         this.value = this.§_-zE§();
         if(param2 && this.§_-gW§() != null)
         {
            this.§_-bX§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-gW§() : §_-hV§
      {
         return this.§_-Yk§ = this.§_-bX§.§_-II§();
      }
      
      private function §_-9c§() : Array
      {
         var _loc1_:Array = new Array();
         this.§_-gW§();
         if(this.§_-Yk§.type == §_-tf§.§_-wZ§)
         {
            return _loc1_;
         }
         if(!this.§_-zr§ && this.§_-Yk§.type == §_-tf§.§_-VX§)
         {
            this.§_-gW§();
            if(this.§_-Yk§.type == §_-tf§.§_-wZ§)
            {
               return _loc1_;
            }
            this.§_-bX§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-Yk§.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-zE§());
            this.§_-gW§();
            if(this.§_-Yk§.type == §_-tf§.§_-wZ§)
            {
               break;
            }
            if(this.§_-Yk§.type == §_-tf§.§_-VX§)
            {
               this.§_-gW§();
               if(!this.§_-zr§)
               {
                  if(this.§_-Yk§.type == §_-tf§.§_-wZ§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§_-bX§.parseError("Expecting ] or , but found " + this.§_-Yk§.value);
            }
         }
         return _loc1_;
      }
      
      private function final() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-gW§();
         if(this.§_-Yk§.type == §_-tf§.§_-fq§)
         {
            return _loc1_;
         }
         if(!this.§_-zr§ && this.§_-Yk§.type == §_-tf§.§_-VX§)
         {
            this.§_-gW§();
            if(this.§_-Yk§.type == §_-tf§.§_-fq§)
            {
               return _loc1_;
            }
            this.§_-bX§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-Yk§.value);
         }
         while(true)
         {
            if(this.§_-Yk§.type == §_-tf§.§_-wx§)
            {
               _loc2_ = String(this.§_-Yk§.value);
               this.§_-gW§();
               if(this.§_-Yk§.type == §_-tf§.§_-ik§)
               {
                  this.§_-gW§();
                  _loc1_[_loc2_] = this.§_-zE§();
                  this.§_-gW§();
                  if(this.§_-Yk§.type == §_-tf§.§_-fq§)
                  {
                     break;
                  }
                  if(this.§_-Yk§.type == §_-tf§.§_-VX§)
                  {
                     this.§_-gW§();
                     if(!this.§_-zr§)
                     {
                        if(this.§_-Yk§.type == §_-tf§.§_-fq§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§_-bX§.parseError("Expecting } or , but found " + this.§_-Yk§.value);
                  }
               }
               else
               {
                  this.§_-bX§.parseError("Expecting : but found " + this.§_-Yk§.value);
               }
            }
            else
            {
               this.§_-bX§.parseError("Expecting string but found " + this.§_-Yk§.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-zE§() : Object
      {
         if(this.§_-Yk§ == null)
         {
            this.§_-bX§.parseError("Unexpected end of input");
         }
         switch(this.§_-Yk§.type)
         {
            case §_-tf§.§_-zc§:
               return this.final();
            case §_-tf§.§_-Ev§:
               return this.§_-9c§();
            case §_-tf§.§_-wx§:
            case §_-tf§.§_-gZ§:
            case §_-tf§.TRUE:
            case §_-tf§.FALSE:
            case §_-tf§.§_-mi§:
               return this.§_-Yk§.value;
            case §_-tf§.§_-N6§:
               if(!this.§_-zr§)
               {
                  return this.§_-Yk§.value;
               }
               this.§_-bX§.parseError("Unexpected " + this.§_-Yk§.value);
               break;
         }
         this.§_-bX§.parseError("Unexpected " + this.§_-Yk§.value);
         return null;
      }
   }
}
